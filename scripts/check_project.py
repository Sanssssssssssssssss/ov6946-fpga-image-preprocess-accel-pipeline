"""Check versioned Vivado inputs without installing Vivado. Not an HDL compiler."""

from pathlib import Path
import re
import sys
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
PROJECT = ROOT / "vivado/CMOS_OV6946_HDMI.xpr"


def resolve(value):
    return Path(value.replace("$PSRCDIR", str(PROJECT.with_suffix(".srcs")))
                .replace("$PPRDIR", str(PROJECT.parent))).resolve()


def main():
    project = ET.parse(PROJECT).getroot()
    errors = []
    checked = 0
    modules = {}
    for fileset in project.findall("./FileSets/FileSet"):
        includes = [resolve(option.attrib["Val"]) for option in
                    fileset.findall("./Config/Option") if option.get("Name") == "VerilogDir"]
        for entry in fileset.findall("File"):
            path = resolve(entry.attrib["Path"])
            checked += 1
            if not path.is_relative_to(ROOT):
                errors.append(f"External source: {path}")
                continue
            if not path.is_file():
                errors.append(f"Missing input: {path.relative_to(ROOT)}")
                continue
            attrs = entry.findall("./FileInfo/Attr")
            if any(a.get("Name") == "AutoDisabled" and a.get("Val") == "1" for a in attrs):
                continue
            if fileset.get("Name") != "sources_1" or path.suffix not in {".v", ".sv"}:
                continue
            source = path.read_text(encoding="utf-8")
            source = re.sub(r"/\*.*?\*/|//[^\n]*", "", source, flags=re.S)
            for name in re.findall(r"\bmodule\s+(\w+)", source):
                if name in modules:
                    errors.append(f"Duplicate module {name}: {modules[name]} and {path}")
                modules[name] = path
            for include in re.findall(r'`include\s+"([^"]+)"', source):
                directories = [path.parent, PROJECT.parent, *includes]
                if not any((directory / include).is_file() for directory in directories):
                    errors.append(f"Missing include {include}: {path.relative_to(ROOT)}")
    if modules.get("FPGA_Test") != ROOT / "rtl/FPGA_Test.v":
        errors.append("FPGA_Test must resolve to rtl/FPGA_Test.v")
    for document in [ROOT / "README.md", *ROOT.glob("docs/*.md")]:
        for target in re.findall(r"\]\(([^)]+)\)", document.read_text(encoding="utf-8")):
            if "://" not in target and not target.startswith("#"):
                if not (document.parent / target.split("#")[0]).exists():
                    errors.append(f"Broken link in {document.name}: {target}")
    for error in errors:
        print(f"ERROR: {error}", file=sys.stderr)
    print(f"{'FAIL' if errors else 'PASS'}: {checked} project inputs; {len(modules)} active module definitions")
    return bool(errors)


if __name__ == "__main__":
    sys.exit(main())

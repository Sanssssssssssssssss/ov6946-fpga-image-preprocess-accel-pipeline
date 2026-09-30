# 历史与实验源码

这些文件用于比对和追溯。当前工程入口是根目录 `rtl/FPGA_Test.v`。

- `rtl/`、`src/`：整理前位于根目录的旧版本，包含未闭合的 `pixel_filter_to_fifo` 分支。
- `experiments/`：原 Vivado `sources_1/new/` 中未接入活动顶层的实验模块。
- `imported/`：与活动显示参数不同的导入副本。

不要递归加入活动文件集，否则会引入同名模块。`Sobel_Sharpen_Top.v` 在 XPR 中保留为原有禁用项，其处理模块未随原快照提供。

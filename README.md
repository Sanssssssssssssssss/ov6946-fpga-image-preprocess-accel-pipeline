# fpga-image-preprocess-accel-pipeline

面向 FPGA 图像预处理加速链路的 Vivado 工程快照。当前仓库围绕 `OV6946` 传感器输入、DDR3 帧缓存、图像预处理、HDMI 显示输出展开，并保留了独立的 UDP/GMII 发送接收模块用于后续链路扩展。

## 建议仓库名

建议将仓库命名为 `fpga-image-preprocess-accel-pipeline`。

## 主处理链路

当前主链路可以从顶层 `rtl/FPGA_Test.v` 读出：

1. `src/cmos_i2c/I2C_OV426_400400_Config.v` 与 `src/cmos_i2c/i2c_timing_ctrl_reg16_dat8_wronly.v` 完成 OV6946 配置时序。
2. `src/cmos_i2c/CMOS_Capture_RAW_Gray.v` 采集 DVP RAW/Gray 数据流。
3. `src/axi/axi4_ctrl.v` 通过 AXI 读写 DDR3，配合 `ipc/DDR3_0` 提供帧缓存。
4. `src/isp/VIP_RAW8_RGB888.v` 将 RAW 数据恢复为 RGB888。
5. `src/isp/FrameBoundCrop.v` 对有效图像区域做边界裁剪。
6. `src/Video_Image_Processor/bilateral_filter_top.v` 分别对 R/G/B 三通道做双边滤波。
7. `src/Video_Image_Processor/VIP_Sharpen/Laplacian_sharpen_top.v` 分别对 R/G/B 三通道做拉普拉斯锐化。
8. `src/rgb2dvi/rgb2dvi.v` 与 `src/rgb2dvi/tmds_channel.v` 输出 HDMI TMDS 信号。

## 工程入口

- Vivado 工程文件：`vivado/CMOS_OV6946_HDMI.xpr`
- 顶层模块：`FPGA_Test`
- 目标器件：`xc7a100tfgg676-2`
- 主要约束文件：`rtl/FPGA_Test.xdc`

## 目录说明

- `src/`：手写 RTL，包含采集、ISP、DDR AXI 控制、显示与基础以太网模块。
- `rtl/`：顶层封装、约束，以及另一套较完整的 UDP/RGMII 协议栈实现。
- `ipc/`：DDR3、PLL、FIFO 等 IP 配置与导出结果。
- `vivado/CMOS_OV6946_HDMI.srcs/`：Vivado 工程源目录与项目内导入副本，保留用于直接打开工程。

## 以太网链路现状

仓库中同时存在两类以太网相关实现：

- `src/eth/`：与当前图像链路更接近的 UDP/GMII 发送接收模块。
- `rtl/UDP/`：独立的 ARP/UDP/RGMII 协议栈。

当前快照里，以太网图像导出部分仍处于未完全收口的状态。`rtl/FPGA_Test.v` 中保留了 `pixel_filter_to_fifo` 等下游导出接口调用，但对应模块未在当前仓库中找到定义；同时顶层中 `lcd_*` / `w_lcd_*` 一组中间信号也没有在同文件内完整闭合。因此本仓库更适合作为图像预处理链路整理版与二次开发基线，而不是直接宣称为“开箱即用”的最终发布版本。

## 打开与构建

1. 使用 Vivado 打开 `vivado/CMOS_OV6946_HDMI.xpr`。
2. 以 `FPGA_Test` 作为顶层模块。
3. 如需重新生成已清理掉的运行缓存，直接执行综合/实现即可，Vivado 会自动重建 `.runs`、`.cache`、`.hw`、`.Xil` 等目录。

## 清理说明

本次整理仅做仓库层面的清洁化处理：

- 去除手写源码和导入副本中的作者头注释、旧机器路径和导入时间信息。
- 删除 `.bak`、Vivado 运行缓存、日志、临时文件。
- 不主动改动 RTL 行为与接口语义。

## 关键阅读文件

- `rtl/FPGA_Test.v`
- `src/cmos_i2c/CMOS_Capture_RAW_Gray.v`
- `src/axi/axi4_ctrl.v`
- `src/isp/VIP_RAW8_RGB888.v`
- `src/isp/FrameBoundCrop.v`
- `src/Video_Image_Processor/bilateral_filter_proc.v`
- `src/Video_Image_Processor/VIP_Sharpen/laplacian_sharpen_proc.v`
- `src/rgb2dvi/rgb2dvi.v`
- `src/eth/UDP_TOP.v`
- `rtl/UDP/eth_udp_top.v`

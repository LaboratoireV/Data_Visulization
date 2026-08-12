# The V Lab 数据可视化学习网站

[English](README.md) | **简体中文**

一个面向 R 学习者和数据分析者的双语、自主学习型数据可视化网站。ggplot2 课程通过图形语法构建适合出版的静态图形；Plotly 课程则介绍原生 trace、精确悬停、协调视图、动画、地图与可分享的互动 HTML。

## 在线网站

访问 [The V Lab 数据可视化学习网站](https://laboratoirev.github.io/Data_Visulization/)，或直接打开课程：

- [ggplot2 教程 — English](https://laboratoirev.github.io/Data_Visulization/ggplot2_tutorial_en.html)
- [ggplot2 教程 — 中文](https://laboratoirev.github.io/Data_Visulization/ggplot2_tutorial_zh.html)
- [Plotly 教程 — English](https://laboratoirev.github.io/Data_Visulization/plotly_tutorial_en.html)
- [Plotly 教程 — 中文](https://laboratoirev.github.io/Data_Visulization/plotly_tutorial_zh.html)

## 课程内容

### ggplot2 for R

- 每种语言均包含 15 个结构化章节
- 20 幅实际生成的图表，并保留可见、可运行的 R 代码
- 覆盖映射、几何对象、统计变换、位置、标度、分面、坐标、注释、主题、绘图函数与导出
- 使用现代线宽、计算变量和编程式映射语法

### Plotly for R

- 每种语言均包含 18 个结构化章节
- 23 个经过完整执行的互动图表
- 覆盖 `plot_ly()`、trace 叠加、时间序列控件、柱状图、分布图、热图、三维表面与 `ggplotly()`
- 系统介绍精确悬停、layout 与 config、子图、Crosstalk 联动、动画、离线地图、Shiny 事件、发布与 WebGL 性能

两门课程的中英文版本均保持相同示例与学习顺序。实际执行的示例仅使用 R 或 ggplot2 自带数据；Plotly 地图通过 `plotlyGeoAssets` 使用本地资源，无需 API 密钥。

## 仓库文件

- `index.html`：网站首页、学习路线、主题指南和四个课程入口
- `ggplot2_tutorial_en.html`：完整英文 ggplot2 教程
- `ggplot2_tutorial_zh.html`：完整中文 ggplot2 教程
- `plotly_tutorial_en.html`：完整英文 Plotly 教程
- `plotly_tutorial_zh.html`：完整中文 Plotly 教程
- `styles.css`：教程页面共用的品牌、导航、互动组件和响应式样式
- `includes/vlab-brand.html`：教程页面共用的 The V Lab 首页入口
- `includes/vlab-footer.html`：ggplot2 教程共用页脚
- `includes/vlab-footer-plotly.html`：Plotly 教程共用页脚
- `og.png`：网站社交分享预览图
- `.nojekyll`：让 GitHub Pages 原样发布静态文件
- `render.R`：自动发现本地 R Markdown 源文件并生成同名 HTML

## 本地重新渲染

R Markdown 源文件仅保存在本地工作副本中，并通过 `.gitignore` 排除，不发布到 GitHub。生成的自包含 HTML 会保留教学代码、运行结果和嵌入图表。

首次使用时安装依赖：

```r
install.packages(c(
  "rmarkdown", "knitr", "ggplot2",
  "plotly", "htmlwidgets", "crosstalk",
  "plotlyGeoAssets"
))
```

然后在项目目录中渲染全部本地 Rmd：

```bash
Rscript render.R
```

若项目中存在 `.Rlib`，`render.R` 会自动使用该本地包库；在 macOS 上也会自动查找 RStudio 自带的 Pandoc。

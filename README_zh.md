# The V Lab ggplot2 学习网站

[English](README.md) | **简体中文**

一个面向 R 学习者和数据分析者的双语、自主学习型 ggplot2 网站。课程从图形语法与审美映射出发，系统介绍常用几何对象、统计变换、分面、标度、坐标、主题、注释、绘图函数封装与高质量导出。

## 在线网站

访问 [The V Lab ggplot2 Learning Studio](https://laboratoirev.github.io/Data_Visulization/)，选择英文版或中文版教程。

- [英文教程](https://laboratoirev.github.io/Data_Visulization/ggplot2_tutorial_en.html)
- [中文教程](https://laboratoirev.github.io/Data_Visulization/ggplot2_tutorial_zh.html)

## 教程内容

- 每种语言均包含 15 个结构化章节
- 20 幅实际生成的图表，并保留可见、可运行的 R 代码
- 仅使用 R 与 ggplot2 内置数据，无需下载外部数据
- 采用现代 ggplot2 图层、计算变量和编程式映射语法
- 包含选图方法、常见错误、可复用主题与图表导出指南
- 中英文示例、图表和学习顺序保持一致

## 仓库文件

- `index.html`：网站首页、学习路线、主题指南和双语入口
- `ggplot2_tutorial_en.html`：完整英文教程
- `ggplot2_tutorial_zh.html`：完整中文教程
- `styles.css`：教程页面共用的品牌、导航和响应式样式
- `includes/vlab-brand.html`：教程页面共用的 The V Lab 首页入口
- `og.png`：网站社交分享预览图
- `.nojekyll`：让 GitHub Pages 原样发布静态文件
- `render.R`：自动发现本地 R Markdown 源文件并生成同名 HTML

## 本地重新渲染

R Markdown 源文件仅保存在本地工作副本中，并通过 `.gitignore` 排除，不发布到 GitHub。生成的 HTML 会保留完整教学代码和图表。

在包含本地 Rmd 文件的工作副本中运行：

```bash
Rscript render.R
```

如果缺少依赖，请先安装：

```r
install.packages(c("rmarkdown", "knitr", "ggplot2"))
```

教程使用 R 与 ggplot2 自带数据，不依赖任何外部数据文件。

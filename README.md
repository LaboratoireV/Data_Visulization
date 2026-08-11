# The V Lab ggplot2 Learning Studio

一个面向 R 学习者和数据分析者的双语 ggplot2 学习网站。课程从图形语法与审美映射出发，系统介绍常用几何对象、统计变换、分面、标度、坐标、主题、注释、函数封装与高质量导出。

## 在线网站

访问 [The V Lab ggplot2 Learning Studio](https://laboratoirev.github.io/Data_Visulization/) 选择英文版或中文版教程。

## 文件

- `index.html`：网站首页、学习路线和双语教程入口。
- `ggplot2_tutorial_en.html`：英文实践教程。
- `ggplot2_tutorial_zh.html`：中文实践教程。
- `styles.css`：教程页面共用的品牌、导航和响应式样式。
- `includes/vlab-brand.html`：教程页面共用的 The V Lab 首页入口。
- `og.png`：网站社交分享预览图。
- `.nojekyll`：让 GitHub Pages 原样发布静态文件。
- `render.R`：自动发现本地 Rmd 并生成同名 HTML。

## 重新渲染

`.Rmd` 源文件仅保存在本地工作副本中，并通过 `.gitignore` 排除，不发布到 GitHub。生成的 HTML 会保留完整的教学代码和图表。

在包含本地 Rmd 源文件的工作副本中运行：

```bash
Rscript render.R
```

如果缺少依赖，可先安装：

```r
install.packages(c("rmarkdown", "knitr", "ggplot2"))
```

教程使用 R 与 ggplot2 自带数据，不依赖外部数据文件。

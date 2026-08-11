# The V Lab ggplot2 Learning Studio

**English** | [简体中文](README_zh.md)

A bilingual, self-paced ggplot2 learning website for R learners and data analysts. The tutorials start with the grammar of graphics and aesthetic mappings, then cover common geoms, statistical transformations, facets, scales, coordinates, themes, annotations, reusable plotting functions, and high-quality export.

## Live website

Visit [The V Lab ggplot2 Learning Studio](https://laboratoirev.github.io/Data_Visulization/) and choose the English or Chinese edition.

- [English tutorial](https://laboratoirev.github.io/Data_Visulization/ggplot2_tutorial_en.html)
- [中文教程](https://laboratoirev.github.io/Data_Visulization/ggplot2_tutorial_zh.html)

## What the tutorials include

- 15 structured sections in each language
- 20 rendered charts with visible, runnable R code
- built-in R and ggplot2 datasets—no external data download required
- modern ggplot2 syntax for layers, computed variables, and programmatic mappings
- practical guidance on chart selection, common mistakes, reusable themes, and export
- matching English and Chinese examples, figures, and learning sequence

## Repository contents

- `index.html`: website homepage, learning path, topic guide, and bilingual entry points
- `ggplot2_tutorial_en.html`: complete English tutorial
- `ggplot2_tutorial_zh.html`: complete Chinese tutorial
- `styles.css`: shared tutorial branding, navigation, and responsive styles
- `includes/vlab-brand.html`: shared The V Lab homepage link for tutorial pages
- `og.png`: social sharing preview image
- `.nojekyll`: instructs GitHub Pages to publish the static files unchanged
- `render.R`: discovers local R Markdown sources and renders matching HTML files

## Render locally

R Markdown source files are kept only in the local working copy and are excluded from GitHub through `.gitignore`. The generated HTML retains all teaching code and charts.

From a working copy that contains the local Rmd files, run:

```bash
Rscript render.R
```

If dependencies are missing, install them first:

```r
install.packages(c("rmarkdown", "knitr", "ggplot2"))
```

The tutorials use datasets bundled with R and ggplot2 and require no external data files.

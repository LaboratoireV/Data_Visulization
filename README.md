# The V Lab Data Visualization Learning Studio

**English** | [简体中文](README_zh.md)

A bilingual, self-paced data visualization website for R learners and data analysts. The ggplot2 course develops publication-ready static graphics through the grammar of graphics; the Plotly course builds browser-based interaction with native traces, deliberate hover, coordinated views, animation, maps, and shareable HTML.

## Live website

Visit [The V Lab Data Visualization Learning Studio](https://laboratoirev.github.io/Data_Visulization/) or open a course directly:

- [ggplot2 tutorial — English](https://laboratoirev.github.io/Data_Visulization/ggplot2_tutorial_en.html)
- [ggplot2 教程 — 中文](https://laboratoirev.github.io/Data_Visulization/ggplot2_tutorial_zh.html)
- [Plotly tutorial — English](https://laboratoirev.github.io/Data_Visulization/plotly_tutorial_en.html)
- [Plotly 教程 — 中文](https://laboratoirev.github.io/Data_Visulization/plotly_tutorial_zh.html)

## Courses

### ggplot2 for R

- 15 structured sections in each language
- 20 rendered charts with visible, runnable R code
- mappings, geoms, statistical transformations, positions, scales, facets, coordinates, annotations, themes, reusable functions, and export
- modern syntax for line widths, computed variables, and programmatic mappings

### Plotly for R

- 18 structured sections in each language
- 23 fully executed interactive figures
- `plot_ly()`, trace layering, time-series controls, bars, distributions, heatmaps, 3D surfaces, and `ggplotly()`
- precise hover, layout and config, subplots, Crosstalk linking, animation, offline maps, Shiny events, publishing, and WebGL performance

Both courses use matching English and Chinese examples and learning sequences. Executed examples rely on datasets bundled with R or ggplot2; the Plotly map uses local assets from `plotlyGeoAssets` and needs no API key.

## Repository contents

- `index.html`: website homepage, learning path, topic guide, and four course entry points
- `ggplot2_tutorial_en.html`: complete English ggplot2 tutorial
- `ggplot2_tutorial_zh.html`: complete Chinese ggplot2 tutorial
- `plotly_tutorial_en.html`: complete English Plotly tutorial
- `plotly_tutorial_zh.html`: complete Chinese Plotly tutorial
- `styles.css`: shared tutorial branding, navigation, widgets, and responsive styles
- `includes/vlab-brand.html`: shared The V Lab homepage link for tutorial pages
- `includes/vlab-footer.html`: shared ggplot2 tutorial footer
- `includes/vlab-footer-plotly.html`: shared Plotly tutorial footer
- `og.png`: social sharing preview image
- `.nojekyll`: instructs GitHub Pages to publish the static files unchanged
- `render.R`: discovers local R Markdown sources and renders matching HTML files

## Render locally

R Markdown source files are kept only in the local working copy and are excluded from GitHub through `.gitignore`. The generated self-contained HTML files retain the teaching code, output, and embedded figures.

Install dependencies once:

```r
install.packages(c(
  "rmarkdown", "knitr", "ggplot2",
  "plotly", "htmlwidgets", "crosstalk",
  "plotlyGeoAssets"
))
```

Then render every local Rmd file from the project directory:

```bash
Rscript render.R
```

`render.R` also detects a project-local `.Rlib` directory when one is present and locates the Pandoc bundled with RStudio on macOS.

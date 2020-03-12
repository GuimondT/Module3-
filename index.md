---
title: "Module 3 HTML  Document"
author: "Dr. Timothy Guimond"
date: "12/03/2020"
output: 
  html_document: 
    keep_md: true
    fig_height: 6
    fig_width: 6
    toc: yes
    toc_float: true
    code_folding: hide
---


# Module 3 Data
## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:  

### Plot of the cars dataset

```r
plot(cars)
```

![](index_files/figure-html/cars-1.png)<!-- -->

## Including Plots

You can also embed plots, for example:

### Plot of the pressures dataset
![](index_files/figure-html/pressure-1.png)<!-- -->

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

## A short list

* apples
* bananas
* canteloupes

## An equation

$$ Y=\frac{\infty}{\pi+1} $$

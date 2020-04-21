require(tidyverse)

rmarkdown::render("steakArticle_parms.Rmd",
                  params = list(region="Mountain"))


render_report <-function(regionvar,na.rm=FALSE){
  if(na.rm) {
    regionvarToUse=regionvar[[!is.na(regionvar)]]
  } else {
    regionvarToUse=regionvar
  }
  template <-"steakArticle_parms.Rmd"
  outfile <-sprintf("steakArticle_%s.html",regionvarToUse)
  parameters <-list(region = regionvarToUse)
  rmarkdown::render(template,
                    output_file=outfile,
                    params=parameters)
  invisible(TRUE)
}

render_report("Pacific")


# R code to use the custom function with purrr

params_list1 <- list(list("East North Central",
                         "East South Central", "Middle Atlantic",
                         "Mountain", "New England", "Pacific",
                         "South Atlantic", "West North Central",
                         "West South Central"))

# Tim and Kristen's version:

params_list <- list(as.list(unique(steak_survey$region)))

params_list2 <- list(as.list(unique(steak_survey$region)[!is.na(unique(steak_survey$region))]))

purrr::pmap(params_list,render_report,na.rm=TRUE)
pmap(list(x, y, z), sum, na.rm = TRUE)


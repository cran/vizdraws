## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----prior, eval=FALSE--------------------------------------------------------
#  library(vizdraws)
#  vizdraws(prior = 'normal(0.05, 0.2)')
#  

## ----posterior, eval=FALSE----------------------------------------------------
#  vizdraws(prior = 'normal(0.05, 0.2)',
#                 posterior = rnorm(n = 10000, mean = 0.3, sd = 0.5))

## ----mme, eval=FALSE----------------------------------------------------------
#  vizdraws(prior = rnorm(n = 10000, mean = 0, sd = 1),
#           posterior = rnorm(n = 10000, mean = 0.3, sd = 0.5),
#           xlim = c(-3,3),
#           MME = 0.1)
#  


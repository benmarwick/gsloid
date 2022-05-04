#' Global Sea Level Reconstruction using Stacked Records from 0-800 ka.
#'
#' This is a Late Pleistocene sea level stack based on marine sediment core data (foraminiferal carbonate d18O) as estimated by several different techniques in seven different studies. Obtained from https://www.ncdc.noaa.gov/paleo-search/study/19982 on 28 June 2017. A data frame with 799 rows and 9 variables.
#'
#' \itemize{
#'   \item{age_calkaBP}{Age, calendar ka BP}
#'   \item{SeaLev_shortPC1}{Sea Level, meters above present day, climate reconstructions, Scaled first principal component of seven sea level reconstructions (0-430 ka),N}
#'   \item{SeaLev_shortPC1_err_sig}{Sea Level, standard deviation from bootstrap, meters, climate reconstructions, Scaled first principal component of seven sea level reconstructions (0-430 ka),N}
#'   \item{SeaLev_shortPC1_err_lo}{Sea Level, 95\% confidence interval, lower bound, meters, climate reconstructions, Scaled first principal component of seven sea level reconstructions (0-430 ka),N}
#'   \item{SeaLev_shortPC1_err_up}{Sea Level, 95\% confidence interval, upper bound, meters, climate reconstructions, Scaled first principal component of seven sea level reconstructions (0-430 ka),N}
#'   \item{SeaLev_longPC1}{Sea Level, meters above present day, climate reconstructions, Scaled first principal component of five sea level reconstructions (0-798 ka),N}
#'   \item{SeaLev_longPC1_err_sig}{Sea Level, standard deviation from bootstrap,meters, climate reconstructions, Scaled first principal component of five sea level reconstructions (0-798 ka),N}
#'   \item{SeaLev_longPC1_err_lo}{Sea Level, 95\% confidence interval, lower bound,meters, climate reconstructions,Scaled first principal component of five sea level reconstructions (0-798 ka),N}
#'   \item{SeaLev_longPC1_err_up}{Sea Level, 95\% confidence interval, upper bound,meters, climate reconstructions, Scaled first principal component of five sea level reconstructions (0-798 ka),N}

#' }
#'

#' @source \url{https://www.ncei.noaa.gov/access/paleo-search/study/19982}
#' @examples
#' names(spratt2016)
#' head(spratt2016)
"spratt2016"
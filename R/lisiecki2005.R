#' LR04 Global Pliocene-Pleistocene Benthic d18O Stack (5.3-Myr).
#'
#' The LR04 stack spans 5.3 Myr and is an average of 57 globally distributed benthic d18O records (which measure global ice volume and deep ocean temperature) collected from the scientific literature. Obtained from ftp://ftp.ncdc.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2005/lisiecki2005.txt on 28 June 2017. A data frame with 2115 rows and 3 variables.
#'
#' \itemize{
#'   \item{Time}{x 1000 years (i.e. ka)}
#'   \item{d18O}{Benthic d18O (per mil)}
#'   \item{Error}{Standard error (per mil)}
#' }
#' @source \url{ftp://ftp.ncdc.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2005/lisiecki2005.txt}
#' @examples
#' names(lisiecki2005)
#' head(lisiecki2005)
#' # plot for 0-250 ka:
#' if (require("ggplot2")) {
#'    ggplot(lisiecki2005,
#'           aes(Time,
#'               d18O)) +
#'      geom_line() +
#'      scale_x_continuous(limits = c(0, 250),
#'                         name = "x 1000 years ago") +
#'      scale_y_reverse(name = bquote(delta^18*O)) +
#'      theme_bw()
#'    }
"lisiecki2005"
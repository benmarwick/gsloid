#' LR04 Global Pliocene-Pleistocene Benthic d18O Stack (5.3-Myr).
#'
#' The LR04 stack spans 5.3 Myr and is an average of 57 globally distributed benthic d18O records (which measure global ice volume and deep ocean temperature) collected from the scientific literature. Obtained from ftp://ftp.ncdc.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2005/lisiecki2005.txt on 28 June 2017
#'
#' NAME OF DATA SET:
#' LR04 Global Pliocene-Pleistocene Benthic d18O Stack
#' LAST UPDATES: 8/2005 (Change number of significant digits in LR04 stack)
#' 7/2005 (final version, 0.64 permil correction for Cibicidoides added)
#' CONTRIBUTOR: Lorraine E. Lisiecki, Brown University
#' IGBP PAGES/WDCA CONTRIBUTION SERIES NUMBER: 2005-008
#'
#'
#' SUGGESTED DATA CITATION:
#' Lisiecki, L.E. and M.E. Raymo.  2005.
#' LR04 Global Pliocene-Pleistocene Benthic d18O Stack.
#' IGBP PAGES/World Data Center for Paleoclimatology
#' Data Contribution Series #2005-008.
#' NOAA/NGDC Paleoclimatology Program, Boulder CO, USA.
#'
#'
#' ORIGINAL REFERENCE:
#' Lisiecki, L.E. and M.E. Raymo. 2005.
#' A Pliocene-Pleistocene stack of 57 globally distributed benthic D18O records.
#' Paleoceanography, Vol. 20, PA1003, doi:10.1029/2004PA001071.
#'
#' ADDITIONAL REFERENCES:
#'
#'   Imbrie, J., J. D. Hays, D. G. Martinson, A. McIntyre, A. C. Mix, J. J. Morley,
#' N. G. Pisias, W. L. Prell, and N. J. Shackleton. 1984.
#' The orbital theory of Pleistocene climate: Support from a revised chronology
#' of the marine d18O record. in Milankovitch and Climate, Part 1, edited by
#' A. Berger, pp. 269-305, Springer, New York.
#'
#' Shackleton, N. J. 1995. New data on the evolution of Pliocene climate variability.
#' in Paleoclimate and Evolution, With Emphasis on Human Origins,
#' edited by E. S. Vrba et al.,  pp. 242-248, Yale Univ. Press, New Haven, Ct.
#'
#' ABSTRACT (Lisiecki and Raymo 2005):
#'   We present a 5.3-Myr stack (the "LR04" stack) of benthic d18O records
#' from 57 globally distributed sites aligned by an automated graphic
#' correlation algorithm. This is the first benthic d18O stack composed of more
#' than three records to extend beyond 850 ka, and we use its improved signal
#' quality to identify 24 new marine isotope stages in the early Pliocene.
#' We also present a new LR04 age model for the Pliocene-Pleistocene derived
#' from tuning the d18O stack to a simple ice model based on 21 June insolation
#' at 65N. Stacked sedimentation rates provide additional age model constraints
#' to prevent overtuning. Despite a conservative tuning strategy, the LR04 benthic
#' stack exhibits significant coherency with insolation in the obliquity band
#' throughout the entire 5.3 Myr and in the precession band for more than half
#' of the record. The LR04 stack contains significantly more variance in benthic
#' d18O than previously published stacks of the late Pleistocene as the result
#' of higher resolution records, a better alignment technique, and a greater
#' percentage of records from the Atlantic. Finally, the relative phases of the
#' stack’s 41- and 23-kyr components suggest that the precession component of
#' d18O from 2.7–1.6 Ma is primarily a deep-water temperature signal and that
#' the phase of d18O precession response changed suddenly at 1.6 Ma.
#'
#'
#'
#' PERIOD OF RECORD:  5.3 MMYrBP - present
#'
#' GEOGRAPHIC REGION: Global
#'
#' DESCRIPTION:
#'   Lisiecki-Raymo 2004 (LR04) Global Pliocene-Pleistocene Benthic D18O Stack.
#'
#' The LR04 stack spans 5.3 Myr and was constructed by graphically aligning
#' 57 globally distributed benthic d18O records. Its age model is orbitally tuned
#' to June 21 insolation at 65N but is also constrained by the average sedimentation
#' rates of the 57 sites.
#'
#' LR04 Global Pliocene-Pleistocene Benthic d18O Stack
#
#'
#' @format A data frame with 2115 rows and 3 variables:
#' \describe{
#'   \item{Time}{x 1000 years (i.e. ka)}
#'   \item{d18O}{Benthic d18O (per mil)}
#'   \item{Error}{Standard error (per mil)}
#'   ...
#' }
#' @source \url{ftp://ftp.ncdc.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2005/lisiecki2005.txt}
"lisiecki2005"


#'
#'
#' Global Sea Level Reconstruction using Stacked Records from 0-800 ka.
#'
#' This is a Late Pleistocene sea level stack based on marine sediment core data (foraminiferal carbonate d18O) as estimated by several different techniques in seven different studies. Obtained from https://www.ncdc.noaa.gov/paleo-search/study/19982 on 28 June 2017
#'
#' # Online_Resource: http://www.ncdc.noaa.gov/paleo/study/19982
#'  Online_Resource: http://www1.ncdc.noaa.gov/pub/data/paleo/paleocean/by_contributor/spratt2016/spratt2016.txt
#'
#'  Archive: Paleoceanography
#'
#'
#'   Contribution_Date
#'     Date: 2016-04-12
#'
#'  Title
#'     Study_Name: Global Sea Level Reconstruction using Stacked Records from 0-800 ka
#'
#'
#'  Investigators
#'       Investigators: Spratt, Rachel M.; Lisiecki, Lorraine E.
#'
#'
#'  Description and Notes
#'         Description: Late Pleistocene sea level stack based on marine sediment core data (foraminiferal carbonate d18O) as estimated by several different techniques in seven different studies. Sea level stack is a compilation data from the following published sea level reconstructions: Bintanja, R., Roderik, S.W., van de Wal, O. J.: Modeled atmospheric temperatures and global sea levels over the past million years, Nature, 437, 125-128  doi:10.1038/nature03975, 2005. ; Elderfield, H., Ferretti, P., Greaves, M., Crowhurst, S.J., McCave, I.N., Hodell, D.A., Piotrowski, A.M.: Evolution of ocean temperature and ice volume through the Mid-Pleistocene Climate Transition, Science, 337,6095, 704-709, doi:10.1126/science.1221294, 2012.; Rohling, E.J., Grant, K., Bolshaw, M., Roberts, A.P., Siddall, M., Hemleben, C., Kucera, M.: Antarctic temperature and global sea level closely coupled over the past five glacial cycles. Nat. Geosci., 2, 500-504, 2009.; Rohling, E.J., Grant, K.M., Bolshaw, M., Roberts, A. P., Siddall, M., Hemleben C. Kucera, M., Foster, G.L., Marino, G., Roberts, A.P., Tamisiea, M.E., and Williams, F.:  Sea-level and deep-sea-temperature variability over the past 5.3 million years, Nature, 508, 477-482, 2014.; Shakun, J.D., Lea, D.W., Lisiecki, L.E., Raymo, M.E.: An 800-kyr record of global surface ocean d18O and implications for ice volume-temperature coupling, Earth. Planet. Sc. Lett., 426, 58-68, 2015.; Sosdian S., Rosenthal Y.: Deep-Sea Temperature and Ice Volume Changes Across the Pliocene-Pleistocene Climate Transitions, Science, 17, 325, 5938, 306-310, doi: 10.1126/science.1169938, 2009.; Waelbroeck, C., Labeyrie, L.,  Michel, E., Duplessy J.C., McManus J.: Sea-level and deep water temperature changes derived from benthic foraminifera isotopic records, Quaternary Sci. Rev., 21, 295-305, 2002.
#'
#'
#'  Publication
#'  Authors: Spratt, Rachel M. and Lorraine E. Lisiecki
#'  Published_Date_or_Year: 2016
#'  Published_Title: A Late Pleistocene sea level stack
#'  Journal_Name: Climate of the Past
#'  Volume: in press
#'  Edition:
#'  Issue:
#'  Pages:
#'  Report Number:
#'  DOI: 10.5194/cp-12-1-2016
#'
#'
#'  Abstract: Late Pleistocene sea level has been reconstructed from ocean sediment core data using a wide variety of proxies and models. However, the accuracy of individual reconstructions is limited by measurement error, local variations in salinity and temperature, and assumptions particular to each technique. Here we present a sea level stack (average) which increases the signal-to-noise ratio of individual reconstructions. Specifically, we perform principal component analysis (PCA) on seven records from 0-430 ka and five records from 0-798 ka. The first principal component, which we use as the stack, describes ~80% of the variance in the data and is similar using either five or seven records. After scaling the stack based on Holocene and Last Glacial Maximum (LGM) sea level estimates, the stack agrees to within 5 m with isostatically adjusted coral sea level estimates for Marine Isotope Stages 5e and 11 (125 and 400 ka, respectively). Bootstrapping and random sampling yield mean uncertainty estimates of 9-12 m (1s) for the scaled stack. Sea level change accounts for about 45% of the total orbital-band variance in benthic d18O, compared to a 65% contribution during the LGM-to-Holocene transition. Additionally, the second and third principal components of our analyses reflect differences between proxy records associated with spatial variations in the d18O of seawater.
#'
#'
#'  Site Information
#'  Site_Name: Global 61.5N to 41S
#'  Location:
#'  Country:
#'  Northernmost_Latitude: 61.425
#'  Southernmost_Latitude: -40.937
#'  Easternmost_Longitude: 180
#'  Westernmost_Longitude: -180
#'
#'
#'  Data_Collection
#'    Collection_Name: global_sealevel_stack Spratt16
#'    First_Year: -798000
#'    Last_Year: 0
#'    Time_Unit: cal yr BP
#'    Core_Length:
#'    Notes: Sea level stack is a compilation data from the following published sea level reconstructions: Bintanja, R., Roderik, S.W., van de Wal, O. J.: Modeled atmospheric temperatures and global sea levels over the past million years, Nature, 437, 125-128  doi:10.1038/nature03975, 2005. ; Elderfield, H., Ferretti, P., Greaves, M., Crowhurst, S. J., McCave, I.N., Hodell, D. A., Piotrowski, A. M.: Evolution of ocean temperature and ice volume through the Mid-Pleistocene Climate Transition, Science, 337,6095, 704-709, doi:10.1126/science.1221294, 2012.; Rohling, E.J., Grant, K., Bolshaw, M., Roberts, A.P., Siddall, M., Hemleben, C., Kucera, M.: Antarctic temperature and global sea level closely coupled over the past five glacial cycles. Nat. Geosci., 2, 500–504, 2009.; Rohling, E. J., Grant, K.M., Bolshaw, M., Roberts, A. P., Siddall, M., Hemleben C. Kucera, M., Foster, G.L., Marino, G., Roberts, A.P., Tamisiea, M.E., and Williams, F.:  Sea-level and deep-sea-temperature variability over the past 5.3 million years, Nature, 508, 477–482, 2014.; Shakun, J. D., Lea, D. W., Lisiecki, L. E., Raymo, M. E.: An 800-kyr record of global surface ocean d18O and implications for ice volume-temperature coupling, Earth. Planet. Sc. Lett., 426, 58–68, 2015.; Sosdian S., Rosenthal Y.: Deep-Sea Temperature and Ice Volume Changes Across the Pliocene-Pleistocene Climate Transitions, Science, 17, 325, 5938, 306-310, doi: 10.1126/science.1169938, 2009.; Waelbroeck, C., Labeyrie, L.,  Michel, E., Duplessy J.C., McManus J.: Sea-level and deep water temperature changes derived from benthic foraminifera isotopic records, Quaternary Sci. Rev., 21, 295–305, 2002.
#'
#'
#'
#'  Chronology_Information
#'  Chronology:
#'  For cores with benthic foraminiferal carbonate d18O, age models were developed by aligning the carbonate d18O to the "LR04" benthic d18O stack (Lisiecki and Raymo, Paleoceanography, 2005). In most cases, this was the published timescale of the original record. For cores which lacked benthic carbonate d18O, their sea level estimates were aligned to the sea level estimates of the records that were already on the LR04 age model.
#'  #'  Missing Value: NaN
#'
#'  Variables
#'  Data variable description include: what, material, error, units, seasonality, archive, detail, method, C or N for Character or Numeric data)
#'
#' #' @format A data frame with 799 rows and 9 variables:
#' \describe{
#'   \item{age_calkaBP}{Age, calendar ka BP}
#'   \item{SeaLev_shortPC1}{Sea Level, meters above present day, climate reconstructions, Scaled first principal component of seven sea level reconstructions (0-430 ka),N}
#'   \item{SeaLev_shortPC1_err_sig}{Sea Level, standard deviation from bootstrap, meters,,climate reconstructions, Scaled first principal component of seven sea level reconstructions (0-430 ka),N}
#'   \item{SeaLev_shortPC1_err_lo}{Sea Level, 95% confidence interval, lower bound, meters,,climate reconstructions, Scaled first principal component of seven sea level reconstructions (0-430 ka),N}
#'   \item{SeaLev_shortPC1_err_up}{Sea Level, 95% confidence interval, upper bound, meters,,climate reconstructions, Scaled first principal component of seven sea level reconstructions (0-430 ka),N}
#'   \item{SeaLev_longPC1}{Sea Level, meters above present day, climate reconstructions, Scaled first principal component of five sea level reconstructions (0-798 ka),N}
#'   \item{SeaLev_longPC1_err_sig}{Sea Level, standard deviation from bootstrap,meters,,climate reconstructions, Scaled first principal component of five sea level reconstructions (0-798 ka),N}
#'   \item{SeaLev_longPC1_err_lo}{Sea Level, 95% confidence interval, lower bound,meters,,climate reconstructions,Scaled first principal component of five sea level reconstructions (0-798 ka),N}
#'   \item{SeaLev_longPC1_err_up}{Sea Level, 95% confidence interval, upper bound,meters,,climate reconstructions, Scaled first principal component of five sea level reconstructions (0-798 ka),N}
#'   ...
#' }
#' @source \url{https://www.ncdc.noaa.gov/paleo-search/study/19982}
"spratt2016"


#' Marine isotope stages (MIS) boundaries.
#'
#' From http://www.lorraine-lisiecki.com/LR04_MISboundaries.txt
#'
#'
#'  @format A data frame with 232 rows and 2 variables:
#' \describe{
#'   \item{MIS_Boundary}{Marine isotope stage boundary}
#'   \item{LR04_Age_ka}{x 1000 years ago}
#'   }
#' @source \url{http://www.lorraine-lisiecki.com/LR04_MISboundaries.txt}
"LR04_MISboundaries"


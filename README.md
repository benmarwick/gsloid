
<!-- README.md is generated from README.Rmd. Please edit that file -->
gsloid: global sea level and oxygen isotope data
================================================

[![Travis-CI Build Status](https://travis-ci.org/benmarwick/gsloid.png?branch=master)](https://travis-ci.org/benmarwick/gsloid)

The goal of gsloid is to make available raw data for sea level curves and *δ*<sup>18</sup>O curves for the Holocene and most of the Pleistocene.

Installation
------------

You can install gsloid from github with:

``` r
# install.packages("devtools")
devtools::install_github("benmarwick/gsloid")
```

Overview
--------

This package includes two commonly used datasets in palaeoecology and archaeology:

-   A global sea level curve
-   A global oxygen isotope curve

There are many possible sources for these kinds of data, this package includes data from:

| Dataset      | Source                                                                                                                                                                            |
|:-------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| lisiecki2005 | Lisiecki, L.E. and M.E. Raymo. 2005. A Pliocene-Pleistocene stack of 57 globally distributed benthic D18O records. Paleoceanography, Vol. 20, PA1003, <doi:10.1029/2004PA001071>. |
| spratt2016   | Spratt, Rachel M. and Lorraine E. Lisiecki 2016. A Late Pleistocene sea level stack. Climate of the Past. Vol. 12, 1079-1092, <doi:10.5194/cp-12-1-2016>                          |

Here's the structure of the main datasets:

``` r
library(gslic)
str(lisiecki2005)
#> 'data.frame':    2115 obs. of  3 variables:
#>  $ Time : num  0 1 2 3 4 5 6 7 8 9 ...
#>  $ d18O : num  3.23 3.23 3.18 3.29 3.3 3.26 3.33 3.37 3.42 3.38 ...
#>  $ Error: num  0.03 0.04 0.03 0.03 0.03 0.03 0.04 0.04 0.03 0.04 ...
```

``` r
str(spratt2016)
#> 'data.frame':    799 obs. of  9 variables:
#>  $ age_calkaBP            : num  0 1 2 3 4 5 6 7 8 9 ...
#>  $ SeaLev_shortPC1        : num  8.49 7.63 4.01 4.35 3.13 ...
#>  $ SeaLev_shortPC1_err_sig: num  5.23 4.87 4.83 4.72 4.74 4.57 5.04 5.9 6.79 8.3 ...
#>  $ SeaLev_shortPC1_err_lo : num  -1.72 -2.9 -4.51 -6.93 -10.43 ...
#>  $ SeaLev_shortPC1_err_up : num  17.93 16.39 13.59 12.08 8.41 ...
#>  $ SeaLev_longPC1         : num  8.96 7.72 5.96 3.54 1.88 0 -2 -5.38 -7.12 -11.6 ...
#>  $ SeaLev_longPC1_err_sig : num  5.72 5.13 4.69 4.42 4.39 ...
#>  $ SeaLev_longPC1_err_lo  : num  -1.21 -2.77 -5.01 -7.28 -10.54 ...
#>  $ SeaLev_longPC1_err_up  : num  20.38 17.1 14.21 10.9 7.63 ...
```

Detailed descriptions of the variables are avaliable in the data documentation, run `?lisiecki2005` and `?spratt2016` for more information.

Usage
-----

Atlhough these data are suitable for many kinds of analyses, the primary reason that I made this package is so I can make my own plots of these data without having to copy a plot from another publication. Here's how I typically start with plotting the oxygen isotope data:

``` r
library(ggplot2)


ggplot(lisiecki2005, 
       aes(Time,
           d18O)) +
  geom_line() +
  scale_x_continuous(limits = c(0, 250),
                     name = "x 1000 years ago") +
  scale_y_reverse(name = bquote(delta^18*O)) +
  theme_bw()
#> Warning: Removed 1864 rows containing missing values (geom_path).
```

![](vignettes/figures/README-unnamed-chunk-5-1.png)

And here's how I start to plot the sea level data:

``` r
ggplot(spratt2016, 
       aes(age_calkaBP,
           SeaLev_shortPC1)) +
  geom_line() +
  scale_x_continuous(limits = c(0, 250),
                     name = "x 1000 years ago") +
  scale_y_continuous(name = "Sea Level, meters above present day") +
  theme_bw()
#> Warning: Removed 548 rows containing missing values (geom_path).
```

![](vignettes/figures/README-unnamed-chunk-6-1.png)

Often we want to see the Marine istope stages on these plots also. This package includes the dataset `LR04_MISboundaries` of start and end dates for each stage, so we can draw these stages easily.

Some care is required to get the MIS numbers positions in an easy-to-read location. Here I use `rep()` and `seq()` to help position the numbers.

``` r
# subset the MIS data for the last 250 ka years
mis_last_250ka <- LR04_MISboundaries[LR04_MISboundaries$LR04_Age_ka <= 250, ]

# plot the oxygen istope data line on top of the MIS lines
ggplot() +
  geom_vline(data = mis_last_250ka,          # add MIS lines
             aes(xintercept = LR04_Age_ka),
             colour = "blue") +
  annotate("text", 
           label = mis_last_250ka$label, 
           x = mis_last_250ka$LR04_Age_ka - 4,
           y = c(rep(3.0, 4), 
                 seq(3.2, 2.7, length.out = 6), 
                 rep(3.0, 2)),
           size = 3) +
  geom_line(data = lisiecki2005,                # add d18O line
            aes(Time,
                d18O),
            size = 0.75) +  
  scale_x_continuous(limits = c(0, 250),
                     name = "x 1000 years ago") +
  scale_y_reverse(name = bquote(delta^18*O)) +
  theme_bw()
#> Warning: Removed 1864 rows containing missing values (geom_path).
```

![](vignettes/figures/README-unnamed-chunk-7-1.png)

Sometimes we prefer to indicate the MIS by horizontal lines. Once again we have to carefully place the line segments and labels so they are clear to read:

``` r
ggplot() +
  geom_segment(data = mis_last_250ka, # add MIS lines
               aes(x =    line_start,
                   xend = LR04_Age_ka,
                   y =    seq(3, 2.5, length.out = nrow(mis_last_250ka)),
                   yend = seq(3, 2.5, length.out = nrow(mis_last_250ka))),
               colour = "blue",
               size = 1) +
  annotate("text", 
           label = mis_last_250ka$label, 
           x =     mis_last_250ka$mid,
           y = c(seq(2.9, 2.7, length.out = 4), 
                 seq(3.1, 2.8, length.out = 5),
                 seq(2.4, 2.3, length.out = 3)),
           size = 3) +
  geom_line(data = lisiecki2005,                # add d18O line
            aes(Time,
                d18O),
            size = 0.75) +  
  scale_x_continuous(limits = c(0, 250),
                     name = "x 1000 years ago") +
  scale_y_reverse(name = bquote(delta^18*O)) +
  theme_bw()
#> Warning: Removed 1864 rows containing missing values (geom_path).
```

![](vignettes/figures/README-unnamed-chunk-8-1.png)

And sometimes we might want shaded rectangles to indicate the MIS:

``` r
ggplot() +
  annotate("rect", 
           xmin = mis_last_250ka$line_start, 
           xmax = mis_last_250ka$LR04_Age_ka, 
           ymin = -Inf, 
           ymax = Inf,
        alpha = .2,
        fill = rep(c("grey50", "white"), 
                   nrow(mis_last_250ka)/2)) +
  annotate("text", 
           label = mis_last_250ka$label, 
           x =     mis_last_250ka$mid,
           y = c(rep(3, 4), 
                 seq(3.1, 2.8, length.out = 5),
                 rep(3, 3)),
           size = 3) +
  geom_line(data = lisiecki2005,                # add d18O line
            aes(Time,
                d18O),
            size = 0.75) +  
  scale_x_continuous(limits = c(0, 250),
                     name = "x 1000 years ago") +
  scale_y_reverse(name = bquote(delta^18*O)) +
  theme_bw()
#> Warning: Removed 1864 rows containing missing values (geom_path).
```

![](vignettes/figures/README-unnamed-chunk-9-1.png)

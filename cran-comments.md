## Test environments
* local OS X install, R 3.4.0
* ubuntu 12.04 (on rhub), R 3.4.0
* win-builder (devel and release)

29 June 2017

Submitted, rejected, because:

#--
>>>>> CRAN submission writes:

We get


Found the following (possibly) invalid URLs:
  URL: doi:10.1029/2004PA001071
    From: inst/doc/Introduction.html
    Message: Invalid URI scheme (use \doi for DOIs in Rd markup)
  URL: doi:10.5194/cp-12-1-2016
    From: inst/doc/Introduction.html
    Message: Invalid URI scheme (use \doi for DOIs in Rd markup)

Pls fix 
#--

I have wrapped those DOIs in <>, and now the tests show:

rhub::check_for_cran(show_status = FALSE) shows...

devtools::build_win() shows...

---
28 June 2017

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Reverse dependencies

This is a new release, so there are no reverse dependencies.

---

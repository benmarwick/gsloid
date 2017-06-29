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

I have wrapped those DOIs in \doi{} in the DESCRIPTION, convert to URLs in vignette, and now the tests show:

--
rhub::check_for_cran(show_status = FALSE) shows...

WARNINGS:
* checking top-level files ... WARNING
Conversion of ‘README.md’ failed:
pandoc: Could not fetch https://travis-ci.org/benmarwick/gsloid.png?branch=master
HttpExceptionRequest Request {
  host                 = "travis-ci.org"
  port                 = 443
  secure               = True
  requestHeaders       = []
  path                 = "/benmarwick/gsloid.png"
  queryString          = "?branch=master"
  method               = "GET"
  proxy                = Nothing
  rawBody              = False
  redirectCount        = 10
  responseTimeout      = ResponseTimeoutDefault
  requestVersion       = HTTP/1.1
}
 (ConnectionFailure getProtocolByName: does not exist (no such protocol name: tcp))
NOTES:
 * checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Ben Marwick <benmarwick@gmail.com>’

New submission

--
devtools::build_win() shows...

* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Ben Marwick <benmarwick@gmail.com>'

New submission

Possibly mis-spelled words in DESCRIPTION:
  Myr (11:11)
  benthic (10:53)
  ka (12:44)
--
devtools::check() shows...

R CMD check results
0 errors | 0 warnings | 0 notes

---
28 June 2017

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Reverse dependencies

This is a new release, so there are no reverse dependencies.

---

8 May 2022

Uwe Ligges emails to me: "Found the following (possibly) invalid file URI: CONDUCT.md From: README.md"

BM: I changed the URI to a full URL to the GitHub repo for the pkg. On rhub::check_for_cran() & devtools::check_win_devel() I got these spurious notes:

Found the following (possibly) invalid DOIs:
  DOI: 10.1029/2004PA001071
    From: DESCRIPTION
    Status: Service Unavailable
    Message: 503
* checking for detritus in the temp directory ... NOTE
Found the following files/directories:
  'lastMiKTeXException'


4 May 2022

CRAN emails to me: "package gsloid_0.2.0.tar.gz does not pass the incoming checks automatically, please see the following pre-tests:
Windows: <https://win-builder.r-project.org/incoming_pretest/gsloid_0.2.0_20220504_070803/Windows/00check.log> Status: 2 NOTEs; Debian: <https://win-builder.r-project.org/incoming_pretest/gsloid_0.2.0_20220504_070803/Debian/00check.log>; Status: 3 NOTEs"

BM: I cannot reproduce the NOTE Package vignette with placeholder title 'Vignette Title': 'Introduction.Rmd' on rhub or locally. 

BM: NOTES about links and DOIs are spurious, they resolve after a tiny delay.

3 May 2022

K. Hornick writes "Please see the problems shown on <https://cran.r-project.org/web/checks/check_results_gsloid.html>. Please correct before 2022-05-08 to safely retain your package on CRAN. Note that this will be the *final* reminder."

BM: updated some of the roxygen to escape the %, no obvious issue with Vignette title (despite the note from CRAN that alerted KH), using rhub::check_for_cran() and cran_summary(), here is the output:

####
## Test environments
- R-hub windows-x86_64-devel (r-devel)
- R-hub ubuntu-gcc-release (r-release)
- R-hub fedora-clang-devel (r-devel)

## R CMD check results
> On windows-x86_64-devel (r-devel), ubuntu-gcc-release (r-release), fedora-clang-devel (r-devel)
  checking CRAN incoming feasibility ... NOTE
  Maintainer: 'Ben Marwick <benmarwick@gmail.com>'
  
  Found the following (possibly) invalid DOIs:
    DOI: 10.1029/2004PA001071
      From: DESCRIPTION
      Status: Service Unavailable
      Message: 503

> On windows-x86_64-devel (r-devel)
  checking for detritus in the temp directory ... NOTE
  Found the following files/directories:
    'lastMiKTeXException'

0 errors ✓ | 0 warnings ✓ | 2 notes x
####

Note on DOI is spurious, since doi.org/10.1029/2004PA001071 resolves in the browser just fine
Note on lastMiKTeXException is an rhub issue: https://github.com/r-hub/rhub/issues/503





29 June 2017

Submitted, rejected, because:

#--

Thanks, we see:

* checking examples ... NONE

Can you some examples, e.g. how to look appropriately add the data?

Best,
Uwe Ligges
#---
## Test environments
* local OS X install, R 3.4.0
* ubuntu 12.04 (on rhub), R 3.4.0
* win-builder (devel and release)

So, 3 examples now added for each data set, in data.R

rhub::check(platform = rhub::platforms()$name, show_status = FALSE) reports...

OK

devtools::build_win() reports...

* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Ben Marwick <benmarwick@gmail.com>'

New submission

Possibly mis-spelled words in DESCRIPTION:
  Myr (11:11)
  benthic (10:54)
  ka (12:44)

devtools::check() reports...

R CMD check results
0 errors | 0 warnings | 0 notes

R CMD check succeeded




-----
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

I have wrapped those DOIs in \doi{} in the DESCRIPTION, convert to URLs in vignette, and that seems to have solved the problem. Now the tests show:

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

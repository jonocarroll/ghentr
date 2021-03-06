
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/ghentr)](https://cran.r-project.org/package=ghentr) [![Travis-CI Build Status](https://travis-ci.org/ijlyttle/ghentr.svg?branch=master)](https://travis-ci.org/ijlyttle/ghentr)

ghentr
======

The goal of ghentr is to make it easier for you to build and share a private package-ecosystem using your instance of GitHub Enterprise.

You are likely already using the functions `devtools::install_github()` and `usethis::use_github()` to interact with `github.com`. If you have an instance GitHub Enterprise (GHE), you can also use these functions with GHE.

Let's say that you work for [Acme Corporation](https://en.wikipedia.org/wiki/Acme_Corporation), and that Acme has its own instance of GHE. At present, you could install a package using the `host` argument with `devtools::install_github`.

``` r
devtools::install_github("user/repo", host = "github.acme-corp.com/api/v3")
```

In time, it may become tiresome to add the host argument each time you want to install a package from GHE. Instead, it might be handy to create a function to do this for you, then put that function into a package that you can use and make available to your colleagues. This is what **ghentr** helps you to do.

Assuming you create a package called **acmetools**, you can use templating functions in **ghentr** to add a function to **acmetools** that would allow you to use syntax like this:

``` r
# wraps devtools::install_github()
acmetools::install_github_acme("user/repo")
```

There are two ways **ghentr** can help you work with GitHub Enterprise:

-   To make functions that wrap `devtools::install_github()` and `usethis::use_github()`, described in an [article](https://ijlyttle.github.io/ghentr/articles/using_ghe.html).

-   To initalize and manage a private CRAN-like repository using [drat](https://CRAN.R-project.org/package=drat), described in another [article](https://ijlyttle.github.io/ghentr/articles/using_repository.html).

Installation
------------

You can install ghentr from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("r-lib/usethis") # uses dev version, for now
devtools::install_github("ijlyttle/ghentr")
```

Code of Conduct
---------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

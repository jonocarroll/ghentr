
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/ghentr)](https://cran.r-project.org/package=ghentr) [![Travis-CI Build Status](https://travis-ci.org/ijlyttle/ghentr.svg?branch=master)](https://travis-ci.org/ijlyttle/ghentr)

ghentr
======

The goal of ghentr is to make it easier for you to build custom functions to access your instance of GitHub Enterprise.

You are likely already using the functions `devtools::install_github()` and `usethis::use_github()` to interact with `github.com`. If you have an instance GitHub Enterprise (GHE), these functions have a `host` argument that lets you work with your GHE.

Let's say that you work for [Acme Corporation](https://en.wikipedia.org/wiki/Acme_Corporation), and that Acme has its own instance of GitHub Enterprise. At present, you could install a package using the `host` argument with `devtools::install_github`.

``` r
devtools::install_github("user/repo", host = "github.acme-corp.com/api/v3")
```

In the fullness of time it may become tiresome to add the host argument. Instead, it might be handy to wrap this in a function, then put that function into a package that you can make available to your colleagues. This is what **ghentr** helps you to do.

Let's say you create a package called **acmetools**. Using tempating functions in this package, you can add a function to your package to do the same thing:

``` r
acmetools::install_github_acme("user/repo")
```

What you need
-------------

To make use of this, you will need a few things:

-   an instance of GitHub Enterprise, used to determine the `host`, i.e. `"github.acme-corp.com/api/v3"`

-   a longform `name` to use in your functions' documentation, i.e. `"Acme Corporation"`

-   a shorter `suffix` to use in the names of your new functions, i.e. `"acme"`

Installation
------------

You can install ghentr from github with:

``` r
# install.packages("devtools")
devtools::install_github("ijlyttle/ghentr")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```

Code of Conduct
---------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

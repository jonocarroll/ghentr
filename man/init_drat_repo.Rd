% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_drat.R
\name{init_drat_repo}
\alias{init_drat_repo}
\title{Initialize a DRAT repository}
\usage{
init_drat_repo()
}
\value{
\code{invisible(NULL)}, called for side effect
}
\description{
Helps you to initalize a DRAT repositiory for use with your institution's
GitHub Enterprise. This function would be needed only for those people
with push-access to this DRAT repository.
}
\details{
This function is meant to parallel \code{\link[drat:initRepo]{drat::initRepo()}}, but there is an
important difference: \code{drat::initRepo()} establishes a \code{gh-pages} branch
in the git repository, the philosophy here is to use the \code{master} branch.
This is because GitHub automatically serves the \code{gh-pages} branch, but you
may not want to do this.

This is because it is possible that this DRAT repository will be nominally
private to your institution, hosted behind its firewall. However, you may
wish to access this repository from a (cloud-hosted) virtual machine outside
your firewall. To do this, you could push a copy of this repository to a
private GitHub repository - then pull from your external virtual-machine.

On your virtual machine, you could refer to the location of this package
repository using a local \code{file://} URL rather than a remote \code{https://} URL.
By fetching the DRAT repository from private GitHub to your external
virtual-machine, then using that repository locally, you can use a
CRAN-like repository while maintaining the
privacy of your "private" repository.
}
\examples{
\dontrun{
  # create a new project, then call from the project directory
  init_drat_repo()
  usethis::use_git()
  use_github_foo()
  # activate the github pages for the master branch
}

}
\seealso{
\code{\link[drat:initRepo]{drat::initRepo()}}
}

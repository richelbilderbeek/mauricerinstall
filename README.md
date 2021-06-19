# mauricerinstall

Branch   |[![GitHub Actions logo](man/figures/GitHubActions.png)](https://github.com/ropensci/mauricerinstall/actions)|[![Travis CI logo](man/figures/TravisCI.png)](https://travis-ci.com)                                                  |[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
---------|-----------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------
`master` |![R-CMD-check](https://github.com/ropensci/mauricerinstall/workflows/R-CMD-check/badge.svg?branch=master)   |[![Build Status](https://travis-ci.com/ropensci/mauricerinstall.svg?branch=master)](https://travis-ci.com/ropensci/mauricerinstall) |[![codecov.io](https://codecov.io/github/ropensci/mauricerinstall/coverage.svg?branch=master)](https://codecov.io/github/ropensci/mauricerinstall/branch/master)
`develop`|![R-CMD-check](https://github.com/ropensci/mauricerinstall/workflows/R-CMD-check/badge.svg?branch=develop)  |[![Build Status](https://travis-ci.com/ropensci/mauricerinstall.svg?branch=develop)](https://travis-ci.com/ropensci/mauricerinstall)|[![codecov.io](https://codecov.io/github/ropensci/mauricerinstall/coverage.svg?branch=develop)](https://codecov.io/github/ropensci/mauricerinstall/branch/develop)

Install BEAST2 packages for [mauricer](https://github.com/ropensci/mauricer), 
a sub-package of [babette](https://github.com/ropensci/babette).

Related packages:

 * [babette](https://github.com/ropensci/babette) do a full BEAST2 workflow.
 * [beautier](https://github.com/ropensci/beautier) creates BEAST2 input (`.xml`) files.
 * [beastier](https://github.com/ropensci/beastier) runs BEAST2
 * [mauricer](https://github.com/ropensci/mauricer) work with BEAST2 packages
 * [tracerer](https://github.com/ropensci/tracerer) parses BEAST2 output (`.log`, `.trees`, etc) files.

## Examples

To install the BEAST2 NS package:

```
remotes::install_github("richelbilderbeek/mauricerinstall")
mauricerinstall::install_beast2_pkg("NS")
```

An introduction video:

 * [YouTube video about mauricer](https://youtu.be/Yk737gorcrw)


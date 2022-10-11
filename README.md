# mauricerinstall

Branch   |[![GitHub Actions logo](man/figures/GitHubActions.png)](https://github.com/richelbilderbeek/mauricerinstall/actions)|[![AppVeyor logo](man/figures/AppVeyor.png)](https://ci.appveyor.com/project/richelbilderbeek/mauricerinstall/)                                                                                          |[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
---------|--------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
`master` |![R-CMD-check](https://github.com/richelbilderbeek/mauricerinstall/workflows/R-CMD-check/badge.svg?branch=master)   |[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/richelbilderbeek/mauricerinstall?branch=master&svg=true)](https://ci.appveyor.com/project/richelbilderbeek/mauricerinstall) |[![codecov.io](https://codecov.io/github/richelbilderbeek/mauricerinstall/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/mauricerinstall/branch/master)
`develop`|![R-CMD-check](https://github.com/richelbilderbeek/mauricerinstall/workflows/R-CMD-check/badge.svg?branch=develop)  |[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/richelbilderbeek/mauricerinstall?branch=develop&svg=true)](https://ci.appveyor.com/project/richelbilderbeek/mauricerinstall)|[![codecov.io](https://codecov.io/github/richelbilderbeek/mauricerinstall/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/mauricerinstall/branch/develop)

Install BEAST2 packages for [mauricer](https://github.com/ropensci/mauricer), 
a sub-package of [babette](https://github.com/ropensci/babette).

Related packages:

 * [babette](https://github.com/ropensci/babette) do a full BEAST2 workflow.
 * [beautier](https://github.com/ropensci/beautier) creates BEAST2 input (`.xml`) files.
 * [beastier](https://github.com/ropensci/beastier) runs BEAST2
 * [beastierinstall](https://github.com/richelbilderbeek/beastierinstall) installs BEAST2
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



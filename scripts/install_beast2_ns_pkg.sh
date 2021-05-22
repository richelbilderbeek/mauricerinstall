#!/bin/bash
#
# Installs the BEAST2 NS package
# using the R code in the 'mauricerinstall' package
#
# Because the R code in the package uses 'mauricerinstall::' in calling
# its functions, this scipt 
#
# Usage:
#
#  ./scripts/install_beast2.sh
#
#
cat R/*.R > install_beast2_ns_pkg.R
echo 'install_beast2_pkg("NS")' >> install_beast2_ns_pkg.R
sed -i'.orginal' "s/mauricerinstall:://g" install_beast2_ns_pkg.R
cat install_beast2_ns_pkg.R
Rscript install_beast2_ns_pkg.R

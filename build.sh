# irods packages - see https://packages.irods.org
apt install -y irods-externals-cmake3.11.4-0 irods-externals-clang6.0-0
apt install -y irods-dev irods-runtime
# build rirods
R CMD BATCH install-prerequisites.R
Rscript -e 'library(Rcpp); Rcpp::compileAttributes()'
mkdir -p build
cd build
cmake ..
make
#R CMD BATCH install-rirods-package.R

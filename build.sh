R CMD BATCH install-prerequisites.R
Rscript -e 'library(Rcpp); Rcpp::compileAttributes()'
mkdir -p build
cd build
cmake ..
make
#R CMD BATCH install-rirods-package.R

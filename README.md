
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/RKeel53/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/RKeel53/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to provide an overview of your R library setp.
it is a toy package created as pack of a workshop and not meant for
serious use!

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("RKeel53/libminer")
```

## Example

To get a count of installed packages in each of your libraries,
optionally with the total sizes, use `lib_summary()`.

``` r
library(libminer)
lib_summary()
#>                                                                                       Library
#> 1                        /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/p7/8m5m2_xs2m3drhstypsh3q000000gn/T/Rtmp9Z7PSa/temp_libpath3f545c76afb
#>   n_packages
#> 1        275
#> 2          1
# specify sizes = TRUE
lib_summary(sizes = TRUE)
#>                                                                                       Library
#> 1                        /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/p7/8m5m2_xs2m3drhstypsh3q000000gn/T/Rtmp9Z7PSa/temp_libpath3f545c76afb
#>   n_packages  lib_size
#> 1        275 874286616
#> 2          1     14580
```

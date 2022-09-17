
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `tlemix`

<!-- badges: start -->

[![CRAN
version](https://www.r-pkg.org/badges/version/tlemix)](https://cran.r-project.org/package=tlemix)
[![downloads](https://cranlogs.r-pkg.org/badges/tlemix)](https://cran.r-project.org/package=tlemix)
[![license](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![R-CMD-check](https://github.com/valentint/tlemix/workflows/R-CMD-check/badge.svg)](https://github.com/valentint/tlemix/actions)
<!-- badges: end -->

The package `tlemix` implements a general framework for robustly fitting
discrete mixtures of regression models in the `R` statistical computing
environment. It implements the FAST-TLE algorithm and uses the `R`
package `FlexMix` as a computational engine for fitting mixtures of
general linear models (GLMs) and model-based clustering in R.

## Installation

The `tlemix` package is on CRAN (The Comprehensive R Archive Network)
and the latest release can be easily installed using the command

    install.packages("tlemix")

## Building from source

To install the latest stable development version from GitHub, you can
pull this repository and install it using

    ## install.packages("remotes")
    remotes::install_github("valentint/tlemix")

Of course, if you have already installed `remotes`, you can skip the
first line (I have commented it out).

## Example

This are three basic examples which show you if the package is properly
installed:

``` r
library(tlemix)
#> Loading required package: flexmix
#> Loading required package: lattice

##  Mixture of two standard normal distributions with outliers.

data(gaussData)
str(gaussData)
#> 'data.frame':    100 obs. of  3 variables:
#>  $ x: num  -2.953 -0.984 -1.234 -2.423 -2.124 ...
#>  $ y: num  0.886 -1.095 -0.698 0.225 0.191 ...
#>  $ c: int  1 1 1 1 1 1 1 1 1 1 ...

## The example needs some computing time:

## estimate
est.tle <- TLE(y~x,"gaussian",data=gaussData,Density=flexmix.Density,
           Estimate=flexmix.Estimate,msglvl=1,nc=2,class="hard")
#> [1] "New estimate start"
#> 
#> .
#>  ========================================= 
#>  loglik updated! -44.28389 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -43.71241 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -42.84966 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -41.8367 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -40.96942 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -39.48434 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -37.84062 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -36.31866 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -36.07348 1 1  
#>  ========================================= 
#> .
#>  ========================================= 
#>  loglik updated! -32.23606 2 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -16.37906 2 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -4.623227 2 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -0.6128035 2 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! 1.362193 2 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! 1.362193 2 1  
#>  ========================================= 
#> .
#>  ========================================= 
#>  loglik updated! 1.362193 3 1  
#>  ========================================= 
#> ......
#>  ========================================= 
#>  loglik updated! 2.939953 9 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! 17.46814 9 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! 31.57659 9 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! 33.64017 9 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! 34.33179 9 2  
#>  ========================================= 
#> .
#>  best subsample found: 
#>  ========================================================================== 
#>  TLE parameters         
#>    kTrim             =  54 
#>    kStar             =  31 
#>    nobs              =  100 
#>  TLE estimates          
#>    loglik            =  34.33179 
#>    num of components =  2 
#>    iter of best      =  9 
#>    total num.iter.   =  10 
#>    sorted subsample  =  3 4 6 7 13 14 15 16 19 20 25 29 33 
#>                      =  38 39 40 41 42 43 44 45 46 47 48 49 50 
#>                      =  51 52 53 54 55 56 57 58 59 60 61 63 64 
#>                      =  65 66 67 68 69 71 72 73 74 75 76 77 78 79 80 
#>    outliers          =  1 2 5 8 9 10 11 12 17 18 21 22 23 24 26 27 28 30 31 32 34 35 36 37 62 70 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 
#>  ==========================================================================

## plot data indicating clusters
tleplot(est.tle,gaussData,main="TLE Scatter Plot")
```

![](README-example1-1.png)<!-- -->

``` r
library(tlemix)

##  Mixture of two standard normal distributions

data(McLachlan150)
str(McLachlan150)
#> 'data.frame':    150 obs. of  3 variables:
#>  $ x: num  1.469 0.138 1.078 -3.163 1.179 ...
#>  $ y: num  3.85 4.07 2.58 2.9 3.44 ...
#>  $ c: int  1 1 1 1 1 1 1 1 1 1 ...

## Th example needs some computing time:
d <- as.matrix(McLachlan150[,1:2])
est.tle <- TLE(d~1,"mvtnormal",data=d,Density=FLXmclust.Density,
           Estimate=FLXmclust.Estimate,msglvl=1,nc=3,class="hard")
#> [1] "New estimate start"
#> 
#> .
#>  ========================================= 
#>  loglik updated! -280.727 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -264.8564 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -259.3031 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -251.6435 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -251.163 1 2  
#>  ========================================= 
#> .
#>  ========================================= 
#>  loglik updated! -248.0984 2 3  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -225.2889 2 3  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -221.2586 2 3  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -219.8102 2 3  
#>  ========================================= 
#> ........
#>  best subsample found: 
#>  ========================================================================== 
#>  TLE parameters         
#>    kTrim             =  80 
#>    kStar             =  44 
#>    nobs              =  150 
#>  TLE estimates          
#>    loglik            =  -219.8102 
#>    num of components =  3 
#>    iter of best      =  2 
#>    total num.iter.   =  10 
#>    sorted subsample  =  1 3 5 8 10 11 12 14 16 17 18 21 22 24 25 26 27 28 29 30 
#>                      =  31 32 33 34 35 36 37 40 41 42 44 45 46 47 48 49 50 51 52 53 
#>                      =  54 55 56 57 58 60 61 62 63 64 65 66 67 71 72 73 75 76 78 79 
#>                      =  80 81 82 83 85 87 88 89 90 91 92 94 95 96 98 99 100 102 120 124 
#>    outliers          =  2 4 6 7 9 13 15 19 20 23 38 39 43 59 68 69 70 74 77 84 86 93 97 101 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 121 122 123 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 
#>  ==========================================================================
tleplot(est.tle,as.data.frame(d),main="TLE Scatter Plot")
```

![](README-example2-1.png)<!-- -->

``` r
library(tlemix)

##  Mixture two Poisson Regression Models

data(dPois)
str(dPois)
#> 'data.frame':    250 obs. of  2 variables:
#>  $ y: num  12 29 38 9 18 58 37 50 28 11 ...
#>  $ x: num  69 -13 -78 91 13 -139 -92 -118 -57 74 ...

# The example needs some computing time:
est.tle <- TLE(y~x,"poisson",data=dPois,Density=flexmix.Density,
           Estimate=flexmix.Estimate,msglvl=1,nc=2,kTrim=200,class="hard")
#> [1] "New estimate start"
#> 
#> .
#>  ========================================= 
#>  loglik updated! -630.4836 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -627.6926 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -627.4379 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -627.3376 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -627.0562 1 2  
#>  ========================================= 
#> .........
#>  best subsample found: 
#>  ========================================================================== 
#>  TLE parameters         
#>    kTrim             =  200 
#>    kStar             =  103 
#>    nobs              =  250 
#>  TLE estimates          
#>    loglik            =  -627.0562 
#>    num of components =  2 
#>    iter of best      =  1 
#>    total num.iter.   =  10 
#>    sorted subsample  =  1 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 19 21 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 46 47 48 49 50 51 52 54 56 57 
#>                      =  58 59 60 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 88 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 
#>                      =  111 112 113 114 115 116 117 118 119 120 121 122 123 124 126 127 128 129 130 131 132 133 134 135 136 137 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 157 158 159 160 161 162 163 
#>                      =  164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 203 209 211 214 215 216 223 226 242 243 246 248 249 
#>    outliers          =  2 18 20 22 45 53 55 61 87 89 125 138 156 201 202 204 205 206 207 208 210 212 213 217 218 219 220 221 222 224 225 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 244 245 247 250 
#>  ==========================================================================
tleplot(est.tle,dPois)
```

![](README-example3-1.png)<!-- -->

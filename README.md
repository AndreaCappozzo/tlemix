
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `tlemix`

<!-- badges: start -->

[![CRAN
version](https://www.r-pkg.org/badges/version/fsdaR)](https://cran.r-project.org/package=tlemix)
[![downloads](https://cranlogs.r-pkg.org/badges/fsdaR)](https://cran.r-project.org/package=tlemix)
[![license](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)
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
#>  loglik updated! -43.68749 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -39.61478 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -37.62866 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -36.31866 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -36.07348 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -32.54571 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -19.53227 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -14.54802 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -10.31409 1 1  
#>  ========================================= 
#> .
#>  ========================================= 
#>  loglik updated! -6.486612 2 1  
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
#> ....
#>  ========================================= 
#>  loglik updated! 33.87861 6 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! 38.51501 6 2  
#>  ========================================= 
#> ....
#>  best subsample found: 
#>  ========================================================================== 
#>  TLE parameters         
#>    kTrim             =  54 
#>    kStar             =  31 
#>    nobs              =  100 
#>  TLE estimates          
#>    loglik            =  38.51501 
#>    num of components =  2 
#>    iter of best      =  6 
#>    total num.iter.   =  10 
#>    sorted subsample  =  1 2 3 4 5 6 8 9 11 12 13 14 15 
#>                      =  16 17 18 19 20 21 22 23 24 25 27 28 29 
#>                      =  30 31 32 33 34 35 36 37 38 39 40 43 44 
#>                      =  46 48 49 51 52 53 54 58 62 64 68 72 74 78 93 
#>    outliers          =  7 10 26 41 42 45 47 50 55 56 57 59 60 61 63 65 66 67 69 70 71 73 75 76 77 79 80 81 82 83 84 85 86 87 88 89 90 91 92 94 95 96 97 98 99 100 
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
#>  loglik updated! -318.2092 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -314.7677 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -309.7507 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -300.7423 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -297.5349 1 1  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -296.7834 1 1  
#>  ========================================= 
#> ..
#>  ========================================= 
#>  loglik updated! -285.4617 3 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -278.791 3 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -272.9123 3 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -270.5521 3 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -270.2596 3 2  
#>  ========================================= 
#> .
#>  ========================================= 
#>  loglik updated! -270.2439 4 2  
#>  ========================================= 
#> ......
#>  best subsample found: 
#>  ========================================================================== 
#>  TLE parameters         
#>    kTrim             =  80 
#>    kStar             =  44 
#>    nobs              =  150 
#>  TLE estimates          
#>    loglik            =  -270.2439 
#>    num of components =  2 
#>    iter of best      =  4 
#>    total num.iter.   =  10 
#>    sorted subsample  =  2 3 5 8 11 12 13 16 17 21 22 25 26 27 28 29 30 31 32 33 
#>                      =  34 35 36 37 38 39 40 42 44 45 46 47 48 49 50 51 52 53 54 55 
#>                      =  56 57 58 60 61 62 63 64 65 66 67 71 72 73 74 75 76 78 79 80 
#>                      =  81 82 83 85 87 88 89 90 91 92 94 95 96 98 99 100 102 124 141 143 
#>    outliers          =  1 4 6 7 9 10 14 15 18 19 20 23 24 41 43 59 68 69 70 77 84 86 93 97 101 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 142 144 145 146 147 148 149 150 
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
#>  loglik updated! -631.6689 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -628.7701 1 2  
#>  ========================================= 
#> 
#>  ========================================= 
#>  loglik updated! -627.4842 1 2  
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

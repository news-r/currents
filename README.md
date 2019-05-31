[![Build Status](https://travis-ci.org/news-r/currents.svg?branch=master)](https://travis-ci.org/news-r/currents)

# currents

Integrates the [currents API](https://currentsapi.services/) with R.

## Installation

``` r
# install.packages("remotes")
remotes::install_github("news-r/currents")
```

## Example

Specify you API key with `currents_key` or put it in your `.Renviron` as `CURRENTS_API_KEY`.

```r
library(currents)

currents_key("xXxxxXXXxXXxXxx")
```

Then use `latest_news` or `search_news`


```r
search_news(keyword = "Trump", country = "US")
```

```
## # A tibble: 85 x 9
##    id     title  description url   author image language category published
##    <chr>  <chr>  <chr>       <chr> <chr>  <chr> <chr>    <list>   <chr>    
##  1 b3d0b… Woman… ...         http… Editor None  en       <chr [1… 2019-05-…
##  2 b3d0b… Woman… ...         http… Editor None  en       <chr [1… 2019-05-…
##  3 83608… The P… We can’t g… http… Madel… http… en       <chr [1… 2019-05-…
##  4 83608… The P… We can’t g… http… Madel… http… en       <chr [1… 2019-05-…
##  5 0922c… The B… "NBC\nThe … http… Andre… http… en       <chr [1… 2019-05-…
##  6 a23a2… AMC W… "AMC\nIn a… http… Dusti… http… en       <chr [1… 2019-05-…
##  7 00481… Here’… "Netflix\n… http… Jessi… http… en       <chr [1… 2019-05-…
##  8 9d5fd… New Z… Prime mini… http… newsc… None  en       <chr [1… 2019-05-…
##  9 9d5fd… New Z… Prime mini… http… newsc… None  en       <chr [1… 2019-05-…
## 10 4fa3f… Sea c… Sea squirt… http… newsc… None  en       <chr [1… 2019-05-…
## # … with 75 more rows
```

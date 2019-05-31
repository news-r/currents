<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/currents.svg?branch=master)](https://travis-ci.org/news-r/currents)
<!-- badges: end -->

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

Then use `latest_news` or `search_news`.

```r
search_news(keyword = "Trump", country = "US")
#> # A tibble: 58 x 9
#>    id     title  description url   author image language category published
#>    <chr>  <chr>  <chr>       <chr> <chr>  <chr> <chr>    <list>   <chr>    
#>  1 b478d… EXPLA… "LUSAKA/LO… http… reute… None  en       <chr [1… 2019-05-…
#>  2 b478d… EXPLA… "LUSAKA/LO… http… reute… None  en       <chr [1… 2019-05-…
#>  3 257bb… Brazi… "Brazilian… http… reute… None  en       <chr [1… 2019-05-…
#>  4 257bb… Brazi… "Brazilian… http… reute… None  en       <chr [1… 2019-05-…
#>  5 237a1… Disab… With the s… http… Moham… None  en       <chr [1… 2019-05-…
#>  6 237a1… Disab… With the s… http… Moham… None  en       <chr [1… 2019-05-…
#>  7 f41ea… 20 Be… If you wan… http… Brend… http… en       <chr [1… 2019-05-…
#>  8 f41ea… 20 Be… If you wan… http… Brend… http… en       <chr [1… 2019-05-…
#>  9 f41ea… 20 Be… If you wan… http… Brend… http… en       <chr [1… 2019-05-…
#> 10 ce9aa… 5 Top… "Look up t… http… Marie… http… en       <chr [1… 2019-05-…
#> # … with 48 more rows
```

# currents

<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/currents.svg?branch=master)](https://travis-ci.org/news-r/currents)
<!-- badges: end -->

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
#> # A tibble: 77 x 9
#>    id     title  description url   author image language category published
#>    <chr>  <chr>  <chr>       <chr> <chr>  <chr> <chr>    <list>   <chr>    
#>  1 5b21b… Death… Wellcome C… http… Hetti… None  en       <chr [1… 2019-05-…
#>  2 5b21b… Death… Wellcome C… http… Hetti… None  en       <chr [1… 2019-05-…
#>  3 5b21b… Death… Wellcome C… http… Hetti… None  en       <chr [1… 2019-05-…
#>  4 3dd9d… Asus … If you’ve … http… Andy … None  en       <chr [1… 2019-05-…
#>  5 9f4ed… Apple… As 5G and … http… Jerem… http… en       <chr [1… 2019-05-…
#>  6 9f4ed… Apple… As 5G and … http… Jerem… http… en       <chr [1… 2019-05-…
#>  7 6d765… Uber … Ride-haili… http… apple… None  en       <chr [1… 2019-05-…
#>  8 6d765… Uber … Ride-haili… http… apple… None  en       <chr [1… 2019-05-…
#>  9 06721… WWDC … This week … http… apple… None  en       <chr [1… 2019-05-…
#> 10 06721… WWDC … This week … http… apple… None  en       <chr [1… 2019-05-…
#> # … with 67 more rows
```

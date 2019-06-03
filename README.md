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

currents_key("xXxxXXXxXXxXxx")
```

Then use `cur_latest` or `cur_search`.


```r
cur_search(keyword = "Trump", country = "US")
```

```
## # A tibble: 65 x 9
##    id     title  description url   author image language category published
##    <chr>  <chr>  <chr>       <chr> <chr>  <chr> <chr>    <list>   <chr>    
##  1 1897d… Horse… A horse ra… http… David… None  en       <chr [1… 2019-06-…
##  2 59811… 6 way… Democrats … http… Jill … http… en       <chr [1… 2019-06-…
##  3 aadd8… Thous… Thousands … http… USA T… http… en       <chr [1… 2019-06-…
##  4 85c74… 95-ye… We're a ba… http… Kamro… http… en       <chr [1… 2019-06-…
##  5 29188… Kirst… During a l… http… Linh … http… en       <chr [1… 2019-06-…
##  6 68e68… Forme… Attorney f… http… Brent… http… en       <chr [1… 2019-06-…
##  7 07505… Virgi… 12 people … http… Ryan … http… en       <chr [1… 2019-06-…
##  8 b3ae1… Queen… As she has… http… Maria… http… en       <chr [1… 2019-06-…
##  9 276f1… These… The crypto… http… Matth… None  en       <chr [1… 2019-06-…
## 10 02a41… ‘Cryp… Self-profe… http… David… None  en       <chr [1… 2019-06-…
## # … with 55 more rows
```

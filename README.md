
<!-- badges: start -->

[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/news-r/currents?branch=master&svg=true)](https://ci.appveyor.com/project/news-r/currents)
[![Build
Status](https://travis-ci.org/news-r/currents.svg?branch=master)](https://travis-ci.org/news-r/currents)
<!-- badges: end -->

# currents

Integrates the [currents API](https://currentsapi.services/) with R.

## Installation

``` r
# install.packages("remotes")
remotes::install_github("news-r/currents")
```

## Example

Specify you API key with `currents_key` or put it in your `.Renviron` as
`CURRENTS_API_KEY`.

``` r
library(currents)

currents_key("xXxxXXXxXXxXxx")
```

Then use `cur_latest` or `cur_search`.

``` r
currents::cur_search(keyword = "Donald Trump", language = "en")
```

    ## # A tibble: 54 x 9
    ##    id            title                 description                                         url                                author                 image language category published   
    ##    <chr>         <chr>                 <chr>                                               <chr>                              <chr>                  <chr> <chr>    <chr>    <chr>       
    ##  1 7c90b1fe-9bc… Going with the Flow   "An organization consists of two worlds. The real … http://queue.acm.org/detail.cfm?i… Peter De Jong          None  en       research 2020-02-23 …
    ##  2 b17c7be0-319… People and Process    "When Mike Hammer and I published Reengineering th… http://queue.acm.org/detail.cfm?i… James Champy           None  en       research 2020-02-23 …
    ##  3 9f502de3-9c9… Best Practice (BPM)   "Just as BPM (business process management) technol… http://queue.acm.org/detail.cfm?i… Derek Miers            None  en       research 2020-02-23 …
    ##  4 17489c4d-52c… Getting What You Mea… "Software metrics - helpful tools or a waste of ti… http://queue.acm.org/detail.cfm?i… Eric Bouwers, Joost V… None  en       research 2020-02-23 …
    ##  5 2ea7ea35-038… The IDAR Graph        "UML is the de facto standard for representing obj… http://queue.acm.org/detail.cfm?i… Mark A. Overton        None  en       research 2020-02-23 …
    ##  6 d6866eca-0e6… CodeFlow: Improving … "Delivering a new set of capabilities for managing… http://queue.acm.org/detail.cfm?i… Jacek Czerwonka, Mich… None  en       research 2020-02-23 …
    ##  7 de8bb3fb-c4e… Signing Up With Amaz… "Long-time Slashdot reader DogDude shared this art… http://rss.slashdot.org/~r/Slashd… help                   None  en       technol… 2020-02-23 …
    ##  8 de8bb3fb-c4e… Signing Up With Amaz… "Long-time Slashdot reader DogDude shared this art… http://rss.slashdot.org/~r/Slashd… help                   None  en       game     2020-02-23 …
    ##  9 f14564b4-2c3… How Peloton Bricked … "DevNull127 writes: Let me get this straight. Pelo… http://rss.slashdot.org/~r/Slashd… help                   None  en       technol… 2020-02-23 …
    ## 10 f14564b4-2c3… How Peloton Bricked … "DevNull127 writes: Let me get this straight. Pelo… http://rss.slashdot.org/~r/Slashd… help                   None  en       game     2020-02-23 …
    ## # … with 44 more rows

You can also filter results by region, country or language.

``` r
currents::cur_avail_categories()
```

    ## # A tibble: 46 x 1
    ##    categories   
    ##    <chr>        
    ##  1 regional     
    ##  2 technology   
    ##  3 lifestyle    
    ##  4 business     
    ##  5 general      
    ##  6 programming  
    ##  7 science      
    ##  8 entertainment
    ##  9 world        
    ## 10 sports       
    ## # … with 36 more rows

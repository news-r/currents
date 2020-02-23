
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

    ## # A tibble: 30 x 9
    ##    id             title               description                                                 url                    author image                     language category published    
    ##    <chr>          <chr>               <chr>                                                       <chr>                  <chr>  <chr>                     <chr>    <list>   <chr>        
    ##  1 3fbfeeb8-e16a… Ripping Sprites Fr… Anyone remember that game? I do. In fact, just looking at … https://gpfault.net/p… gpfau… https://gpfault.net/asse… en       <chr [1… 2020-02-23 1…
    ##  2 1e1cd5dc-c70b… Intrusive Lists in… Doom 3 was released in 2004, which I can't believe was a d… https://gpfault.net/p… gpfau… https://gpfault.net/asse… en       <chr [1… 2020-02-23 1…
    ##  3 927e6fab-dcb1… You Can Stop Writi… There's a certain thing that you have probably done at lea… https://gpfault.net/p… gpfau… https://gpfault.net/asse… en       <chr [1… 2020-02-23 1…
    ##  4 455f0c34-5216… Mapping Types to V… The idea of a type map is quite simple. It's similar to a … https://gpfault.net/p… gpfau… None                      en       <chr [1… 2020-02-23 1…
    ##  5 c70a6d0f-f2f8… Dependency Injecti… A few days ago I was reading up on variadic templates and … https://gpfault.net/p… gpfau… None                      en       <chr [1… 2020-02-23 1…
    ##  6 ca53ca90-86de… My Most Important … In online forums, I often see questions from people new to… https://gpfault.net/p… gpfau… None                      en       <chr [1… 2020-02-23 1…
    ##  7 bc0cbdb1-7f1d… Rendering the Mand… Do you like this picture? Want to know how to generate ima… https://gpfault.net/p… gpfau… https://gpfault.net/asse… en       <chr [1… 2020-02-23 1…
    ##  8 8582fed1-c9ac… Using Perlin Noise… This post is going to be the Perlin noise tutorial that I'… https://gpfault.net/p… gpfau… https://gpfault.net/asse… en       <chr [1… 2020-02-23 1…
    ##  9 fed1ca7a-95e0… In Praise of Drop-… As I grow older, grumpier and lazier, my level of toleranc… https://gpfault.net/p… gpfau… None                      en       <chr [1… 2020-02-23 1…
    ## 10 e76e00a8-09ce… What Does Perlin N… In one of the previous posts, we discussed how to use Perl… https://gpfault.net/p… gpfau… https://gpfault.net/asse… de       <chr [1… 2020-02-23 1…
    ## # … with 20 more rows

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

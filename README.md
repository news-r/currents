
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
currents::cur_search(keyword = "Donald Trump")
```

    ## # A tibble: 33 x 9
    ##    id          title                         description                               url                     author   image                               language category published  
    ##    <chr>       <chr>                         <chr>                                     <chr>                   <chr>    <chr>                               <chr>    <list>   <chr>      
    ##  1 9ad2ae34-0… BORUTO: NARUTO NEXT GENERATI… "Boruto and Mitsuki worry that their mis… https://www.crunchyrol… crunchy… https://img1.ak.crunchyroll.com/i/… en       <chr [1… 2020-02-23…
    ##  2 9ad2ae34-0… BORUTO: NARUTO NEXT GENERATI… "Boruto and Mitsuki worry that their mis… https://www.crunchyrol… crunchy… https://img1.ak.crunchyroll.com/i/… en       <chr [1… 2020-02-23…
    ##  3 2ba16ab5-f… Raf Simons Becomes Co-Creati… "The move, which could reshape the fashi… https://www.nytimes.co… Vanessa… https://static01.nyt.com/images/20… en       <chr [1… 2020-02-23…
    ##  4 e52478f6-6… On the Money: Presidential P… "Kehinde Wiley's pre-presidential works … https://reason.com/202… Crispin… https://reason.com/wp-content/uplo… en       <chr [1… 2020-02-23…
    ##  5 16447fe1-7… Today in Supreme Court Histo… "2/23/1905: Lochner v. New York argued."  https://reason.com/202… Josh Bl… None                                en       <chr [1… 2020-02-23…
    ##  6 60c33d8f-0… In Mexico's Guerrero state, … "Chilapa de Alvarez is one of the most l… https://www.latimes.co… @Pmcdon… https://ca-times.brightspotcdn.com… en       <chr [1… 2020-02-23…
    ##  7 60c33d8f-0… In Mexico's Guerrero state, … "Chilapa de Alvarez is one of the most l… https://www.latimes.co… @Pmcdon… https://ca-times.brightspotcdn.com… en       <chr [1… 2020-02-23…
    ##  8 14c699d0-4… Don't shame binge-watchers –… "The poet comes clean on his small-scree… https://www.telegraph.… Don Pat… https://www.telegraph.co.uk/conten… en       <chr [1… 2020-02-23…
    ##  9 4eba34a1-9… Iran says 43 infected with c… "DUBAI, Feb 23 —&nbsp;Iran&nbsp;has conf… https://www.malaymail.… @malaym… https://media.malaymail.com/resize… en       <chr [1… 2020-02-23…
    ## 10 d3dfc3d5-c… NAACP Image Awards: Lizzo Na… "The 51st NAACP Image Awards were handed… https://deadline.com/2… @DinoRay https://pmcdeadline2.files.wordpre… en       <chr [1… 2020-02-23…
    ## # … with 23 more rows

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

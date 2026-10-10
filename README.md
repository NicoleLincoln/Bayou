
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src="STAT-306-Logo.png" width="600px" style="display: block; margin: auto;" />

# Welcome To The Bayou!

<!-- badges: start -->

<!-- badges: end -->

The name of this package is “Bayou”. Now you may be wondering why
someone would name a package like that. This Package has been built
around my favorite movie, The Princess and the Frog. This movie is very
near and dear to my heart, and even though I am getting older, the movie
still holds the number 1 spot for my favorite movie. One of the main
messages from the movie is that hard work and hope are not mutually
exclusive. You need both hand-in-hand to work together in order to
achieve something that you really want in your heart.

## Installation

You can install the development version of Bayou from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("NicoleLincoln/Bayou")
```

## Accessibility:

The theme of this package consists mainly of very Earthy colors, a lot
of greens, neutrals, and blues, all of which align with the overall
color palette of the movie. These colors are very saturated and pass the
color contrast test so people can differentiate between them. The font
for the theme is also a Serif font, so it is easier for people to read,
for those who may have reading difficulties, at an adequate size for
trading purposes. Having knowledge of accessibility is important in
terms of data science because we want our visualization to be readable
to as many people as we can to help people learn from the
information/messages that we have uncovered.

## Helper Function:

Now, I am in a Biology lab where we research Fireflies. While we are
collecting fireflies, we have a very specific way of documenting our
fireflies/. We give them an identification number, write down the
collection time, mass, temperature, and humidity levels. However, one
thing that we use is a metric called season day. Essentially, the first
time we see a firefly and collect it is considered day one. So, this
gave me the idea: what if there was a function that automatically
arranged a data set in ascending order and assigned the number 1 to the
number of total rows in the data set. This would allow us to assign an
ordered value associated with a specific individual. Having individuals
associated with their ordered value can allow us to make visualizations
that have a new ordered value a possible x or y variable.

## Example

This is a basic example of how to use the Helper Function. Please refer
to the vignette titled ’BayouDataMoves’to learn more bout what this
does:

``` r
library(Bayou)
#> Loading required package: tidyverse
#> Warning: package 'tidyverse' was built under R version 4.5.3
#> Warning: package 'tidyr' was built under R version 4.5.3
#> Warning: package 'readr' was built under R version 4.5.1
#> Warning: package 'forcats' was built under R version 4.5.3
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.4     ✔ readr     2.1.5
#> ✔ forcats   1.0.1     ✔ stringr   1.5.1
#> ✔ ggplot2   3.5.2     ✔ tibble    3.2.1
#> ✔ lubridate 1.9.4     ✔ tidyr     1.3.2
#> ✔ purrr     1.0.4
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

castle <- readr::read_csv(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/refs/heads/main/data/2026/2026-09-01/world_castles.csv",
  n_max = 10,
  show_col_types = FALSE
)
Trumpets(castle, "year")
#>        qid                  name category country    iso      lat       lon
#> 1   Q12501   Great Wall of China fortress   China     CN 40.43139 116.56444
#> 2  Q131013   Acropolis of Athens fortress  Greece     GR 37.97167  23.72611
#> 3 Q1143049 Château de Montsoreau   castle  France     FR 47.21560   0.06220
#> 4   Q62378       Tower of London   castle England GB-ENG 51.50820  -0.07620
#> 5   Q47476              Alhambra   palace   Spain     ES 37.17634  -3.58821
#> 6   Q80290        Forbidden City   palace   China     CN 39.91583 116.39083
#>   year year_approx        century
#> 1 -700           0 7th century BC
#> 2 -500           0 5th century BC
#> 3  990           0   10th century
#> 4 1066           0   11th century
#> 5 1239           0   13th century
#> 6 1420           0   15th century
#>                                                  wikipedia
#> 1        https://en.wikipedia.org/wiki/Great_Wall_of_China
#> 2        https://en.wikipedia.org/wiki/Acropolis_of_Athens
#> 3 https://en.wikipedia.org/wiki/Ch%C3%A2teau_de_Montsoreau
#> 4            https://en.wikipedia.org/wiki/Tower_of_London
#> 5                   https://en.wikipedia.org/wiki/Alhambra
#> 6             https://en.wikipedia.org/wiki/Forbidden_City
#>                                                                                                                                                       image
#> 1                                https://commons.wikimedia.org/wiki/Special:FilePath/The%20Great%20Wall%20of%20China%20at%20Jinshanling-edit.jpg?width=1280
#> 2        https://commons.wikimedia.org/wiki/Special:FilePath/Attica%2006-13%20Athens%2050%20View%20from%20Philopappos%20-%20Acropolis%20Hill.jpg?width=1280
#> 3 https://commons.wikimedia.org/wiki/Special:FilePath/Chateau%20de%20Montsoreau%20Museum%20of%20contemporary%20art%20Loire%20Valley%20France.jpg?width=1280
#> 4                             https://commons.wikimedia.org/wiki/Special:FilePath/Tower%20of%20London%20viewed%20from%20the%20River%20Thames.jpg?width=1280
#> 5                                                                      https://commons.wikimedia.org/wiki/Special:FilePath/Alhambra%20detail.jpg?width=1280
#> 6                                   https://commons.wikimedia.org/wiki/Special:FilePath/Hall%20of%20Supreme%20Harmony%20%2820241127120000%29.jpg?width=1280
#>   sitelinks pageviews fame_rank order-id
#> 1       192   1441865         1        1
#> 2        96    542385         6        2
#> 3       100     11059       430        3
#> 4        88    665273         8        4
#> 5        95    576475         7        5
#> 6       104    666289         3        6
```

# Theme:

The theme of this Package includes a combination of our accessibility
principles and customization colors. I designed the theme to be as
customization as possible, but still keeping a rather minimalist look
with some pops of color. I think for a lot of data visualizations, the
addition of too many add-ons and possibly even data points can make the
visualization look too cluttered and make the visualization harder to
read. This is the opposite of what we want from a visualization. You
want your data to speak for itself, for your readers to be able to
understand the message that you are trying to put forth. So I wanted to
create a theme that makes the visualization minimalist, but still have
some visual appeal.

## Vignette:

I have created two different vignettes for this package to explain in
detail two different sections of my package. The first one is labeled
‘BayouDataMoves’. This vignette explains in detail different data moves
that can be performed on an example data set named ‘castle’. This
vignette also includes an example of the use of my helper function. It
is important to read in detail what these data moves and the helper
function do because it can make the data exploration process easier. I
chose to include this because these data moves have been really helpful
to me when learning how to explore different data sets to understand
patterns and answer certain questions. The second vignette is named
‘Theme_Evangeline’; this goes into detail about the background of the
theme and how I found it to be useful for myself and how I think it
could possibly help others in their data communication process.

## Colors

I have created multiple different color combinations for people to use
to add to the theme. They all surround the theme of The Princess and the
Frog while all keeping neutral colors with some hints of yellow and
purple. Please run the color combinations before creating any
visualizations so that when you scale-fill or scale-color, they are
already loaded into the environment. I wanted people to have the
opportunity to choose which combination they wanted to use because there
is not one single color combination that represents The Princess and the
Frog, but it could be multiple.

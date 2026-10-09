
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src="STAT-306-Logo.png" width="600px" style="display: block; margin: auto;" />
\# Bayou

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

# Accessibility:

    The theme of this package consists mainly of very Earthy colors, a lot of greens, neutrals, and blues, all of which align with the overall color palette of the movie. These colors are very saturated and pass the color contrast test so people can differentiate between them. The font for the theme is also a Serif font, so it is easier for people to read, for those who may have reading difficulties, at an adequate size for trading purposes. Having knowledge of accessibility is important in terms of data science because we want our visualization to be readable to as many people as we can to help people learn from the information/messages that we have uncovered. 

# Helper Function:

    Now, I am in a Biology lab where we research Fireflies. While we are collecting fireflies, we have a very specific way of documenting our fireflies/. We give them an identification number, write down the collection time, mass, temperature, and humidity levels. However, one thing that we use is a metric called season day. Essentially, the first time we see a firefly and collect it is considered day one. So, this gave me the idea: what if there was a function that automatically arranged a data set in ascending order and assigned the number 1 to the number of total rows in the data set. This would allow us to assign an ordered value associated with a specific individual. 

## Example

This is a basic example of how to use the Helper Function. Please refer
to the vignette titled ’BayouDataMoves’to learn more bout what this
does:

``` r
library(Bayou)

library(tidyverse) 
castle <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/refs/heads/main/data/2026/2026-09-01/world_castles.csv")
#> Rows: 5793 Columns: 15
#> ── Column specification ─────────────────────────────────────────────
#> Delimiter: ","
#> chr (8): qid, name, category, country, iso, century, wikipedia, i...
#> dbl (7): lat, lon, year, year_approx, sitelinks, pageviews, fame_...
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

Trumpets(castle, "year")
#>           qid                   name category                country
#> 1     Q546166                  Aniba fortress                  Egypt
#> 2    Q1887409   Royal Palace of Mari   palace                  Syria
#> 3    Q2047396       Palace of Nestor     ruin                 Greece
#> 4    Q3562537           Dymaean Wall     ruin                 Greece
#> 5   Q16364478       Avranlo Fortress     ruin                Georgia
#> 6   Q97616842                Carteia   castle                  Spain
#> 7    Q1144137         Kirkuk Citadel     ruin                   Iraq
#> 8    Q1521987         Ghumdan Palace     ruin                  Yemen
#> 9     Q733610       Erebuni Fortress     ruin                Armenia
#> 10     Q12501    Great Wall of China fortress                  China
#> 11    Q420810            Acrocorinth   castle                 Greece
#> 12  Q20472767            Foça Castle   castle                 Turkey
#> 13  Q20474885    Diyarbakır Fortress fortress                 Turkey
#> 14    Q131013    Acropolis of Athens fortress                 Greece
#> 15     Q43277            Bam Citadel fortress                   Iran
#> 16   Q3557443    Acropolis of Rhodes   castle                 Greece
#> 17   Q2131024           Ranikot Fort fortress               Pakistan
#> 18    Q522867       Great Wall of Qi fortress                  China
#> 19   Q1049645       Yoshinogari site     ruin                  Japan
#> 20   Q6036823          Mardin Castle   castle                 Turkey
#> 21   Q1552834                  Phyle fortress                 Greece
#> 22  Q28657307         Garni Fortress fortress                Armenia
#> 23   Q4810717             Kadifekale   castle                 Turkey
#> 24  Q13564048      Khornabuji Castle     ruin                Georgia
#> 25   Q6545509            Tarq Castle   castle                   Iran
#> 26    Q636780 Castle of Saint George   castle               Portugal
#> 27   Q6041896         Giresun Castle   castle                 Turkey
#> 28   Q1177765         Tower of David fortress                 Israel
#> 29    Q909541               Yangguan fortress                  China
#> 30  Q17029168           Suoyang City     ruin                  China
#> 31   Q1549278              Machaerus     ruin                 Jordan
#> 32   Q1526659 Roman Theatre of Cádiz     ruin                  Spain
#> 33    Q186312                 Masada     ruin                 Israel
#> 34    Q570515       Antonia Fortress     ruin                 Israel
#> 35   Q6099157           Tokat Castle   castle                 Turkey
#> 36  Q38283760       Nafpaktos castle   castle                 Greece
#> 37  Q13090402       Samobor Fortress fortress Bosnia and Herzegovina
#> 38   Q6044520           Maraş Castle   castle                 Turkey
#> 39    Q622438            Domus Aurea     ruin                  Italy
#> 40    Q908472        Domus Augustana   palace                  Italy
#> 41   Q1409017      Belgrade Fortress fortress                 Serbia
#> 42   Q5049812     Castelo de Palmela   castle               Portugal
#> 43    Q486382     Castel Sant'Angelo   castle                  Italy
#> 44   Q1550186          Sikandar Bagh   palace                  India
#> 45  Q16304373     Chulachomklao Fort fortress               Thailand
#> 46   Q6757995              Tong Pass     ruin                  China
#> 47 Q100332243             Kyzyl-Kala fortress             Uzbekistan
#> 48   Q5883686         Bar Bar Castle   castle                   Iran
#> 49    Q558514         Qal'eh Dokhtar   castle                   Iran
#> 50     Q32434     Palace of Ardashir   palace                   Iran
#> 51   Q6104716         Kayseri Castle   castle                 Turkey
#> 52    Q322287    Diocletian's Palace   palace                Croatia
#> 53   Q2421968       Babylon Fortress fortress                  Egypt
#> 54   Q1408849        Askana Fortress fortress                Georgia
#> 55  Q28806346        Zerzevan Castle     ruin                 Turkey
#> 56  Q16365061         Ardanuç Castle   castle                 Turkey
#> 57    Q897898                Tongwan     ruin                  China
#> 58   Q1997570    Palace of Antiochos   palace                 Turkey
#> 59    Q367781         Rudkhan Castle   castle                   Iran
#> 60   Q3497343         Falak-ol-Aflak   castle                   Iran
#> 61   Q5899477       Izadkhast Castle   castle                   Iran
#> 62   Q1003322       Boukoleon Palace   palace                 Turkey
#>    iso      lat       lon  year year_approx         century
#> 1   EG 22.73056  32.00306 -3000           1 30th century BC
#> 2   SY 34.55140  40.88847 -1799           0 18th century BC
#> 3   GR 37.02722  21.69500 -1300           0 13th century BC
#> 4   GR 38.15653  21.40285 -1300           1 13th century BC
#> 5   GE 41.66249  43.88405 -1000           0 10th century BC
#> 6   ES 36.18556  -5.41222  -939           0 10th century BC
#> 7   IQ 35.46972  44.39583  -800           0  8th century BC
#> 8   YE 15.35301  44.21442  -800           0  8th century BC
#> 9   AM 40.14065  44.53795  -781           0  8th century BC
#> 10  CN 40.43139 116.56444  -700           0  7th century BC
#> 11  GR 37.89142  22.87092  -700           0  7th century BC
#> 12  TR 38.66922  26.75082  -590           0  6th century BC
#> 13  TR 37.91086  40.22728  -550           1  6th century BC
#> 14  GR 37.97167  23.72611  -500           0  5th century BC
#> 15  IR 29.11686  58.36848  -500           0  5th century BC
#> 16  GR 36.44020  28.21090  -450           1  5th century BC
#> 17  PK 25.88306  67.93222  -449           0  5th century BC
#> 18  CN 35.97007 120.07610  -441           0  5th century BC
#> 19  JP 33.32500 130.38400  -400           0  4th century BC
#> 20  TR 37.31544  40.73839  -350           1  4th century BC
#> 21  GR 38.14000  23.63694  -350           1  4th century BC
#> 22  AM 40.11299  44.73002  -300           0  3rd century BC
#> 23  TR 38.41389  27.14583  -250           1  3rd century BC
#> 24  GE 41.48646  46.13683  -250           1  3rd century BC
#> 25  IR 33.35269  51.80022  -247           0  3rd century BC
#> 26  PT 38.71389  -9.13333  -150           1  2nd century BC
#> 27  TR 40.92146  38.39183  -150           1  2nd century BC
#> 28  IL 31.77611  35.22778  -149           0  2nd century BC
#> 29  CN 39.92725  94.05904  -119           0  2nd century BC
#> 30  CN 40.24670  96.20270  -111           0  2nd century BC
#> 31  JO 31.56694  35.63361   -89           0  1st century BC
#> 32  ES 36.52843  -6.29357   -50           1  1st century BC
#> 33  IL 31.31556  35.35389   -37           1  1st century BC
#> 34  IL 31.78009  35.23430   -34           0  1st century BC
#> 35  TR 40.31750  36.54806     0           0     0th century
#> 36  GR 38.39633  21.82486     5           0     1st century
#> 37  BA 43.67134  19.11295    14           0     1st century
#> 38  TR 37.58639  36.92583    50           1     1st century
#> 39  IT 41.89139  12.49528    64           0     1st century
#> 40  IT 41.88770  12.48660    92           0     1st century
#> 41  RS 44.82360  20.45030   100           0     1st century
#> 42  PT 38.56562  -8.90168   106           0     2nd century
#> 43  IT 41.90304  12.46631   139           0     2nd century
#> 44  IN 26.86096  80.92544   150           0     2nd century
#> 45  TH 13.53761 100.58404   153           0     2nd century
#> 46  CN 34.60600 110.28600   196           0     2nd century
#> 47  UZ 41.93003  60.78411   200           1     2nd century
#> 48  IR 38.47655  47.86221   200           1     2nd century
#> 49  IR 28.92100  52.53014   209           0     3rd century
#> 50  IR 28.89806  52.53917   224           0     3rd century
#> 51  TR 38.72110  35.48880   238           0     3rd century
#> 52  HR 43.50806  16.43833   293           0     3rd century
#> 53  EG 30.00610  31.22970   300           1     3rd century
#> 54  GE 41.93199  42.17378   350           1     4th century
#> 55  TR 37.60833  40.49917   400           0     4th century
#> 56  TR 41.12670  42.05460   401           0     5th century
#> 57  CN 37.99876 108.84722   419           0     5th century
#> 58  TR 41.00740  28.97510   425           1     5th century
#> 59  IR 37.06444  49.23972   438           1     5th century
#> 60  IR 33.48379  48.35343   438           1     5th century
#> 61  IR 31.51278  52.12861   438           1     5th century
#> 62  TR 41.00250  28.97556   450           1     5th century
#>                                                                                                                    wikipedia
#> 1                                                                                https://en.wikipedia.org/wiki/Aniba_(Nubia)
#> 2                                                                         https://en.wikipedia.org/wiki/Royal_Palace_of_Mari
#> 3                                                                             https://en.wikipedia.org/wiki/Palace_of_Nestor
#> 4                                                                                 https://en.wikipedia.org/wiki/Dymaean_Wall
#> 5                                                                             https://en.wikipedia.org/wiki/Avranlo_fortress
#> 6                                                                                      https://en.wikipedia.org/wiki/Carteia
#> 7                                                                               https://en.wikipedia.org/wiki/Kirkuk_Citadel
#> 8                                                                               https://en.wikipedia.org/wiki/Ghumdan_Palace
#> 9                                                                             https://en.wikipedia.org/wiki/Erebuni_Fortress
#> 10                                                                         https://en.wikipedia.org/wiki/Great_Wall_of_China
#> 11                                                                                 https://en.wikipedia.org/wiki/Acrocorinth
#> 12                                                                            https://en.wikipedia.org/wiki/Fo%C3%A7a_Castle
#> 13                                                           https://en.wikipedia.org/wiki/Fortifications_of_Diyarbak%C4%B1r
#> 14                                                                         https://en.wikipedia.org/wiki/Acropolis_of_Athens
#> 15                                                                                   https://en.wikipedia.org/wiki/Arg-e_Bam
#> 16                                                                         https://en.wikipedia.org/wiki/Acropolis_of_Rhodes
#> 17                                                                                https://en.wikipedia.org/wiki/Ranikot_Fort
#> 18                                                                            https://en.wikipedia.org/wiki/Great_Wall_of_Qi
#> 19                                                                            https://en.wikipedia.org/wiki/Yoshinogari_site
#> 20                                                                               https://en.wikipedia.org/wiki/Mardin_Castle
#> 21                                                                             https://de.wikipedia.org/wiki/Phyle_(Festung)
#> 22             https://ru.wikipedia.org/wiki/%D0%9A%D1%80%D0%B5%D0%BF%D0%BE%D1%81%D1%82%D1%8C_%D0%93%D0%B0%D1%80%D0%BD%D0%B8
#> 23                                                                                  https://en.wikipedia.org/wiki/Kadifekale
#> 24                                                                           https://en.wikipedia.org/wiki/Khornabuji_Castle
#> 25                                                                                 https://en.wikipedia.org/wiki/Tarq_Castle
#> 26                                                                       https://en.wikipedia.org/wiki/S%C3%A3o_Jorge_Castle
#> 27                                                                              https://en.wikipedia.org/wiki/Giresun_Castle
#> 28                                                                              https://en.wikipedia.org/wiki/Tower_of_David
#> 29                                                                                   https://en.wikipedia.org/wiki/Yang_Pass
#> 30                                                                                https://en.wikipedia.org/wiki/Suoyang_City
#> 31                                                                                   https://en.wikipedia.org/wiki/Machaerus
#> 32                                                                  https://en.wikipedia.org/wiki/Roman_Theatre_(C%C3%A1diz)
#> 33                                                                                      https://en.wikipedia.org/wiki/Masada
#> 34                                                                            https://en.wikipedia.org/wiki/Antonia_Fortress
#> 35                                                                                https://en.wikipedia.org/wiki/Tokat_Castle
#> 36 https://el.wikipedia.org/wiki/%CE%9A%CE%AC%CF%83%CF%84%CF%81%CE%BF_%CE%9D%CE%B1%CF%85%CF%80%CE%AC%CE%BA%CF%84%CE%BF%CF%85
#> 37                                                                            https://en.wikipedia.org/wiki/Samobor_Fortress
#> 38                                                                   https://en.wikipedia.org/wiki/Kahramanmara%C5%9F_Castle
#> 39                                                                                 https://en.wikipedia.org/wiki/Domus_Aurea
#> 40                                                                             https://en.wikipedia.org/wiki/Domus_Augustana
#> 41                                                                           https://en.wikipedia.org/wiki/Belgrade_Fortress
#> 42                                                                           https://en.wikipedia.org/wiki/Castle_of_Palmela
#> 43                                                                        https://en.wikipedia.org/wiki/Castel_Sant%27Angelo
#> 44                                                                               https://en.wikipedia.org/wiki/Sikandar_Bagh
#> 45                                                                          https://en.wikipedia.org/wiki/Chulachomklao_Fort
#> 46                                                                                   https://en.wikipedia.org/wiki/Tong_Pass
#> 47                                                                                  https://en.wikipedia.org/wiki/Kyzyl-Kala
#> 48                                                                              https://en.wikipedia.org/wiki/Bar_Bar_Castle
#> 49                                                                            https://en.wikipedia.org/wiki/Qal%27eh_Dokhtar
#> 50                                                                          https://en.wikipedia.org/wiki/Palace_of_Ardashir
#> 51                                                                              https://en.wikipedia.org/wiki/Kayseri_Castle
#> 52                                                                       https://en.wikipedia.org/wiki/Diocletian%27s_Palace
#> 53                                                                            https://en.wikipedia.org/wiki/Babylon_Fortress
#> 54                                                                              https://de.wikipedia.org/wiki/Festung_Askana
#> 55                                                                             https://en.wikipedia.org/wiki/Zerzevan_Castle
#> 56                                                                         https://tr.wikipedia.org/wiki/Ardanu%C3%A7_Kalesi
#> 57                                                                                https://en.wikipedia.org/wiki/Tongwancheng
#> 58                                                                         https://en.wikipedia.org/wiki/Palace_of_Antiochos
#> 59                                                                              https://en.wikipedia.org/wiki/Rudkhan_Castle
#> 60                                                                              https://en.wikipedia.org/wiki/Falak-ol-Aflak
#> 61                                                                           https://en.wikipedia.org/wiki/Izad-Khast_Castle
#> 62                                                                            https://en.wikipedia.org/wiki/Boukoleon_Palace
#>                                                                                                                                                                                                                                                                     image
#> 1                                                                                                                                                                             https://commons.wikimedia.org/wiki/Special:FilePath/Grab%20des%20Pennut%2018.jpg?width=1280
#> 2                                                                                                                                                                            https://commons.wikimedia.org/wiki/Special:FilePath/Mari-Zimri%20Lim%20Palace.jpg?width=1280
#> 3                                                                                                                                                                      https://commons.wikimedia.org/wiki/Special:FilePath/20190508%20088%20pylos%20nestor.jpg?width=1280
#> 4                                                                                                                                                                  https://commons.wikimedia.org/wiki/Special:FilePath/Teichos%20Dymaion%20northern%20wall.jpg?width=1280
#> 5  https://commons.wikimedia.org/wiki/Special:FilePath/%E1%83%90%E1%83%95%E1%83%A0%E1%83%90%E1%83%9C%E1%83%9A%E1%83%9D%E1%83%A1%20%E1%83%AA%E1%83%98%E1%83%99%E1%83%9A%E1%83%9D%E1%83%9E%E1%83%A3%E1%83%A0%E1%83%98%20%E1%83%AA%E1%83%98%E1%83%AE%E1%83%94.jpg?width=1280
#> 6                                                                                                                                                                             https://commons.wikimedia.org/wiki/Special:FilePath/Carteia%20Foro%20%288%29.jpg?width=1280
#> 7                                                                                                                                                                                     https://commons.wikimedia.org/wiki/Special:FilePath/Kirkuk%20citadel.jpg?width=1280
#> 8                                                                                                                                                                                          https://commons.wikimedia.org/wiki/Special:FilePath/Old%20sanaa.jpg?width=1280
#> 9                                                                                                                                                                                              https://commons.wikimedia.org/wiki/Special:FilePath/Erebuni.jpg?width=1280
#> 10                                                                                                                                             https://commons.wikimedia.org/wiki/Special:FilePath/The%20Great%20Wall%20of%20China%20at%20Jinshanling-edit.jpg?width=1280
#> 11                                                                                                                                                                                         https://commons.wikimedia.org/wiki/Special:FilePath/Acrocorinto.jpg?width=1280
#> 12                                                                                                                                                                           https://commons.wikimedia.org/wiki/Special:FilePath/Fo%C3%A7a%20Castle%206505.jpg?width=1280
#> 13                                                                                                                                                                   https://commons.wikimedia.org/wiki/Special:FilePath/Diyarbakr%20Western%20City%20Wall.JPG?width=1280
#> 14                                                                                                                     https://commons.wikimedia.org/wiki/Special:FilePath/Attica%2006-13%20Athens%2050%20View%20from%20Philopappos%20-%20Acropolis%20Hill.jpg?width=1280
#> 15                                                                                                                                                                            https://commons.wikimedia.org/wiki/Special:FilePath/Arge%20Bam%20Arad%20edit.jpg?width=1280
#> 16                                                                                                                                                                  https://commons.wikimedia.org/wiki/Special:FilePath/Acropolis%20of%20Rhodes%20overview.JPG?width=1280
#> 17                                                                                                                                                                                            https://commons.wikimedia.org/wiki/Special:FilePath/Ranikot6.JPG?width=1280
#> 18                                                                                                                                                             https://commons.wikimedia.org/wiki/Special:FilePath/Great%20wall%20of%20qi%202008%2007%2014.jpg?width=1280
#> 19                                                                                                                                                                          https://commons.wikimedia.org/wiki/Special:FilePath/Yoshinogari-iseki%20zenkei.JPG?width=1280
#> 20                                                                                                                                                                                  https://commons.wikimedia.org/wiki/Special:FilePath/Mardin%2C%20Turkey.JPG?width=1280
#> 21                                                                                                                                                                                               https://commons.wikimedia.org/wiki/Special:FilePath/Fili7.jpg?width=1280
#> 22                                                                                                                                                     https://commons.wikimedia.org/wiki/Special:FilePath/2014%20Prowincja%20Kotajk%2C%20Garni%2C%20Brama.jpg?width=1280
#> 23                                                                                                                                                            https://commons.wikimedia.org/wiki/Special:FilePath/Kadifekale%20IzmirTurkey%20EUnluBlogspot.jpg?width=1280
#> 24                                                                                                                                                                  https://commons.wikimedia.org/wiki/Special:FilePath/Khornabuji%20Fortress%2C%20Georgia.jpg?width=1280
#> 25                                                                                                                  https://commons.wikimedia.org/wiki/Special:FilePath/Iran%20-%20Natanz%20-%20Old%20Historical%20Castle%20in%20Targhroud%20-%20panoramio.jpg?width=1280
#> 26                                                                                                                                                  https://commons.wikimedia.org/wiki/Special:FilePath/Castelo%20de%20S%C3%A3o%20Jorge%20%284166049903%29.jpg?width=1280
#> 27                                                                                                                                                                          https://commons.wikimedia.org/wiki/Special:FilePath/G%C4%B0RESUN%20KALES%C4%B0.jpg?width=1280
#> 28                                                                                                                                                      https://commons.wikimedia.org/wiki/Special:FilePath/%D7%9E%D7%92%D7%93%D7%9C%20-%D7%93%D7%95%D7%93.jpg?width=1280
#> 29                                                                                                                                                                                            https://commons.wikimedia.org/wiki/Special:FilePath/Yangguan.jpg?width=1280
#> 30                                                                                                                                                                                 https://commons.wikimedia.org/wiki/Special:FilePath/Suoyang%20City%2004.jpg?width=1280
#> 31                                                                                                                                                                                https://commons.wikimedia.org/wiki/Special:FilePath/Machaerus%20Panorama.jpg?width=1280
#> 32                                                                                                                                               https://commons.wikimedia.org/wiki/Special:FilePath/Teatro%20Romano%20de%20C%C3%A1diz%20-%20Grader%C3%ADo.JPG?width=1280
#> 33                                                                                                                                                                      https://commons.wikimedia.org/wiki/Special:FilePath/Israel-2013-Aerial%2021-Masada.jpg?width=1280
#> 34                                                                                                                                                                                            https://commons.wikimedia.org/wiki/Special:FilePath/P8170045.JPG?width=1280
#> 35                                                                                                                                                                                      https://commons.wikimedia.org/wiki/Special:FilePath/Tokat%20Merkez.jpg?width=1280
#> 36                                                            https://commons.wikimedia.org/wiki/Special:FilePath/%CE%95%CE%B9%CF%83%CE%BF%CE%B4%CE%BF%CF%82-%CE%9A%CE%AC%CF%83%CF%84%CF%81%CE%BF%20%CE%9D%CE%B1%CF%85%CF%80%CE%AC%CE%BA%CF%84%CE%BF%CF%85.jpg?width=1280
#> 37                                                                                                                                                https://commons.wikimedia.org/wiki/Special:FilePath/Stari%20grad%20Samobor%2C%20Novo%20Gora%C5%BEde%2003.jpg?width=1280
#> 38                                                                                                                                                                                   https://commons.wikimedia.org/wiki/Special:FilePath/Maras%20Zitadelle.JPG?width=1280
#> 39                                                                                                                                                                              https://commons.wikimedia.org/wiki/Special:FilePath/Domus%20Aurea%20NEUTRA.png?width=1280
#> 40                                                                                                                                                                                 https://commons.wikimedia.org/wiki/Special:FilePath/Domus-augustana-map.png?width=1280
#> 41                                                                                                                                                                                   https://commons.wikimedia.org/wiki/Special:FilePath/Despotova%20kula6.jpg?width=1280
#> 42                                                                                                                                                                                      https://commons.wikimedia.org/wiki/Special:FilePath/PalmelaCastle1.jpg?width=1280
#> 43                                                                                                                                                                 https://commons.wikimedia.org/wiki/Special:FilePath/Castel%20Sant%27Angelo%20at%20Night.jpg?width=1280
#> 44                                                                                                                                                                                    https://commons.wikimedia.org/wiki/Special:FilePath/SikandarBaghGate.jpg?width=1280
#> 45                                                                                                                                                                           https://commons.wikimedia.org/wiki/Special:FilePath/Chulachomklao%20Fort%2003.jpg?width=1280
#> 46                                                                                                                                                       https://commons.wikimedia.org/wiki/Special:FilePath/202309%20Tongguan%20Ancient%20City%20Overview.jpg?width=1280
#> 47                                                                                                                                                    https://commons.wikimedia.org/wiki/Special:FilePath/Kyzyl-Kala%20under%20restoration%20%28cropped%29.jpg?width=1280
#> 48                                                                                                                                                                                 https://commons.wikimedia.org/wiki/Special:FilePath/Barbar%20Castle%203.jpg?width=1280
#> 49                                                                                                                                                                        https://commons.wikimedia.org/wiki/Special:FilePath/Herbertgreg7%20%28cropped%29.jpg?width=1280
#> 50                                                                                                                                                                                           https://commons.wikimedia.org/wiki/Special:FilePath/Firozahur.jpg?width=1280
#> 51                                                                                                                                                                        https://commons.wikimedia.org/wiki/Special:FilePath/Fortress%20of%20Kayseri%2001.jpg?width=1280
#> 52                                                                                                                                               https://commons.wikimedia.org/wiki/Special:FilePath/Diocletian%27s%20Palace%20%28original%20appearance%29.jpg?width=1280
#> 53                                                                                                                                                       https://commons.wikimedia.org/wiki/Special:FilePath/Cairo%20-%20Coptic%20area%20-%20Roman%20Tower.JPG?width=1280
#> 54                                                                                                                                            https://commons.wikimedia.org/wiki/Special:FilePath/Fridrich%20Dubois%20de%20Montpereux.%20Askani%20fortress.jpg?width=1280
#> 55                                                                                                                                                                          https://commons.wikimedia.org/wiki/Special:FilePath/Zerzevan%20Kalesi%20Kilise.jpg?width=1280
#> 56                                                                                                                                  https://commons.wikimedia.org/wiki/Special:FilePath/Castle%20of%20Ardanu%C3%A7%2C%20Province%20of%20Artvin%2C%20Turkey.jpg?width=1280
#> 57                                                                                                                                                                         https://commons.wikimedia.org/wiki/Special:FilePath/%E7%BB%9F%E4%B8%87%E5%9F%8E.JPG?width=1280
#> 58                                                                                                                                                                          https://commons.wikimedia.org/wiki/Special:FilePath/Sultanahmet%20Meydan%C4%B1.jpg?width=1280
#> 59                                                                                                                                                                            https://commons.wikimedia.org/wiki/Special:FilePath/Ghaleh-Rudkhan%20%287%29.jpg?width=1280
#> 60                                                                                                                                                                          https://commons.wikimedia.org/wiki/Special:FilePath/Falak%20ol%20aflak%20night.jpg?width=1280
#> 61                                                                                                                                  https://commons.wikimedia.org/wiki/Special:FilePath/Iran%20-%20Fars%20-%20Izadkhast%20%28Old%20Town%29%20-%20panoramio.jpg?width=1280
#> 62                                                                                                                                                                             https://commons.wikimedia.org/wiki/Special:FilePath/Bucoleon%20March%202008.JPG?width=1280
#>    sitelinks pageviews fame_rank order-id
#> 1         11      3506      1981        1
#> 2         10      8621      1711        2
#> 3         18     31091       527        3
#> 4          9       224      3688        4
#> 5         12       557      2882        5
#> 6         10      6649      1841        6
#> 7         15      6022      1242        7
#> 8         10     11514      1569        8
#> 9         41     15255       387        9
#> 10       192   1441865         1       10
#> 11        37     31938       231       11
#> 12         4       920      4488       12
#> 13        29      7803       711       13
#> 14        96    542385         6       14
#> 15        47     19312       294       15
#> 16        11     24694      1139       16
#> 17        25     26052       361       17
#> 18        10     14611      1479       18
#> 19        14      9000      1150       19
#> 20         7      2987      2966       20
#> 21         2         0      5613       21
#> 22         4         0      5384       22
#> 23        13      5175      1483       23
#> 24        10      1264      2772       24
#> 25         4       294      4936       25
#> 26        31     75893       161       26
#> 27         5      1463      4022       27
#> 28        34     89334       121       28
#> 29        14      3816      1540       29
#> 30         7      2047      3189       30
#> 31        25     34006       314       31
#> 32        10      4006      2110       32
#> 33        70    219200        20       33
#> 34        23     38612       326       34
#> 35         5      1970      3838       35
#> 36         3         0      5564       36
#> 37         7       192      4228       37
#> 38         3       497      4913       38
#> 39        37    108130        90       39
#> 40        16     12573       891       40
#> 41        32     41122       218       41
#> 42         5      2215      3762       42
#> 43        58    268941        19       43
#> 44         9      8709      1912       44
#> 45         3      1698      4252       45
#> 46        11      7603      1557       46
#> 47         8      8026      2172       47
#> 48         4       286      4944       48
#> 49        16      4262      1350       49
#> 50        23      7651       821       50
#> 51         6      3622      3193       51
#> 52        52    175894        41       52
#> 53        27     31644       295       53
#> 54         3         0      5453       54
#> 55        14      5568      1351       55
#> 56         4         0      5371       56
#> 57        11      4784      1811       57
#> 58        10      2787      2323       58
#> 59        16     11442       927       59
#> 60        14     12431      1031       60
#> 61         8      2267      2839       61
#> 62        26     23877       369       62
#>  [ reached 'max' / getOption("max.print") -- omitted 5731 rows ]
```

# Theme:

The theme of this Package includes a combination of our accessibility
principles and customizable colors. I designed the theme to be as
customizable as possible, but still keeping a rather minimalist look
with some pops of color. I think for a lot of data visualizations, the
addition of too many add-ons and possibly even data points can make the
visualization look too cluttered and make the visualization harder to
read. This is the opposite of what we want from a visualization. You
want your data to speak for itself, for your readers to be able to
understand the message that you are trying to put forth. So I wanted to
create a theme that makes the visualization minimalist, but still have
some visual appeal.

# Vignette:

    I have created two different vignettes for this package to explain in detail two different sections of my package. The first one is labeled ‘BayouDataMoves’. This vignette explains in detail different data moves that can be performed on an example data set named ‘castle’. This vignette also includes an example of the use of my helper function. It is important to read in detail what these data moves and the helper function do because it can make the data exploration process easier. I chose to include this because these data moves have been really helpful to me when learning how to explore different datasets to understand patterns and answer certain questions. The second vignette is named ‘Theme_Evangeline’; this goes into detail about the background of the theme and how I found it to be useful for myself and how I think it could possibly help others in their data communication process. 

# Colors

    I have created multiple different color combinations for people to use to add to the theme. They all surround the theme of The Princess and the Frog while all keeping neutral colors with some hints of yellow and purple. Please run the color combinations before creating any visualizations so that when you scale-fill or scale-color, they are already loaded into the environment. I wanted people to have the opportunity to choose which combination they wanted to use because there is not one single color combination that represents The Princess and the Frog, but it could be multiple. 

Shiny Application and Reproducible Pitch
========================================================
author: Wen Chen
date: August 30, 2017
autosize: true

Overview
========================================================
This R Markdown presentation is made interactive using Shiny for the course project: Shiny Application and Reproducible Pitch.

The Shiny application has been deployed on Rstudio's servers.  Rstudio Presenter has been used to create this reproducible pitch presentation.

The mtcars data set has been used for the aplication

Approach
========================================================
This application will be using mtcars dataset to allow user to see the result box plot that describes MPG (miles per gallon) by the selected the variables. The variables are Cylinders, Transmission, Weight(10000 lbs), Gross Horsepower, Qsec 1/4 mile time and 
Gear. The default is Cylinders.

By selecting the box color would reflect the boxplot color. The default color is blue.

By checking the radio button to view the outliner. The default is checked.

Shiny Application and Source code
========================================================
The shiny application can be fould at [Shiny Application ](http://wchen75.shinyapps.io/shiny_application_and_reproducible_pitch/).


The source code can be found at [GitHunb
](http://github.com/wchen75/Developing-Data-Products)

Data sample
========================================================


```
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

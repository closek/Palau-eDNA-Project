# Script for formulating color palette

# install "calecopal" color palette package
devtools::install_github("an-bui/calecopal")

library(calecopal) # calecopal: a California-inspired package of color palettes
library(scales) # helps display palettes in Rstudio

# list all palette names
names(cal_palettes)

# palettes in consideration 
# "kelp1" - similar yellow/blue to PICRC colors, more colors. n = 6 most similar to PICRC
# "figmtn" - similar blue to PICRC, but gets very blue heavy with > 6 values

# number of variables
var_n <- 6

# palette for report
report_pal <- cal_palette(name = "kelp1", n = var_n, type = "continuous")

# view palette
barplot(1:var_n, col = report_pal)

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
var_n <- 8

# palette for report
pal <- cal_palette(name = "sierra1", n = var_n, type = "continuous")

# view palette
barplot(1:var_n, col = pal)
show_col(pal)

# Build defined color palette
## For the 'Near_or_Offshore' variable
near_offshore_colors <- c(Nearshore = "#BD973D", Offshore = "#262E43")

## For the 'Zone' variable
zone_colors <- c(SHR = "#796C2E", LGN = "#4F6A46", FRR = "#3E807B", 
                 AFZ = "#528EBE", DFZ = "#51729A", NMS = "#414E66" )

# decided to not use right now - AM & CC 2023-10-12
# # remove red color from palette - not color blind friendly
# report_pal <- cal_palette(name = "kelp1", n = var_n, type = "continuous")[2:6]
# show_col(report_pal)
# barplot(1:5, col = report_pal)
# 
# # subsitute yellow and blue with PICRC logo colors
# report_pal_alt <- report_pal
# report_pal_alt[1] <- "#FFC52E"
# report_pal_alt[4] <- "#1BC5FC"
# 
# # visually inspect
# show_col(report_pal_alt)
# barplot(1:5, col = report_pal_alt)

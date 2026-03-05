# Created by R. Bock 2022
# This file creates colors scales and sets certain variables to unify the look of
# the data analysis for the ELS (early life stress) project.
# Each cohort or analysis specific qmd file should source this R script at the
# beginning.

# use the easypackages package to make loading easier
library(easypackages)
# load (and if necessary install) the required packages
packages("tidyverse", "patchwork", "anytime",
         "hms", "gt", "gtExtras")

# load the table specifications for the IntelliCage Tables
source(here("R", "ICTableSpecs.r"))

# set some common variables for a unified look of the graphs
# lickFactor <- 3 # value came from TSE
lickFactor <<- 1.94 # value came from publication by Kasia Radwanska (matches more our own attempt)
alcConc <<- 0.02    # alcohol concentration is 20%
rho <<- 0.97336     # density of 20% alcohol in water @ 25˚ C

bFont <<- "Helvetica"
bSize <<- 14

# initialize some color schemes to maintain consistent colors
genGroupCols <<- list()
crgb <- col2rgb("gray35")
genGroupCols[1] <- rgb(crgb[1,1], crgb[2,1], crgb[3,1], maxColorValue = 255)
crgb <- col2rgb("hotpink")
genGroupCols[2] <- rgb(crgb[1,1], crgb[2,1], crgb[3,1], maxColorValue = 255)
names(genGroupCols) <- c("Control", "LBN")

# colors for the groups
genGroupColorScale <<- scale_color_manual(name = "Group", values = genGroupCols)
genGroupFillScale <<- scale_fill_manual(name = "Group", values = genGroupCols)

sexColors <<- list()
crgb <- col2rgb("pink")
sexColors[1] <- rgb(crgb[1,1], crgb[2,1], crgb[3,1], maxColorValue = 255)
sexColors[2] <- rgb(crgb[1,1], crgb[2,1], crgb[3,1], maxColorValue = 255)
crgb <- col2rgb("skyblue")
sexColors[3] <- rgb(crgb[1,1], crgb[2,1], crgb[3,1], maxColorValue = 255)
sexColors[4] <- rgb(crgb[1,1], crgb[2,1], crgb[3,1], maxColorValue = 255)
names(sexColors) <- c("F", "Female", "M", "Male")

# colors for the sexes
sexColorScale <<- scale_color_manual(name = "sex", values = sexColors)
sexFillScale <<- scale_fill_manual(name = "sex", values = sexColors)

drinkColors <<- list()
crgb <- col2rgb("cadetblue1")
drinkColors[1] <- rgb(crgb[1,1], crgb[2,1], crgb[3,1], maxColorValue = 255)
crgb <- col2rgb("firebrick1")
drinkColors[2] <- rgb(crgb[1,1], crgb[2,1], crgb[3,1], maxColorValue = 255)
names(drinkColors) <- c("water", "alcohol")

# colors for the "drinks" (water and alcohol)
drinkColorScale <<- scale_color_manual(name = "drink", values = drinkColors)
drinkFillScale <<- scale_fill_manual(name = "drink", values = drinkColors)

remove(crgb)

## Coursera :: ExploratoryDataAnalysis :: CourseProject2 :: plot3.R
## ======================================================================== 
## (23rd October 2014)
## Author: Flic Anderson
##

## AIM:  load, analyse & plot the data to address the following questions/tasks 
## ....  (w/ 1 plot per question. Separate codefile per plot. Can use any 
## ....  plotting system unless specified in question, use any R package., need 
## ....  to save plots as .png)

## Q3).   Of the four types of sources indicated by the type (point, nonpoint,
## ....  onroad, nonroad) variable, which of these four sources have seen 
## ....  decreases in emissions from 1999-2008 for Baltimore City? Which have 
## ....  seen increases in emissions from 1999-2008? Use the ggplot2 plotting 
## ....  system to make a plot answer this question.

# set working directory
setwd("C:/Users/rbgeuser/Desktop/Flic_REMOVE/Rstats/Coursera_ExploratoryDataAnalysis/CourseProject2/data/")

# read in Source Classification Code Table (SCC):
  # provides a mapping from the SCC digit strings in the Emissions table to the 
  # actual name of the PM2.5 source
SCC <- readRDS("Source_Classification_Code.rds")
# 11717 obs. of 15 variables

# read in National Emissions Inventory (NEI)
  # contains a data frame w/ all PM2.5 emissions data for 1999, 2002, 2005 & 2008
NEI <- readRDS("summarySCC_PM25.rds")
# 6497651 obs. of 6 variables
# variables:
  # fips: A five-digit number (represented as a string) indicating the U.S. county
  # SCC: The name of the source as indicated by a digit string (see source code 
    # classification table)
  # Pollutant: A string indicating the pollutant
  # Emissions: Amount of PM2.5 emitted, in tons
  # type: The type of source (point, non-point, on-road, or non-road)
  # year: The year of emissions recorded

### key points: 
# ggplot2 plotting system
# Baltimore City, Maryland (fips == "24510") only
# from 1999 to 2008
# which source of type (point, nonpoint, onroad, nonroad) variable have seen:
  # decreases in emissions
  # increases in emissions 
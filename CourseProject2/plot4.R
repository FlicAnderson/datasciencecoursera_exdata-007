## Coursera :: ExploratoryDataAnalysis :: CourseProject2 :: plot4.R
## ======================================================================== 
## (23rd October 2014)
## Author: Flic Anderson
##

## AIM:  load, analyse & plot the data to address the following questions/tasks 
## ....  (w/ 1 plot per question. Separate codefile per plot. Can use any 
## ....  plotting system unless specified in question, use any R package., need 
## ....  to save plots as .png)

## Q4).  Across the United States, how have emissions from coal combustion-
## ....  related sources changed from 1999-2008?

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
# ANY plotting system
# ALL states (US)
# from 1999 to 2008
# coal combustion-related sources only 
# how emissions changed
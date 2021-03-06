## Coursera :: ExploratoryDataAnalysis :: CourseProject2 :: dataOperations.R
## ======================================================================== 
## (23rd October 2014)
## Author: Flic Anderson
##

## AIM:  load, analyse & plot the data to address the following questions/tasks 
## ....  (w/ 1 plot per question. Separate codefile per plot. Can use any 
## ....  plotting system unless specified in question, use any R package., need 
## ....  to save plots as .png)

## Q1).  Have total emissions from PM2.5 decreased in the United States from 
## ....  1999 to 2008? Using the base plotting system, make a plot showing total
## ....  PM2.5 emission from all sources for each of the years 1999, 2002, 2005, 
## ....  and 2008.

#source("plot1.R")

## Q2).  Have total emissions from PM2.5 decreased in the Baltimore City, 
## ....  Maryland (fips == "24510") from 1999 to 2008? Use the base plotting 
## ....  system to make a plot answering this question.

## Q3).   Of the four types of sources indicated by the type (point, nonpoint,
## ....  onroad, nonroad) variable, which of these four sources have seen 
## ....  decreases in emissions from 1999-2008 for Baltimore City? Which have 
## ....  seen increases in emissions from 1999-2008? Use the ggplot2 plotting 
## ....  system to make a plot answer this question.

## Q4).  Across the United States, how have emissions from coal combustion-
## ....  related sources changed from 1999-2008?

## Q5).  How have emissions from motor vehicle sources changed from 1999-2008
## ....  in Baltimore City?

## Q6).  Compare emissions from motor vehicle sources in Baltimore City with 
## ....  emissions from motor vehicle sources in Los Angeles County, California 
## ....  (fips == "06037"). Which city has seen greater changes over time in 
## ....  motor vehicle emissions?


# set working directory:


NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
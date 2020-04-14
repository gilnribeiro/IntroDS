library(readxl)
#install.packages("deSolve")
library(deSolve)
#install.packages("data.table")
library(data.table)
library(reshape2)
library(tidyverse)
library(plyr)
#install.packages("gmodels")
library(gmodels)
library(scales)
library(grid)
library(gridExtra)
#install.packages("captioner")
table_captions <- captioner::captioner(prefix="Table")
figure_captions <- captioner::captioner(prefix="Figure")

t.ref <- function(label){
  stringr::str_extract(table_captions(label), "[^:]*")
}

f.ref <- function(label){
  stringr::str_extract(figure_captions(label), "[^:]*")
}

#values =c( "#BCE1EE","#416AAE", "#EA5839", "#8FC3DD", "#FDBE70", "#FEE597", "#FFFFBF", "#E5F5EE","#A50026", "#CE2726", "#649AC7", "#F88D51", "#313695") 

path_windows<-"~/BackUp/GitHub/WorldBankData"
path_ubuntu<-"~/Documents/WorldBank"
path_server_NOVA<-"/home/eduardo/WorldBankData"
setwd(path_windows)

Data_Extract_From_World_Development_Indicators_OCDE <- read_excel("Data_Extract_From_World_Development_Indicators-OCDE-BRCH-EU.xlsx", 
                                                                  sheet = "Data")
head(Data_Extract_From_World_Development_Indicators_OCDE)

Countries_continents <- read_excel("Countries_continents.xlsx", 
                                   sheet = "continents")
##Generando una funcion que limpie la fecha
# returns string w/o leading or trailing whitespace
#################
trim <- function (x) gsub("^\\s+|\\s+$", "", x)
#################


lower_case<-function(x){
  str_replace_all(tolower(x),"/",' ')
}


left = function (string,char){
  substr(string,1,char)
}

right = function (string, char){
  substr(string,nchar(string)-(char-1),nchar(string))
}

tab_stata_fun<-function(z,x,y){
  with(z, CrossTable(x, y, missing.include=TRUE))
}



tab_stata_one<-function(z,x){
  temporal<-z%>%group_by(.dots = lazyeval::lazy(x))%>%summarise(Observations=n())
  View(temporal)
}

md<-reshape2::melt(Data_Extract_From_World_Development_Indicators_OCDE%>%select(-`Series Code`), id.vars = c("Country Name", "Country Code","Series Name"))

md$Time<-ts(left(as.character(md$variable),4))
md$value<-as.double(md$value)
md<-md[,c(1,2,3,6,5)]
md<-left_join(md,Countries_continents)
md<-arrange(md,`Country Code`,`Series Name`,Time)%>%arrange(desc(`Country Name`))  #%>%filter(!is.na(`Country Code`) | !is.na(`Series Name`))

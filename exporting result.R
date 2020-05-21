setwd("~/Desktop/data journalism/experiment/data analysis in R/result")

p1 <- read.csv("result-1.csv")
p2 <- read.csv("result-2.csv")
p3 <- read.csv("result-3.csv")
p4 <- read.csv("result-4.csv")
p5 <- read.csv("result-5.csv")
p6 <- read.csv("result-6.csv")
p7 <- read.csv("result-7.csv")
p8 <- read.csv("result-8.csv")
p9 <- read.csv("result-9.csv")
p10 <- read.csv("result-10.csv")
p11 <- read.csv("result-11.csv")
p12 <- read.csv("result-12.csv")
p13 <- read.csv("result-13.csv")
p14 <- read.csv("result-14.csv")
p15 <- read.csv("result-15.csv")
p16 <- read.csv("result-16.csv")
p17 <- read.csv("result-17.csv")
library(sqldf)
p<- sqldf("select * from p1 
          union all select * from p2 
          union all select * from p3
          union all select * from p4
          union all select * from p5
          union all select * from p6
          union all select * from p7
          union all select * from p8
          union all select * from p9
          union all select * from p10
          union all select * from p11
          union all select * from p12
          union all select * from p13
          union all select * from p14
          union all select * from p15
          union all select * from p16
          union all select * from p17
          ")    
bolzano3<- p
library(dplyr)
bolzano3 <- bolzano3 %>%
  filter(Stimulus == "bolzano-3.png")
bolzano3 <- bolzano3 %>%
  filter(tendency == "yes")

bolzano7 <- p
bolzano7 <- bolzano7 %>%
  filter(Stimulus == "bolzano-7.png")
bolzano7 <- bolzano7 %>%
  filter(tendency == "yes")
write.csv(bolzano7, file="bolzano7.csv") 


disease1 <- p
disease1 <- disease1 %>%
  filter(Stimulus == "diseases-1.png")
disease1 <- disease1 %>%
  filter(tendency == "yes")
write.csv(disease1, file="disease1.csv") 


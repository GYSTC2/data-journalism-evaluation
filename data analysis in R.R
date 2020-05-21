#设置路径
setwd("~/Desktop/data journalism/experiment/data analysis in R")
#读取眼动仪数据
eyetrack <- read.csv("rawdata.csv")
head(eyetrack)
#读取皮电数据
pidian1 <- read.csv("19-18-37.csv")
head(pidian1)
#筛选眼动仪中需要的列
library(sqldf)
eye <- sqldf('SELECT RoundTime, Participant, Stimulus, CategoryRight, 
                    PointofRegardRightX,PointofRegardRightY 
              FROM    eyetrack')
head(eye)
#合并两表
result <- sqldf('SELECT *
              FROM pidian1 INNER JOIN eye
              ON eye.RoundTime = pidian1.Time')
head(result)
#输出tendency为yes的数据，存入路径中的文件夹
library(dplyr)
result %>%
  filter(tendency == "yes")
write.csv(result, file="result-18.csv")  

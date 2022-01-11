#Hello World script!!

## Eine zweite Änderung!

hobo <- read.csv("~/02 UNI Master Hydro/1. Semester/04 Data Collection Storage and Management/0_Data_Raw/10347366.csv", skip = 1)

library(dygraphs, tidyverse, dplyr)

tempseries <- hobo %>% dplyr::select(dttm = Date.Time..GMT.01.00, temp = Temp..Â.C..LGR.S.N..10347366..SEN.S.N..10347366.)
tempseries$dttm <- as.POSIXct(tempseries$dttm, format = "%d/%m/%Y %H:%M:%S")

dygraph(tempseries)

setwd("~/Developing Data Product")
dat <-
        read.csv("Data/h1b_kaggle.csv",
                 header = T, sep = ',')

setDT(dat)[,c("X","lon","lat"):=NULL]


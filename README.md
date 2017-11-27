Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Diptam Dutta
date: 27/11/2017
autosize: true

Overview
========================================================

This project was built as a part for the course Developing Data Products. 

- The Application is deployed in shinnyapps LINK <https://diptamdutta.shinyapps.io/Visa-Application-Project>
- Source Code can be found in Github Repo <https://github.com/diptamdutta/DataProducts>
- Application Code can be viewed in Github <https://github.com/diptamdutta/DataProducts/tree/master/Application/Visa-Application-Project>

Application Description
=======================================================

This application is a analysis of H1B visas issued by US. Data Source is obtained from <https://www.kaggle.com>.  
For betterment of the analysis as well as performance we have extracted only the first 500 rows of the dataset.  

This application require you to choose the different sets of H1B validation status and based on that we can see how many of the application got approved etc.  

The result also contains a plot describes status of the application.

Source Description
========================================================
Showing summary of the data


```r
data <- read.csv("Application/Visa-Application-Project/data.csv",header = T, sep = ',')
summary(data)
```

```
       X                     CASE_STATUS  
 Min.   :   1   CERTIFIED          :8421  
 1st Qu.:2500   CERTIFIED-WITHDRAWN: 758  
 Median :5000   DENIED             : 400  
 Mean   :5000   WITHDRAWN          : 420  
 3rd Qu.:7500                             
 Max.   :9999                             
                                          
                                               EMPLOYER_NAME 
 CAPGEMINI FINANCIAL SERVICES USA INC                 : 114  
 AMAZON CORPORATE LLC                                 : 108  
 CAPGEMINI FINANCIAL SERVICES USA INC. (LEGACY KANBAY):  83  
 SYNTEL CONSULTING INC.                               :  79  
 DELOITTE CONSULTING LLP                              :  74  
 TECH MAHINDRA (AMERICAS),INC.                        :  57  
 (Other)                                              :9484  
                                      SOC_NAME   
 MARKETING MANAGERS                       :2884  
 COMPUTER AND INFORMATION SYSTEMS MANAGERS:2655  
 GENERAL AND OPERATIONS MANAGERS          :1998  
 SALES MANAGERS                           :1076  
 CHIEF EXECUTIVES                         : 593  
 ADVERTISING AND PROMOTIONS MANAGERS      : 378  
 (Other)                                  : 415  
              JOB_TITLE    FULL_TIME_POSITION PREVAILING_WAGE    
 MARKETING MANAGER : 315   N:1464             Min.   :        0  
 PROJECT MANAGER   : 271   Y:8535             1st Qu.:    81078  
 OPERATIONS MANAGER: 244                      Median :   108493  
 PRODUCT MANAGER   : 179                      Mean   :   153655  
 SALES MANAGER     : 167                      3rd Qu.:   139870  
 MANAGER           : 158                      Max.   :329139200  
 (Other)           :8665                                         
      YEAR                           WORKSITE         lon         
 Min.   :2016   NEW YORK, NEW YORK       :1280   Min.   :-157.86  
 1st Qu.:2016   SAN FRANCISCO, CALIFORNIA: 612   1st Qu.:-118.43  
 Median :2016   CHICAGO, ILLINOIS        : 254   Median : -87.84  
 Mean   :2016   HOUSTON, TEXAS           : 222   Mean   : -94.53  
 3rd Qu.:2016   MIAMI, FLORIDA           : 203   3rd Qu.: -74.59  
 Max.   :2016   LOS ANGELES, CALIFORNIA  : 201   Max.   : 145.73  
                (Other)                  :7227   NA's   :414      
      lat       
 Min.   :13.48  
 1st Qu.:34.05  
 Median :37.80  
 Mean   :37.66  
 3rd Qu.:40.71  
 Max.   :61.22  
 NA's   :414    
```



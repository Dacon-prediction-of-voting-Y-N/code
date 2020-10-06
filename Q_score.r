setwd("C:/Users/YEO JIMIN/Downloads/data-master/data-master")
train<-read.csv('train.csv',header=TRUE)
head(train)
str(train)
#train_minus<-train[,c('QbA','QcA','QhA','QkA','QoA','QqA','QsA')]
#train_plus<-train[,c('QeA','QfA','QjA','QmA','QrA')]

train$QbA_score<-train$QbA
train$QcA_score<-train$QcA
train$QhA_score<-train$QhA
train$QkA_score<-train$QkA
train$QoA_score<-train$QoA
train$QqA_score<-train$QqA
train$QsA_score<-train$QsA
#str(train_minus)

train$QeA_score<-ifelse(train$QeA == 5,1,ifelse(train$QeA == 4,2
                                      ,ifelse(train$QeA==3, 3,ifelse(train$QeA==2,4,5))))
train$QfA_score<-ifelse(train$QfA == 5,1,ifelse(train$QfA == 4,2
                                      ,ifelse(train$QfA==3, 3,ifelse(train$QfA==2,4,5))))
train$QjA_score<-ifelse(train$QjA == 5,1,ifelse(train$QjA == 4,2
                                      ,ifelse(train$QjA==3, 3,ifelse(train$QjA==2,4,5))))
train$QmA_score<-ifelse(train$QmA == 5,1,ifelse(train$QmA == 4,2
                                      ,ifelse(train$QmA==3, 3,ifelse(train$QmA==2,4,5))))
train$QrA_score<-ifelse(train$QrA == 5,1,ifelse(train$QrA == 4,2
                                      ,ifelse(train$QrA==3, 3,ifelse(train$QrA==2,4,5))))

train$score<-train$QbA_score+train$QcA_score+train$QhA_score+train$QkA_score+train$QoA_score+
              train$QqA_score+train$QsA_score+train$QeA_score+train$QfA_score+
              train$QjA_score+train$QmA_score+train$QrA_score
#str(train)
train<-train[,-c(79:90)]

write.csv(train,'train_score.csv')

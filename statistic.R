setwd("c:/")
x <- read.csv("A-3.csv", header=FALSE)
str(x)
y <- as.matrix(x)
y <- as.vector(y)
str(y)
mean(y)
median(y,na.rm = TRUE) # 中位數
max(y)                 # 最大值
min(y)                 # 最小值
max(y)-min(y)         # 全距
range(y)
quantile(y,0.25)       # 第一個四分位數
quantile(y,0.75)       # 第三個四分位數
IQR(y)                 
var(y)                 # 變異數 
sd(y)                  # 標準差
table(y)               # 出現次數
which.max(table(y))    # 眾數及其排列位置

a4 <- read.csv("A-4.csv", header=FALSE)
y4 = t(a4)
quantile(y4, 0.25)

a5 <- read.csv("A-5.csv", header=TRUE)
y5=as.matrix(a5)
IQR(y5)

a6 <- read.csv("A-6.csv", header=FALSE)
str(a6)
y6=as.matrix(a6)
var(y6)
sd(y6)

c1 <-read.csv("C-1.csv", header=TRUE)
str(c1)
apply(c1,2, sum)
apply(c1, 2, mean)

x=c1[,2]
x
y=c1[,3]
y
cor(x, y)
LM_Model <- lm(y~x)
LM_Model

myfun <- function(ax) { ay <- (66.494 + 2.041 * ax); return (ay)}
z=rep(NA, length(x))
for (i in 1:length(x)){
  z[i]=myfun(x[i])-y[i]
}
z
(sum(z)/length(z))

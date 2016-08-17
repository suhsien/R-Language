x <- c(1:100)
y <- rnorm(100)*100
hist(y)
test.model <- lm(y~x)
test.model
plot(x,y)

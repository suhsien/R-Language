# 5!=5*4*3*2*1=120
#在R中如何使用Function計算階乘
myfun <- function(x=0){
  if (x==0) return (1) else{ y <- x * myfun(x-1); return (y)}
}

myfun(5)

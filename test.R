#testing git
#second change
x = rnorm(50, 22, 5)
xbar <- mean(x)
xbar
sem <- sd(x)/sqrt(50)
sem
sampvar <- var(x)
sampvar
bootnorm <- numeric(1000)
for (i in 1:1000){
  bootsamp <- sample(x, size=50, replace = TRUE)
  bootmean = mean(bootsamp)
  bootsd = sd(bootsamp)
  tpivot = (bootmean - xbar)/(bootsd/sqrt(50))
  bootnorm[i] <- tpivot
}

quant <- quantile(bootnorm, c(0.025,0.975))
quant
lowend <- xbar - quant[2]*sem
upend <- xbar - quant[1]*sem
lowend
upend

#hello this is a test

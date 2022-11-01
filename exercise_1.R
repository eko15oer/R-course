out = NULL
sdvals = seq(0, 10, 0.1)
for(i in 1:length(sdvals)){
  d = rnorm(500, 20, sd=sdvals[i])
  d = d[which(d>0)]
  out[i] = exp(mean(log(d)))
}
plot(sdvals, out, las=1,
     xlab="SD", ylab="Geometric mean")
abline(h=20)

#Simulating data
x = rnorm(n=100, mean=5, sd=1)
mean(x)
sd(x)
hist(x, las=1, main="")

#Bootstrapping
set.seed(1)
x = rnorm(50, 10, 2)
se_x = sqrt(var(x)/length(x)) #length means number of elements (hur många siffror som finns i x)

#define variable out to sampling distribution of the mean of x. Standard deviation of the sampling distrubution gives an approximation of the standard error.
out = NULL
for(i in 1:1000){
  sample = sample(x, replace=TRUE)
  out[i] = mean(sample)
}

hist(out, las=1, main="")
sd(out)
se_x

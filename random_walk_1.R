x = NULL
x[1] = 0 
for(i in 2:1000){
  x[i]=x[i-1]+rnorm(1)
}

random_walk = ts(x)
# plot(random_walk, main='A random walk', xlab = 'Days', col='blue', lwd=2)

# Let's find the acf of random walk dataset

acf(random_walk)
acf(diff(random_walk))
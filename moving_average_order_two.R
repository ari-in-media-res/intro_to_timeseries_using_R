noise = rnorm(10000)

# Introduce a variable
ma_2 = NULL

# Loop for generating MA(2) process
for(i in 3:10000) {
  ma_2[i] = noise[i] + 0.7*noise[i-1]+0.2*noise[i-2]
}

# Shift data to left by 2 points
moving_average_process = ma_2[3:10000]

# print(moving_average_process)


# Apply Time Series structure on data
moving_average_process = ts(moving_average_process)

# Partition output graph as combination of 2 rows and 1 column; each row comprising of the plot below
par(mfrow=c(2,1))

# Plot the process and ACF

plot(moving_average_process, main='A moving average of order 2', col='blue')
acf(moving_average_process, main='Corellogram of a moving average of order 2')
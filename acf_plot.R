p = arima.sim(n=1000, model=list(ma=c(0.5, 0.5)), sd = 1)
ACF = acf(p)
print(ACF)
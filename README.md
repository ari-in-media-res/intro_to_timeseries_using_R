# intro_to_timeseries_using_R

What does ARIMA(1, 0, 12) mean?

Specifically for your model, ARIMA(1, 0, 12) means that it you are describing some response variable (Y) by combining a 1st order Auto-Regressive model and a 12th order Moving Average model. A good way to think about it is (AR, I, MA). This makes your model look the following, in simple terms:

Y = (Auto-Regressive Parameters) + (Moving Average Parameters)

The 0 in the between the 1 and the 12 represents the 'I' part of the model (the Integrative part) and it signifies a model where you're taking the difference between response variable data - this can be done with non-stationary data and it doesn't seem like you're dealing with that, so you can just ignore it.

The link that DanTheMan posted shows a nice mix of models that could help you understand yours by comparing it to those.

What values can be assigned to p, d, q?

Lots of different whole numbers. There are diagnostic tests you can do to try to find the best values of p,d,q (see part 3).

What is the process to find the values of p, d, q?

There are a number of ways, and I don't intend this to be exhaustive:

look at an autocorrelation graph of the data (will help if Moving Average (MA) model is appropriate)
look at a partial autocorrelation graph of the data (will help if AutoRegressive (AR) model is appropriate)
look at extended autocorrelation chart of the data (will help if a combination of AR and MA are needed)
try Akaike's Information Criterion (AIC) on a set of models and investigate the models with the lowest AIC values
try the Schwartz Bayesian Information Criterion (BIC) and investigate the models with the lowest BIC values
Without knowing how much more you need to know, I can't go too much farther, but if you have more questions, feel free to ask and maybe I, or someone else, can help.

library(faraway)
# plot(punting$Distance~punting$Hang)
# abline(lm(punting$Distance~punting$Hang))


# The plot doesn't give enough info so let's examine the residuals

punt.lm = lm(punting$Distance~punting$Hang)
punting.residuals = resid(punt.lm)
qqnorm(punting.residuals)
qqline(punting.residuals)
summary(punt.lm)



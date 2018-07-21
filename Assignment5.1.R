#1. If Z is norm (mean = 0, sd = 1)
#Find P(Z > 2.64)
#Find P(|Z| > 1.39)

#Solution
#1. If Z is norm (mean = 0, sd = 1)
#Find P(Z > 2.64)
1 - pnorm(2.64, mean=0, sd=1)

#Find P(|Z| > 1.39)
1-(pnorm(1.39)-pnorm(-1.39))



#2. Suppose p = the proportion of students who are admitted to the graduate school of the University of
#California at Berkeley, and suppose that a public relation officer boasts that UCB has historically had a
#40% acceptance rate for its graduate school. Consider the data stored in the table UCBAdmissions from
#1973. Assuming these observations constituted a simple random sample, are they consistent with the
#officerâ..s claim, or do they provide evidence that the acceptance rate was significantly less than 40%?
# Use an Î± = 0.01 significance level.


qnorm(0.99)
#[1] -2.326348
#Our only remaining task is to find the value of the test statistic and see where it falls relative
#to the critical value. We can find the number of people admitted and not admitted to the UCB
#graduate school with the following.
A <- as.data.frame(UCBAdmissions)
head(A)
xtabs(Freq ~ Admit, data = A)

#Now we calculate the value of the test statistic.
phat <- 1755/(1755 + 2771)
(phat - 0.4)/sqrt(0.4 * 0.6/(1755 + 2771))


#Our test statistic is not less than ???2.32, so it does not fall into the critical region. Therefore,
#we fail to reject the null hypothesis that the true proportion of students admitted to graduate
#school is less than 40% and say that the observed data are consistent with the officer's claim at
#the  = 0.01 significance level.
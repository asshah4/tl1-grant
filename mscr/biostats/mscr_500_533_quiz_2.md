---
title: Fall 2019 MSCR 500 & 533 Quiz 2
author: Anish Shah
date: 11/27/19
---

# Question 1

## Description

Study of long-term effects of eye surgery to correct myopia
44 pts receive surgery in pilot study
310 pts as part of core study get surgery
Total of 354 pts
Follow up of 10 years, with measure of refractive error collected

Is the long-term change in refractive error different for the pilot and core study group? Use alpha = 0.10

## Data from SAS output

Pilot patients:

n = 44
Mean = 0.7443
SD = 1.02829
Var = 1.0574

Core patients:

N = 310
Mean = 0.7174
SD = 1.0613
Var = 1.1263

## Answer to Question 1

__Hypothesis__

H0: u1 - u2 = 0
H1: u1 - u2 =/= 0
u1 = mean refractive change of pilot group
u2 = mean refractive change of core group

__Test__: two sample t-test (unpooled)

This is the most appropriate test because we have two normally distributed (by CTL) independent populations, where we are comparing the mean of two different populations. Also, the distributions appear to be both symmetrical and bellshaped. However, the literature suggests that unless the populations are the same size, its more appropriate to assume that the variance is unequal. Thus, we will use the unpooled t-test.

__Test Statistic__

T = (xbar1 - xbar2) - 0 / sqrt(s1^2/n1 + s2^2/n2)
= 0.0269 / 0.1663287
= 0.1617

__P-value__

T ~ T(43) distribution (by Satterwaite)
P(T = 0.1617) < 1.302 (calculated by T-table, where our T-statistic is much lower than the threshold T-stat for an alpha = 0.10)

__Fail to Reject H0 at alpha = 0.10__

_Based on the given parameters, we have insufficient evidence to reject the null hypothesis, and can conclude that with an alpha = 0.10, there is no difference between the mean change in refraction error over 10 years in the pilot and core groups._

# Question 2

## Description

Students get a class pre-test and post-test

Question: Was there an improvement in test scores?

## Data from SAS output

N = 20
Mean = -12
SD = 21.9089
Var = 480

## Answer to Question 2

__Hypothesis:__

H0 = u = 0
H1 = u > 0
u = true average difference between pre-test and post-test scores

__Test__: paired t-test

This test is most appropriate (the one-sample paired t-test) because it is a population that is tested twice (e.g. before/after intervention), thus each result is "paired" between groups.

__Test statistic__

T = xbar - 0 / (sigma / sqrt(n))
= -12 / 4.898979
= -2.4495

__P-value__

T ~ t(19) under H0
P(T = -2.4495) <= 2.093 of t(0.025)

__Reject H0 at alpha = 0.05__

As the T-statistic falls between t(0.025) and t(0.01), we can say that our p-value is ~ 0.025. Thus, we have enough evidence to reject the null hypothesis and conclude that the scores were lower in the post-test than in the pre-test. Hopefully this is not our class. 

# Question 3

## My SAS code



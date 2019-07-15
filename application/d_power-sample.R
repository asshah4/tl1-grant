#!/usr/bin/env Rscript

# Libraries
library(pwr)
library(tidyverse)

# data intake
df <- read_csv("dyx-data-sample.csv") %>% na.omit()
df <- df[df$hour==7,]

# Specific Aim #1
# Binary outcomes of stenosis with continues exposure of HRV
pwr.2p.test(
  n = 120,
  sig.level = .05,
  power = 0.80
)

# Specific Aim #2
# Linear model
pwr.f2.test(
  u = 1,
  v = 120 - 1 - 1,
  sig.level = .05, # alpha
  power = 0.8 # 1 - beta = 80%
)

# For both aims
pwr.2p.test(h = ES.h(p1 = 0.55, p2 = 0.50), sig.level = 0.05, power = .80)
pwr.2p2n.test(h = 0.50, 
              n1 = 100, 
              power = 0.8, 
              sig.level = 0.05)
pwr.2p.test(
  h= ES.h(p1 = .20, p2 = .10),
  sig.level = .05,
  power = .80)


# Amount of variance (a = control, b = testing condition)
ab <- var(df$DYX)
a <- var(df$DYX[df$PETdiff_2==1])
f <- (ab - a)/(1-ab)
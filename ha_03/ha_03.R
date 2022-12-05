library(tidyverse)
library(rio)

set.seed(777)

n_obs = 200

x = rnorm(n_obs, mean = 10, sd = 4)
u = rnorm(n_obs)

y = 2 + 3 * x - 0.2 * x^2 + 2*u*(1 + abs(x)/8)


qplot(x, y)
qplot(y)

df = tibble(y = y, x = x)
export(df, 'psmo-ha_02.csv')

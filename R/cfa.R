#Libraries
library(psych)
library(dplyr)
library(ggplot2)
library(lavaan)

model <- '
  progress =~ level + total_tries + total_validated + total_attempted + n_evaluation + avg_level_of_peers + achievements_progression
  social =~ achievements_activity + achievements_helping + achievements_participation + achievements_cohesion
  student ~ progress + social
'

fit <- cfa(model, data = cursus_users)

summary(fit, fit.measures = TRUE, standardized = TRUE)

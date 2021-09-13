#Libraries
library(psych)
library(dplyr)
library(Hmisc)
library(reshape2)
library(extrafont)

cursus_users$student <- as.numeric(as.factor(cursus_users$Student)) - 1

# achievement groups
rcorr(as.matrix(cursus_users[ , c("achievements_activity",
                                  "achievements_progression",
                                  "achievements_helping",
                                  "achievements_participation",
                                  "achievements_cohesion",
                                  "student", "level")]))

# evaluation
rcorr(as.matrix(cursus_users[ , c("n_evaluatee",
                                  "avg_level_of_evaluatees",
                                  "n_evaluator",
                                  "avg_level_of_evaluators",
                                  "student", "level")]))

# retries, attempts, validations
rcorr(as.matrix(cursus_users[ , c("total_tries",
                                  "total_attempted",
                                  "total_validated",
                                  "student", "level")]))

rcorr(as.matrix(cursus_users[ , c("total_tries",
                                  "total_attempted",
                                  "total_validated",
                                  "n_evaluatee",
                                  "avg_level_of_evaluatees",
                                  "n_evaluator",
                                  "avg_level_of_evaluators",
                                  "achievements_activity",
                                  "achievements_progression",
                                  "achievements_helping",
                                  "achievements_participation",
                                  "achievements_cohesion")]))

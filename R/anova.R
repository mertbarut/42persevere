#Libraries
library(psych)
library(dplyr)
library(Hmisc)

cor(cursus_users$level, cursus_users$total_tries)
cor(cursus_users$level, cursus_users$total_attempted)
cor(cursus_users$level, cursus_users$total_validated)

cor(cursus_users$total_attempted, cursus_users$total_tries)
cor(cursus_users$total_validated, cursus_users$total_attempted)
cor(cursus_users$total_validated, cursus_users$total_tries)

## Projects
lm_lvl = lm(level ~ total_validated, data = cursus_users)
summary(lm_lvl)

lm_pss = lm(total_validated ~ total_attempted, data = cursus_users)
summary(lm_pss)

lm_pss = lm(total_attempted ~ total_tries, data = cursus_users)
summary(lm_pss)

## Peer Evaluations

lm_prs = lm(avg_level_of_peers ~ n_evaluation, data = cursus_users)
summary(lm_prs)

## Cross Dimension

lm_evl = lm(n_evaluation ~ total_tries, data = cursus_users)
summary(lm_evl)

lm_pgr = lm(achievements_progression ~ total_validated, data = cursus_users)
summary(lm_pgr)
cor(cursus_users$achievements_progression, cursus_users$total_validated)

lm_hlp = lm(total_validated ~ achievements_helping, data = cursus_users)
summary(lm_hlp)

lm_prt = lm(total_validated ~ achievements_participation, data = cursus_users)
summary(lm_prt)

cursus_users$achievements_participation
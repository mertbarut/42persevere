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

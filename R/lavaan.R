# Libraries
library(dplyr)
library(lavaan)

# (!) PCA is needed before running this

m1 <- '

#the regression model

progress ~ PC1 + mid + latestart
mid ~ PC1 + latestart
PC1 ~ gender + edu_3 + enthusiasm + game_1scaled + game_2scaled

# variances

edu_3 ~~ game_2scaled
enthusiasm ~~ game_2scaled
latestart ~~ latestart
gender ~~ gender
edu_3 ~~ edu_3
enthusiasm ~~ enthusiasm
game_1scaled ~~ game_1scaled
game_2scaled ~~ game_2scaled
game_2scaled ~~ game_1scaled

# Non-significant

#latestart ~~ edu_3
#latestart ~~ game_2scaled
#latestart ~~ enthusiasm
#kickoff_atNov ~~ gender
#latestart ~~ edu_3
#latestart ~~ game_1scaled
#game_1scaled ~~ game_2scaled
#edu_3 ~~ enthusiasm
#edu_3 ~~ game_1scaled

#enthusiasm ~~ game_1

#gender ~~ edu_3
#gender ~~ enthusiasm
#gender ~~ game_1scaled
#gender ~~ game_2scaled

# intercepts
progress ~ 1
mid ~ 1

'

fit_m1 <- sem(model = m1, data = wob, link = "probit")
summary(fit_m1, fit.measures = TRUE, ci = TRUE, rsquare = TRUE, standardized = TRUE)
fitmeasures(fit_m1)
parameterEstimates(fit_m1)

wob %>%
  dplyr::filter(student == 1) %>%
  dplyr::group_by(blackholed) %>%
  dplyr::summarise(n = n()) %>%
  dplyr::mutate(Freq = n/sum(n))

wob_time_series_0 = wob %>%
  dplyr::filter(student == 1) %>%
  dplyr::group_by(floor(mid)) %>%
  dplyr::summarise(n = n()) %>%
  dplyr::mutate(begin = 0) %>%
  dplyr::relocate(begin, .before = `floor(mid)`) %>%
  dplyr::mutate(period = 0) %>%
  dplyr::rename(source = `begin`, target = `floor(mid)`, value = n)

as.data.frame(wob_time_series_0)

wob_time_series_1 = wob %>%
  dplyr::filter(student == 1) %>%
  dplyr::group_by(floor(mid), floor(cur)) %>%
  dplyr::summarise(n = n()) %>%
  dplyr::mutate(period = 1) %>%
  dplyr::rename(source = `floor(mid)`, target = `floor(cur)`, value = n)

as.data.frame(wob_time_series_1)

wob_time_series = bind_rows(wob_time_series_0, wob_time_series_1)

as.data.frame(wob_time_series)

write.csv(wob_time_series, "data/csv/wob_level_progress.csv", row.names = FALSE)

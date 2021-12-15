#Libraries
library(psych)
library(dplyr)
library(ggplot2)
library(Hmisc)
library(reshape2)
library(extrafont)

loadfonts(device = "win")

# Extras (Wolfsburg-only)

### Summarize gender composition

(wob_gender = wob %>% summarise(n = n(), m_sex = mean(na.omit(gender)), sd_sex = sd(na.omit(gender)), min_sex = min(na.omit(gender)), max_sex = max(na.omit(gender))))
(wob_gender_bymonthstudent = wob %>% group_by(month, Student) %>% summarise(n = n(), m_sex = mean(na.omit(gender)), sd_sex = sd(na.omit(gender)), min_sex = min(na.omit(gender)), max_sex = max(na.omit(gender))))

### Summarize educational background

(wob_edu = wob %>% summarise(n = n(), m_edu = mean(na.omit(edu)), sd_edu = sd(na.omit(edu)), min_edu = min(na.omit(edu)), max_edu = max(na.omit(edu))))
(wob_edu_bymonthstudent = wob %>% group_by(month, Student) %>% summarise(n = n(), m_edu = mean(na.omit(edu)), sd_edu = sd(na.omit(edu)), min_edu = min(na.omit(edu)), max_edu = max(na.omit(edu))))

### Create histograms
(p_hst_edu <- ggplot(data = wob, aes(x = edu))) + 
  geom_histogram(aes(y = ..count..), alpha=.8, position = 'identity') +
  facet_wrap(~ Student + month) +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 1)) +
  labs(title = "Histograms of Previous education level of 42 Wolfsburg students Grouped by Month and Studentship status", x = "Education Level", y = "Count")

### Summarize pre-basecamp coding experience/enthusiasm

(wob_prevexp_bymonth = wob %>% group_by(month, Student) %>% summarise(n = n(), m_pexp = mean(na.omit(prev_exp)), sd_pexp = sd(na.omit(prev_exp)), min_pexp = min(na.omit(prev_exp)), max_pexp = max(na.omit(prev_exp))))

### Summarize selection game performance

(wob_game1 = wob %>% summarise(n = n(), m_game1 = mean(na.omit(game_1)), sd_game1 = sd(na.omit(game_1)), min_game1 = min(na.omit(game_1)), max_game1 = max(na.omit(game_1))))
(wob_game1_bymonth = wob %>% group_by(month) %>% summarise(n = n(), m_game1 = mean(na.omit(game_1)), sd_game1 = sd(na.omit(game_1)), min_game1 = min(na.omit(game_1)), max_game1 = max(na.omit(game_1))))

(wob_game2 = wob %>% summarise(n = n(), m_game2 = mean(na.omit(game_2)), sd_game2 = sd(na.omit(game_2)), min_game2 = min(na.omit(game_2)), max_game2 = max(na.omit(game_2))))
(wob_game2_bymonth = wob %>% group_by(month) %>% summarise(n = n(), m_game2 = mean(na.omit(game_2)), sd_game2 = sd(na.omit(game_2)), min_game2 = min(na.omit(game_2)), max_game2 = max(na.omit(game_2))))

(p_hst_game1 <- ggplot(data = wob, aes(x = game_1))) + 
  geom_histogram(aes(y = ..count..), alpha=.8, position = 'identity') +
  #  facet_wrap(~ month) +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 1)) +
  labs(title = "Histogram", x = "Game 1 Score", y = "Count")

(p_hst_game2 <- ggplot(data = wob, aes(x = game_2))) + 
  geom_histogram(aes(y = ..count..), alpha=.8, position = 'identity') +
  #  facet_wrap(~ month) +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 1)) +
  labs(title = "Histogram", x = "Game 2 Score", y = "Count")

### Summarize Number of subscription to events

(wob_events = wob %>% summarise(n = n(), m_events = mean(na.omit(n_event)), sd_events = sd(na.omit(n_event)), min_events = min(na.omit(n_event)), max_events = max(na.omit(n_event))))
(wob_events_bymonth = wob %>% group_by(month) %>% summarise(n = n(), m_events = mean(na.omit(n_event)), sd_events = sd(na.omit(n_event)), min_events = min(na.omit(n_event)), max_events = max(na.omit(n_event))))

(p_hst_events <- ggplot(data = wob, aes(x = n_event))) + 
  geom_histogram(aes(y = ..count..), alpha=.8, position = 'identity') +
  facet_wrap(~ month) +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 1)) +
  labs(title = "Histogram", x = "Number of Events Subscribed for", y = "Count")

### Summarize Discord Activity Data

(wob_discord_online = wob %>% summarise(n = n(), m_discord_online = mean(na.omit(discord_online)), sd_discord_online = sd(na.omit(discord_online)), min_discord_online = min(na.omit(discord_online)), max_discord_online = max(na.omit(discord_online))))
(wob_discord_online_bymonth = wob %>% group_by(month) %>% summarise(n = n(), m_discord_online = mean(na.omit(discord_online)), sd_discord_online = sd(na.omit(discord_online)), min_discord_online = min(na.omit(discord_online)), max_discord_online = max(na.omit(discord_online))))

(wob_discord_vc = wob %>% summarise(n = n(), m_discord_vc = mean(na.omit(discord_vc)), sd_discord_vc = sd(na.omit(discord_vc)), min_discord_vc = min(na.omit(discord_vc)), max_discord_vc = max(na.omit(discord_vc))))
(wob_discord_vc_bymonth = wob %>% group_by(month) %>% summarise(n = n(), m_discord_vc = mean(na.omit(discord_vc)), sd_discord_vc = sd(na.omit(discord_vc)), min_discord_vc = min(na.omit(discord_vc)), max_discord_vc = max(na.omit(discord_vc))))

### Summarize Offer Acceptance / Inactive

sum(wob$Student == "Yes")

sum(wob$accepted == 1)
(wob_accepted = wob %>% summarise(n = n(), m_accepted = mean(accepted), sd_accepted = sd(accepted)))
(wob_accepted_bymonth = wob %>% group_by(month) %>% summarise(n = n(), m_accepted = mean(accepted), sd_accepted = sd(accepted)))

sum(wob$coldfeet, na.rm = TRUE)
(wob_coldfeet = wob %>% summarise(n = n(), m_coldfeet = mean(coldfeet), sd_coldfeet = sd(coldfeet)))
(wob_coldfeet_bymonth = wob %>% group_by(month) %>% summarise(n = n(), m_coldfeet = mean(coldfeet), sd_coldfeet = sd(coldfeet)))

sum(wob$inactive, na.rm = TRUE)
(wob_inactive = wob %>% filter(Student == "Yes") %>% summarise(n = n(), m_inactive = mean(inactive), sd_inactive = sd(inactive)))
(wob_inactive_bymonth = wob %>% filter(Student == "Yes") %>% group_by(month) %>% summarise(n = n(), m_inactive = mean(inactive), sd_inactive = sd(inactive)))

sum(wob$detached, na.rm = TRUE)
(wob_detached = wob %>% filter(accepted == 1) %>% summarise(n = n(), m_detached = mean(detached), sd_detached = sd(detached)))
(wob_detached_bymonth = wob %>% filter(accepted == 1) %>% group_by(month) %>% summarise(n = n(), m_detached = mean(detached), sd_detached = sd(detached)))

# Correlations
### (Note: PC1 is needed, so run it first)

### Current level must be weighed with the amount of time passed since kickoff
### (i.e. Student A must get a higher "score" than student B if it progressed faster than B given the number of weeks passed since kickoff)

wob <- wob %>% mutate(kickoff_atMay = case_when(wob$kickOff == "May" ~ 1,
                                                wob$kickOff == "November" ~ 0,
                                                is.na(wob$kickOff) == TRUE ~ 0))

wob <- wob %>% mutate(kickoff_atNov = case_when(wob$kickOff == "May" ~ 0,
                                                wob$kickOff == "November" ~ 1,
                                                is.na(wob$kickOff) == TRUE ~ 0))

wob$cur[is.na(wob$cur)] <- 0

wob <- wob %>% mutate(games = game_1 * game_2)

wob <- wob %>% mutate(current_level = cur)

rcorr(as.matrix(wob[ , c(
             "level",
						 "PC1",
			       "PC2",
						 "PC3",
						 "gender",
						 "edu",
						 "prev_exp",
						 "game_1",
						 "game_2",
						 "current_level"
						 )]))

rcorr(as.matrix(wob[ , c(
  "level",
  "total_tries",
  "total_attempted",
  "total_validated",
  "n_evaluation",
  "avg_level_of_peers",
  "achievements_activity",
  "achievements_progression",
  "achievements_helping",
  "achievements_participation",
  "achievements_cohesion",
  "n_event",
  "discord_online",
  "discord_vc",
  "votes_used",
  "votes_received"
)]))

library(lavaan)

hist(wob$PC1)

m1 <- '

#the regression model

detached ~ PC1 + PC2

# variances
detached ~~ detached

# intercepts
detached ~ 1

'

m2 <- '

#the regression model

detached ~ PC1 + PC2

# variances
detached ~~ detached

# intercepts
detached ~ 1

'

fit_m1 <- lavaan(model = m1, data = wob)
summary(fit_m1, fit.measures = TRUE, ci = TRUE, rsquare = TRUE, standardized = TRUE)

#sink(file = "cor.txt")
#sink(file = NULL)

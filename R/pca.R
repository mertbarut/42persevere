#Libraries
library(psych)
library(dplyr)
library(ggplot2)

# Select the relevant data

data_pca1 <- wob %>% select("level",
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
                                    "votes_received")

# PCA

wob.pca1 <- prcomp(data_pca1, center = TRUE, scale. = TRUE)
wob.pca1

# Bind the components back with org. data

wob <- cbind(wob, wob.pca1$x[, 1:(ncol(data_pca1))])

# Summary

summary(wob.pca1)

# Extract the explained total variance from all variables

var_explained_df <- data.frame(PC = paste0("PC", 1:16), var_explained = (wob.pca1$sdev)^2/sum((wob.pca1$sdev)^2))

var_explained_df$PC <- factor(var_explained_df$PC, ordered = TRUE, levels = c("PC1", "PC2", "PC3", "PC4", "PC5", "PC6", "PC7", "PC8", "PC9", "PC10", "PC11", "PC12", "PC13", "PC14", "PC15", "PC16"))

head(var_explained_df)

var_explained_df %>%
  ggplot(aes(x = PC, y = var_explained, group = 1)) +
  geom_point(size = 4) +
  geom_line() +
  theme_minimal()  +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 1)) +
  labs(title = "Scree plot: PCA on scaled data", x = "Principal Components", y = "Explained Variance") +
  ylim(0, 1)

ggplot(wob, aes(PC1, PC2, col = Student, fill = Student)) +
  stat_ellipse(geom = "polygon", col = "black", alpha = 0.5) +
  geom_point(shape = 21, col = "black") +
  facet_wrap(~ campus + month) +
  theme_minimal()

# Convert type of student to dummy for cor. table

wob$student <- as.numeric(as.factor(wob$Student)) - 1

# Calculate rounded correlation coeffiecients between the components and other variables

round(cor(wob[ , c(
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
  "votes_received",
  "PC1",
  "PC2",
  "PC3")],
  wob[ , c(
    "level",
    "PC1",
    "PC2",
    "PC3")]), digits = 2)

round(cor(wob[ , c(
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
  "votes_received")],
  wob[ , c(
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
    "votes_received")]), digits = 2)

# Across campus and month comparisons of PC1
### Because main.R only considers May students, student variable should be changed to also include November students
wob <- wob %>% mutate(student = case_when(is.na(wob$game_1) == TRUE ~ 0,
                                          is.na(wob$game_1) == FALSE ~ 1))

(pc1_bystudentmonth = wob %>% group_by(student, month) %>% summarise(n = n(), mean = mean(PC1), sd = sd(PC1), min = min(PC1), max = max(PC1)))

(p_dot_pc1_bylevelstudent <- ggplot(wob, aes(x = Student, y = PC1))) + 
  geom_dotplot(binwidth = 0.1, binaxis = 'y', stackdir = 'center') +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", color = "#00BABC", width = 0.8, size = 2, alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 15, color = "#00BABC", size = 3, alpha = 1) +
  facet_wrap(~ campus + month) +
  theme_minimal()

library(devtools)
library(ggbiplot)

(wob_pca_biplot1 = ggbiplot(wob.pca1, obs.scale = 1, var.scale = 1,
  groups = as.factor(wob$accepted), ellipse = TRUE, circle = TRUE) +
  scale_color_discrete(name = 'Accepted to 42 Wolfsburg') +
  theme(legend.direction = 'horizontal', legend.position = 'top') +
  theme_minimal())

(wob_pca_biplot2 = ggbiplot(wob.pca1, obs.scale = 1, var.scale = 1,
  groups = as.factor(wob$coldfeet), ellipse = TRUE, circle = TRUE) +
  scale_color_discrete(name = 'Cold-feet among the Piscine Participants') +
  theme(legend.direction = 'horizontal', legend.position = 'top') +
  theme_minimal())

(wob_pca_biplot3 = ggbiplot(wob.pca1, obs.scale = 1, var.scale = 1,
  groups = as.factor(wob$inactive), ellipse = TRUE, circle = TRUE) +
  scale_color_discrete(name = 'Inactive among the Currently Student') +
  theme(legend.direction = 'horizontal', legend.position = 'top') +
  theme_minimal())

(wob_pca_biplot3 = ggbiplot(wob.pca1, obs.scale = 1, var.scale = 1,
  groups = as.factor(wob$detached), ellipse = TRUE, circle = TRUE) +
  scale_color_discrete(name = 'Detached among the Accepted') +
  theme(legend.direction = 'horizontal', legend.position = 'top') +
  geom_vline(xintercept = as.numeric(wob[which(wob$login == "tgerdes"), c("PC1")][1]), color = "black", size = 1, alpha = 0.5) +
  geom_hline(yintercept = as.numeric(wob[which(wob$login == "tgerdes"), c("PC2")][1]), color = "black", size = 1, alpha = 0.5) +
  theme_minimal())

as.numeric(wob[which(wob$login == "mbarut"), c("PC1")][1])
as.numeric(wob[which(wob$login == "mbarut"), c("PC2")][1])

wob[which(wob$PC1 > 3.592295 & wob$PC2 < -0.4091407 ), "login"]
as.numeric(wob[which(wob$login == "tgerdes"), c("PC1")][1])

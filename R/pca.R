# Libraries
library(psych)
library(dplyr)
library(ggplot2)
library(devtools)
library(ggbiplot)

# Import Data

rm(wob)

wob = read.csv("data/csv/wob.csv")

# Select the relevant data

data_pca1 <- wob %>%
  dplyr::select("level", "total_tries", "total_attempted", "total_validated", "n_evaluation", "avg_level_of_peers", "achievements_progression",
         "achievements_activity", "achievements_participation", "n_event", "achievements_cohesion", "discord_online", "discord_vc", "votes_used",
         "achievements_helping", "votes_received") %>%
  dplyr::rename("(BP) Basecamp Level" = level,
         "(BP) Tries" = total_tries,
         "(BP) Attempts" = total_attempted,
         "(BP) Passes" = total_validated,
         "(BE) Evaluations" = n_evaluation,
         "(BE) Average Peer Level" = avg_level_of_peers,
         "(BA) Steady Progress" = achievements_progression,
         "(BA) Intranet Activity" = achievements_activity,
         "(BA) Participation" = achievements_participation,
         "(BX) Events" = n_event,
         "(BA) High Cohesion Tribe" = achievements_cohesion,
         "(BX) Discord Online" = discord_online,
         "(BX) Discord VC" = discord_vc,
         "(BX) Vox Votes Cast" = votes_used,
         "(BA) Vox Awardee" = achievements_helping,
         "(BX) Vox Votes Received" = votes_received
  )

# PCA

wob.pca1 <- prcomp(data_pca1, center = TRUE, scale. = TRUE)

# Bind the components back with org. data

wob <- cbind(wob, wob.pca1$x[, 1:(ncol(data_pca1))])

# Summary

summary(wob.pca1)

# Reformatting variables for visuals

wob$"(SC) Accepted" <- as.factor(wob$accepted)
wob$"(SC) Coldfeet" <- as.factor(wob$coldfeet)
wob$"(SC) Inactive" <- as.factor(wob$inactive)
wob$"(SC) Detached" <- as.factor(wob$detached)

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
  labs(title = "Scree plot: PCA on scaled data", x = "Principal Components (PC)", y = "Explained Variance") +
  ylim(0, 1)

# Convert type of student to dummy for cor. table

wob$student <- as.numeric(as.factor(wob$Student)) - 1

# Biplots

(wob_pca_biplot1 = ggbiplot(wob.pca1, obs.scale = 1, var.scale = 1,
  groups = wob$`(SC) Accepted`, ellipse = TRUE, circle = TRUE) +
  scale_color_discrete(name = 'Accepted to 42 Wolfsburg') +
  theme(legend.direction = 'horizontal', legend.position = 'top') +
  xlim(-8, 8) +
  ylim(-3, 5) +
  theme_minimal())

##### Remove non-accepted
{
  wob.pca2 <- wob.pca1
  wob.pca2$x <- wob.pca2$x[which(!is.na(wob$`(SC) Coldfeet`)), ]

  (wob_pca_biplot2 = ggbiplot(wob.pca2, obs.scale = 1, var.scale = 1,
  groups = na.omit(wob$`(SC) Coldfeet`), ellipse = TRUE, circle = TRUE) +
  scale_color_discrete(name = 'Cold-feetedness among the Accepted') +
  theme(legend.direction = 'horizontal', legend.position = 'top') +
  xlim(-8, 8) +
  ylim(-3, 5) +
  theme_minimal())

  (wob_pca_biplot3 = ggbiplot(wob.pca2, obs.scale = 1, var.scale = 1,
  groups = na.omit(wob$`(SC) Detached`), ellipse = TRUE, circle = TRUE) +
  scale_color_discrete(name = 'Detached among the Accepted') +
  theme(legend.direction = 'horizontal', legend.position = 'top') +
  geom_vline(xintercept = as.numeric(wob[which(wob$login == "mbarut"), c("PC1")][1]), color = "black", size = 1, alpha = 0.5) +
  geom_hline(yintercept = as.numeric(wob[which(wob$login == "mbarut"), c("PC2")][1]), color = "black", size = 1, alpha = 0.5) +
  xlim(-8, 8) +
  ylim(-3, 5) +
  theme_minimal())
}

{
  wob.pca3 <- wob.pca1
  wob.pca3$x <- wob.pca3$x[which(wob$Student == "Yes"), ]
  
  (wob_pca_biplot3 = ggbiplot(wob.pca3, obs.scale = 1, var.scale = 1,
  groups = wob[which(wob$Student == "Yes"), ]$`(SC) Inactive`, ellipse = TRUE, circle = TRUE) +
  scale_color_discrete(name = 'Inactive among the Currently Student') +
  theme(legend.direction = 'horizontal', legend.position = 'top') +
  xlim(-8, 8) +
  ylim(-3, 5) +
  theme_minimal())

}

as.numeric(wob[which(wob$login == "mwen"), c("PC1")][1])
as.numeric(wob[which(wob$login == "mwen"), c("PC2")][1])

wob[which(wob$PC1 > 3.592295 & wob$PC2 < -0.4091407 ), "login"]
as.numeric(wob[which(wob$login == "tgerdes"), c("PC1")][1])

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

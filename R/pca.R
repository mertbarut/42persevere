#Libraries
library(psych)
library(dplyr)
library(ggplot2)

# Select the relevant data

data_pca1 <- cursus_users %>% select("level",
                                    "total_tries",
                                    "total_attempted",
                                    "total_validated",
                                    "n_evaluation",
                                    "avg_level_of_peers",
                                    "achievements_activity",
                                    "achievements_progression",
                                    "achievements_helping",
                                    "achievements_participation",
                                    "achievements_cohesion")

# PCA

cursus_users.pca1 <- prcomp(data_pca1, center = TRUE, scale. = TRUE)

# Bind the components back with org. data

cursus_users <- cbind(cursus_users, cursus_users.pca$x[, 1:(ncol(data_pca))])

# Summary

summary(cursus_users.pca1)

# Extract the explained total variance from all variables

var_explained_df <- data.frame(PC = paste0("PC", 1:11), var_explained = (cursus_users.pca1$sdev)^2/sum((cursus_users.pca1$sdev)^2))

var_explained_df$PC <- factor(var_explained_df$PC, ordered = TRUE, levels = c("PC1", "PC2", "PC3", "PC4", "PC5", "PC6", "PC7", "PC8", "PC9", "PC10", "PC11"))

head(var_explained_df)

var_explained_df %>%
  ggplot(aes(x = PC, y = var_explained, group = 1)) +
  geom_point(size = 4) +
  geom_line() +
  theme_minimal()  +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 1)) +
  labs(title = "Scree plot: PCA on scaled data", x = "Principal Components", y = "Explained Variance") +
  ylim(0, 1)

ggplot(cursus_users, aes(PC1, PC2, col = Student, fill = Student)) +
  stat_ellipse(geom = "polygon", col = "black", alpha = 0.5) +
  geom_point(shape = 21, col = "black") +
  facet_wrap(~ campus + month) +
  theme_minimal()

# Convert type of student to dummy for cor. table

cursus_users$student <- as.numeric(as.factor(cursus_users$Student)) - 1

# Calculate rounded correlation coeffiecients between the components and other variables

round(cor(cursus_users[ , c(
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
  "student",
  "PC1",
  "PC2",
  "PC3")],
  cursus_users[ , c(
    "level",
    "student",
    "PC1",
    "PC2",
    "PC3")]), digits = 2)

round(cor(cursus_users[ , c(
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
  "student")],
  cursus_users[ , c(
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
    "student")]), digits = 2)

# Across campus and month comparisons of PC1

(pc1_bycampusstudentmonth = cursus_users %>% group_by(campus, student, month) %>% summarise(n = n(), mean = mean(PC1), sd = sd(PC1), min = min(PC1), max = max(PC1)))

(p_dot_pc1_bycampuslevelstudent <- ggplot(cursus_users, aes(x = Student, y = PC1))) + 
  geom_dotplot(binwidth = 0.1, binaxis = 'y', stackdir = 'center') +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", color = "#00BABC", width = 0.8, size = 2, alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 15, color = "#00BABC", size = 3, alpha = 1) +
  facet_wrap(~ campus + month) +
  theme_minimal()

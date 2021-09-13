#Libraries
library(psych)
library(dplyr)
library(ggplot2)

data_pca <- cursus_users %>% select("level",
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

cursus_users.pca <- prcomp(data_pca, center = TRUE, scale. = TRUE)
cursus_users <- cbind(cursus_users, cursus_users.pca$x[, 1:(ncol(data_pca))])
summary(cursus_users.pca)


plot(cursus_users.pca)
ggplot(cursus_users, aes(PC1, PC2, col = Student, fill = Student)) +
  stat_ellipse(geom = "polygon", col = "black", alpha = 0.5) +
  geom_point(shape = 21, col = "black") +
  facet_wrap(~ campus + month) +
  theme_minimal()

cursus_users$student <- as.numeric(as.factor(cursus_users$Student)) - 1

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
    "PC1",
    "PC2",
    "PC3")]), digits = 2)

cursus_users[which(cursus_users$login == "mbarut"), "PC1"]
cursus_users[which(cursus_users$login == "mbarut"), "PC2"]

(pc1_bycampusstudentmonth = cursus_users %>% group_by(campus, student, month) %>% summarise(n = n(), mean = mean(PC1), sd = sd(PC1), min = min(PC1), max = max(PC1)))

(p_dot_pc1_bycampuslevelstudent <- ggplot(cursus_users, aes(x = Student, y = PC1))) + 
  geom_dotplot(binwidth = 0.1, binaxis = 'y', stackdir = 'center') +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", color = "#00BABC", width = 0.8, size = 2, alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 15, color = "#00BABC", size = 3, alpha = 1) +
  facet_wrap(~ campus + month) +
  theme_minimal()


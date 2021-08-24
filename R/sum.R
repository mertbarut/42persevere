#Libraries
library(psych)
library(dplyr)
library(ggplot2)
library(Hmisc)
library(reshape2)
library(extrafont)

loadfonts(device = "win")
# This .r file summarizes and plots the data obtained after data manipulation is complete.

# Summarize level & plot by campus & studentship & piscine month
(level_bycampusstudentmonth = cursus_users %>% group_by(campus, Student, month) %>% summarise(n = n(),
                                                                                              mean = mean(level), sd = sd(level),
                                                                                              min = min(level), max = max(level)))
### Create error bars
#(p_bar_campus_bylevelstudent <- ggplot(level_bycampusstudentmonth, aes(x = Student, y = mean, fill = Student))) +
#  geom_bar(stat = "identity", color = "black", position = position_dodge()) +
#  geom_errorbar(aes(ymin = mean - sd, ymax = mean + sd), width = .2, position = position_dodge(.9)) +
#  labs(title = "Skill Level at the End of Piscine by Campus & Studentship & Piscine month", x = "Basecamp Campus", y = "Level") +
#  scale_fill_manual(values=c('#999999','#00BABC')) +
#  facet_wrap(~ campus + month) +
#  theme_minimal()
### Create dot plots
(p_dot_level_bycampusstudentmonth <- ggplot(cursus_users, aes(x = Student, y = level))) + 
  geom_dotplot(binwidth = 0.1, binaxis = 'y', stackdir = 'center', shape = 20) +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", color = "#00BABC", width = 1, size = 2, alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 15, color = "#00BABC", size = 3, alpha = 1) +
  facet_wrap(~ campus + month) +
  theme_minimal() +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 1)) +
  labs(title = "Skill Level at the end of Basecamp by Student Status\nGrouped by Campus and Piscine Month", x = "Student Status", y = "Skill Level")
### Create histograms
(p_hst_level_bycampusstudentmonth <- ggplot(data = cursus_users, aes(x = level, fill = Student))) + 
  geom_histogram(aes(y = ..count..), breaks = seq(0, 10, by = 0.5), alpha=.8, position = 'identity') +
  facet_wrap(~ campus + month) +
  theme_minimal()  +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 1)) +
  labs(title = "Participant Count by Student Status\nGrouped by Campus and Piscine Month", x = "Skill Level", y = "Count")
# Summarize total project attempts & plot by campus & studentship & piscine month
(attempts_bycampusstudentmonth = cursus_users %>% group_by(campus, Student, month) %>% summarise(n = n(),
  "I accept" = mean(a00_attempted), #sd_a00 = sd(a00_attempted),  min_a00 = min(a00_attempted), max_a00 = max(a00_attempted),
	"Shell 00" = mean(s00_attempted), #sd_s00 = sd(s00_attempted),  min_s00 = min(s00_attempted), max_s00 = max(s00_attempted),
	"Shell 01" = mean(s01_attempted), #sd_s01 = sd(s01_attempted),  min_s01 = min(s01_attempted), max_s01 = max(s01_attempted),
	"C 00" = mean(c00_attempted), #sd_c00 = sd(c00_attempted),  min_c00 = min(c00_attempted), max_c00 = max(c00_attempted),
	"C 01" = mean(c01_attempted), #sd_c01 = sd(c01_attempted),  min_c01 = min(c01_attempted), max_c01 = max(c01_attempted),
	"C 02" = mean(c02_attempted), #sd_c02 = sd(c02_attempted),  min_c02 = min(c02_attempted), max_c02 = max(c02_attempted),
	"C 03" = mean(c03_attempted), #sd_c03 = sd(c03_attempted),  min_c03 = min(c03_attempted), max_c03 = max(c03_attempted),
	"C 04" = mean(c04_attempted), #sd_c04 = sd(c04_attempted),  min_c04 = min(c04_attempted), max_c04 = max(c04_attempted),
	"C 05" = mean(c05_attempted), #sd_c05 = sd(c05_attempted),  min_c05 = min(c05_attempted), max_c05 = max(c05_attempted),
	"C 06" = mean(c06_attempted), #sd_c06 = sd(c06_attempted),  min_c06 = min(c06_attempted), max_c06 = max(c06_attempted),
	"C 07" = mean(c07_attempted), #sd_c07 = sd(c07_attempted),  min_c07 = min(c07_attempted), max_c07 = max(c07_attempted),
	"C 08" = mean(c08_attempted), #sd_c08 = sd(c08_attempted),  min_c08 = min(c08_attempted), max_c08 = max(c08_attempted),
	"C 09" = mean(c09_attempted), #sd_c09 = sd(c09_attempted),  min_c09 = min(c09_attempted), max_c09 = max(c09_attempted),
	"C 10" = mean(c10_attempted), #sd_c10 = sd(c10_attempted),  min_c10 = min(c10_attempted), max_c10 = max(c10_attempted),
	"C 11" = mean(c11_attempted), #sd_c11 = sd(c11_attempted),  min_c11 = min(c11_attempted), max_c11 = max(c11_attempted),
	"C 12" = mean(c12_attempted), #sd_c12 = sd(c12_attempted),  min_c12 = min(c12_attempted), max_c12 = max(c12_attempted),
	"C 13" = mean(c13_attempted), #sd_c13 = sd(c13_attempted),  min_c13 = min(c13_attempted), max_c13 = max(c13_attempted),
	"Rush 00" = mean(r00_attempted), #sd_r00 = sd(r00_attempted),  min_r00 = min(r00_attempted), max_r00 = max(r00_attempted),
	"Rush 01" = mean(r01_attempted), #sd_r01 = sd(r01_attempted),  min_r01 = min(r01_attempted), max_r01 = max(r01_attempted),
	"Exam 00" = mean(e00_attempted), #sd_e00 = sd(e00_attempted),  min_e00 = min(e00_attempted), max_e00 = max(e00_attempted),
	"Exam 01" = mean(e01_attempted), #sd_e01 = sd(e01_attempted),  min_e01 = min(e01_attempted), max_e01 = max(e01_attempted),
	"Final Exam" = mean(e02_attempted)  #sd_e02 = sd(e02_attempted),  min_e02 = min(e02_attempted), max_e02 = max(e02_attempted)                                            )
  )
)
### wide -> tall
attempts <- melt(attempts_bycampusstudentmonth, id.vars = c("campus", "Student", "month"))
attempts
attempts <- attempts[-c(1:12),]
attempts$value <- as.numeric(attempts$value)
### Create line plots
(p_lin_attempts_bycampuslevelstudent <- ggplot(attempts, aes(x = variable, y = value, group = Student))) + 
  geom_line(aes(color = Student)) +
  geom_point(aes(color = Student)) +
  geom_smooth(aes(color = Student, fill = Student), alpha=0.1, method = "auto", se = TRUE, fullrange = FALSE, level = 0.95) +
  facet_wrap(~ campus + month) +
  theme_minimal() +
  theme(legend.position="right") +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)) +
  labs(title = "Project Attempts per individual Project by Student Status\nGrouped by Campus and Piscine Month", x = "Projects", y = "Proportion of Participants who Attended the Project")
### Create dot plots
(p_dot_attempts_bycampuslevelstudent <- ggplot(cursus_users, aes(x = Student, y = total_attempted))) + 
    geom_dotplot(binwidth = 0.25, binaxis = 'y', stackdir = 'center', shape = 20) +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", color = "#00BABC", width = 1, size = 2, alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 15, color = "#00BABC", size = 3, alpha = 1) +
  facet_wrap(~ campus + month) +
  theme_minimal()
### Create histograms
(p_hst_attempts_bycampuslevelstudent <- ggplot(data = cursus_users, aes(x = total_attempted, fill = Student))) + 
  geom_histogram(aes(y = ..count..), breaks = seq(0, 20, by = 1), alpha=.8, position = 'identity') +
  facet_wrap(~ campus + month) +
  theme_minimal()

# Summarize total project validations & plot by campus & studentship & piscine month
(validations_bycampusstudentmonth = cursus_users %>% group_by(campus, Student, month) %>% summarise(n = n(),
    "I accept" = mean(a00_validated), #sd_a00 = sd(a00_attempted),  min_a00 = min(a00_attempted), max_a00 = max(a00_attempted),
    "Shell 00" = mean(s00_validated), #sd_s00 = sd(s00_attempted),  min_s00 = min(s00_attempted), max_s00 = max(s00_attempted),
    "Shell 01" = mean(s01_validated), #sd_s01 = sd(s01_attempted),  min_s01 = min(s01_attempted), max_s01 = max(s01_attempted),
    "C 00" = mean(c00_validated), #sd_c00 = sd(c00_attempted),  min_c00 = min(c00_attempted), max_c00 = max(c00_attempted),
    "C 01" = mean(c01_validated), #sd_c01 = sd(c01_attempted),  min_c01 = min(c01_attempted), max_c01 = max(c01_attempted),
    "C 02" = mean(c02_validated), #sd_c02 = sd(c02_attempted),  min_c02 = min(c02_attempted), max_c02 = max(c02_attempted),
    "C 03" = mean(c03_validated), #sd_c03 = sd(c03_attempted),  min_c03 = min(c03_attempted), max_c03 = max(c03_attempted),
    "C 04" = mean(c04_validated), #sd_c04 = sd(c04_attempted),  min_c04 = min(c04_attempted), max_c04 = max(c04_attempted),
    "C 05" = mean(c05_validated), #sd_c05 = sd(c05_attempted),  min_c05 = min(c05_attempted), max_c05 = max(c05_attempted),
    "C 06" = mean(c06_validated), #sd_c06 = sd(c06_attempted),  min_c06 = min(c06_attempted), max_c06 = max(c06_attempted),
    "C 07" = mean(c07_validated), #sd_c07 = sd(c07_attempted),  min_c07 = min(c07_attempted), max_c07 = max(c07_attempted),
    "C 08" = mean(c08_validated), #sd_c08 = sd(c08_attempted),  min_c08 = min(c08_attempted), max_c08 = max(c08_attempted),
    "C 09" = mean(c09_validated), #sd_c09 = sd(c09_attempted),  min_c09 = min(c09_attempted), max_c09 = max(c09_attempted),
    "C 10" = mean(c10_validated), #sd_c10 = sd(c10_attempted),  min_c10 = min(c10_attempted), max_c10 = max(c10_attempted),
    "C 11" = mean(c11_validated), #sd_c11 = sd(c11_attempted),  min_c11 = min(c11_attempted), max_c11 = max(c11_attempted),
    "C 12" = mean(c12_validated), #sd_c12 = sd(c12_attempted),  min_c12 = min(c12_attempted), max_c12 = max(c12_attempted),
    "C 13" = mean(c13_validated), #sd_c13 = sd(c13_attempted),  min_c13 = min(c13_attempted), max_c13 = max(c13_attempted),
    "Rush 00" = mean(r00_validated), #sd_r00 = sd(r00_attempted),  min_r00 = min(r00_attempted), max_r00 = max(r00_attempted),
    "Rush 01" = mean(r01_validated), #sd_r01 = sd(r01_attempted),  min_r01 = min(r01_attempted), max_r01 = max(r01_attempted),
    "Exam 00" = mean(e00_validated), #sd_e00 = sd(e00_attempted),  min_e00 = min(e00_attempted), max_e00 = max(e00_attempted),
    "Exam 01" = mean(e01_validated), #sd_e01 = sd(e01_attempted),  min_e01 = min(e01_attempted), max_e01 = max(e01_attempted),
    "Final Exam" = mean(e02_validated)  #sd_e02 = sd(e02_attempted),  min_e02 = min(e02_attempted), max_e02 = max(e02_attempted)                                            )
)
)
### wide -> tall
validations <- melt(validations_bycampusstudentmonth, id.vars = c("campus", "Student", "month"))
validations <- validations[-c(1:12),]
validations$value <- as.numeric(validations$value)
### Create line plots
(p_lin_validations_bycampuslevelstudent <- ggplot(validations, aes(x = variable, y = value, group = Student))) + 
  geom_line(aes(color = Student)) +
  geom_point(aes(color = Student)) +
  geom_smooth(aes(color = Student, fill = Student), alpha=0.1, method = "auto", se = TRUE, fullrange = FALSE, level = 0.95) +
  facet_wrap(~ campus + month) +
  theme_minimal() +
  theme(legend.position="right") +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)) +
  labs(title = "Project Validations per individual Project by Student Status\nGrouped by Campus and Piscine Month", x = "Projects", y = "Proportion of Participants who Validated the Project")
### Create dot plots
(p_dot_validations_bycampuslevelstudent <- ggplot(cursus_users, aes(x = Student, y = total_validated))) + 
    geom_dotplot(binwidth = 0.25, binaxis = 'y', stackdir = 'center', shape = 20) +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", color = "#00BABC", width = 1, size = 2, alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 15, color = "#00BABC", size = 3, alpha = 1) +
  facet_wrap(~ campus + month) +
  theme_minimal()
### Create histograms
(p_hst_validations_bycampuslevelstudent <- ggplot(data = cursus_users, aes(x = total_validated, fill = Student))) + 
  geom_histogram(aes(y = ..count..), breaks = seq(0, 20, by = 1), alpha=.8, position = 'identity') +
  facet_wrap(~ campus + month) +
  theme_minimal()

# Summarize retries
(tries_bycampusstudentmonth = cursus_users %>% group_by(campus, Student, month) %>% summarise(n = n(),
                                                                                              mean = mean(total_tries), sd = sd(total_tries),
                                                                                              min = min(total_tries), max = max(total_tries)))
### Create dot plots
(p_dot_retries_bycampuslevelstudent <- ggplot(cursus_users, aes(x = Student, y = total_tries))) + 
  geom_dotplot(binwidth = 0.25, binaxis = 'y', stackdir = 'center', shape = 20) +
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), geom = "errorbar", color = "#00BABC", width = 1, size = 2, alpha = 0.5) +
  stat_summary(fun = mean, geom = "point", shape = 15, color = "#00BABC", size = 3, alpha = 1) +
  facet_wrap(~ campus + month) +
  theme_minimal()
### wide -> tall
(tries_bycampusstudentmonth = cursus_users %>% group_by(campus, Student, month) %>% summarise(n = n(),
    "Shell 00" = mean(s00_retries), #sd_s00 = sd(s00_attempted),  min_s00 = min(s00_attempted), max_s00 = max(s00_attempted),
    "Shell 01" = mean(s01_retries), #sd_s01 = sd(s01_attempted),  min_s01 = min(s01_attempted), max_s01 = max(s01_attempted),
    "C 00" = mean(c00_retries), #sd_c00 = sd(c00_attempted),  min_c00 = min(c00_attempted), max_c00 = max(c00_attempted),
    "C 01" = mean(c01_retries), #sd_c01 = sd(c01_attempted),  min_c01 = min(c01_attempted), max_c01 = max(c01_attempted),
    "C 02" = mean(c02_retries), #sd_c02 = sd(c02_attempted),  min_c02 = min(c02_attempted), max_c02 = max(c02_attempted),
    "C 03" = mean(c03_retries), #sd_c03 = sd(c03_attempted),  min_c03 = min(c03_attempted), max_c03 = max(c03_attempted),
    "C 04" = mean(c04_retries), #sd_c04 = sd(c04_attempted),  min_c04 = min(c04_attempted), max_c04 = max(c04_attempted),
    "C 05" = mean(c05_retries), #sd_c05 = sd(c05_attempted),  min_c05 = min(c05_attempted), max_c05 = max(c05_attempted),
    "C 06" = mean(c06_retries), #sd_c06 = sd(c06_attempted),  min_c06 = min(c06_attempted), max_c06 = max(c06_attempted),
    "C 07" = mean(c07_retries), #sd_c07 = sd(c07_attempted),  min_c07 = min(c07_attempted), max_c07 = max(c07_attempted),
    "C 08" = mean(c08_retries), #sd_c08 = sd(c08_attempted),  min_c08 = min(c08_attempted), max_c08 = max(c08_attempted),
    "C 09" = mean(c09_retries), #sd_c09 = sd(c09_attempted),  min_c09 = min(c09_attempted), max_c09 = max(c09_attempted),
    "C 10" = mean(c10_retries), #sd_c10 = sd(c10_attempted),  min_c10 = min(c10_attempted), max_c10 = max(c10_attempted),
    "C 11" = mean(c11_retries), #sd_c11 = sd(c11_attempted),  min_c11 = min(c11_attempted), max_c11 = max(c11_attempted),
    "C 12" = mean(c12_retries), #sd_c12 = sd(c12_attempted),  min_c12 = min(c12_attempted), max_c12 = max(c12_attempted),
    "C 13" = mean(c13_retries), #sd_c13 = sd(c13_attempted),  min_c13 = min(c13_attempted), max_c13 = max(c13_attempted),
#    "Rush 00" = mean(r00_retries), #sd_r00 = sd(r00_attempted),  min_r00 = min(r00_attempted), max_r00 = max(r00_attempted),
#    "Rush 01" = mean(r01_retries), #sd_r01 = sd(r01_attempted),  min_r01 = min(r01_attempted), max_r01 = max(r01_attempted),
#    "Exam 00" = mean(e00_retries), #sd_e00 = sd(e00_attempted),  min_e00 = min(e00_attempted), max_e00 = max(e00_attempted),
#    "Exam 01" = mean(e01_retries), #sd_e01 = sd(e01_attempted),  min_e01 = min(e01_attempted), max_e01 = max(e01_attempted),
#    "Final Exam" = mean(e02_retries)  #sd_e02 = sd(e02_attempted),  min_e02 = min(e02_attempted), max_e02 = max(e02_attempted)                                            )
)
)
### wide -> tall
tries <- melt(tries_bycampusstudentmonth, id.vars = c("campus", "Student", "month"))
tries <- tries[-c(1:12),]
tries$value <- as.numeric(tries$value)
### Create line plots
(p_lin_tries_bycampuslevelstudent <- ggplot(tries, aes(x = variable, y = value, group = Student))) + 
  geom_line(aes(color = Student)) +
  geom_point(aes(color = Student)) +
  geom_smooth(aes(color = Student, fill = Student), alpha=0.1, method = "auto", se = TRUE, fullrange = FALSE, level = 0.95) +
  facet_wrap(~ campus + month) +
  theme_minimal() +
  theme(legend.position="right") +
  theme(text = element_text(size = 12,  family = "Courier New"), axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)) +
  labs(title = "Project Tries per individual Project by Student Status\nGrouped by Campus and Piscine Month", x = "Projects", y = "Proportion of Participants who Tried the Project")
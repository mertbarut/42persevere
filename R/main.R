#Libraries
library(dplyr)

#Set the working directory
# setwd("//wsl.localhost/Ubuntu/home/mertbarut/42analytics")

# This .r file imports and manipulates all .csv files, 
# and produces a complete .csv file in data/csv named data_complete.csv 

# Student IDs: 83398 - 88141


# Import the data
{
	### Users in specific campus (everyone who attended the basecamp grouped by the campus)
	heilbronn_users = read.csv("data/csv/heilbronn_users.csv")
	wolfsburg_users = read.csv("data/csv/wolfsburg_users.csv")
	### Students in campus
	heilbronn_students = read.csv("data/csv/heilbronn_students.csv")
	wolfsburg_students = read.csv("data/csv/wolfsburg_students.csv")
	heilbronn_students_id = read.csv("data/csv/heilbronn_students_id.csv")
	wolfsburg_students_id = read.csv("data/csv/wolfsburg_students_id.csv")
	### All users
	cursus_users = read.csv("data/csv/cursus_users.csv")
	cursus_users_id = read.csv("data/csv/cursus_users_id.csv")
	### All basecamp projects
	a00 = read.csv("data/csv/a00.csv")
	s00 = read.csv("data/csv/s00.csv")
	s01 = read.csv("data/csv/s01.csv")
	c00 = read.csv("data/csv/c00.csv")
	c01 = read.csv("data/csv/c01.csv")
	c02 = read.csv("data/csv/c02.csv")
	c03 = read.csv("data/csv/c03.csv")
	c04 = read.csv("data/csv/c04.csv")
	c05 = read.csv("data/csv/c05.csv")
	c06 = read.csv("data/csv/c06.csv")
	c07 = read.csv("data/csv/c07.csv")
	c08 = read.csv("data/csv/c08.csv")
	c09 = read.csv("data/csv/c09.csv")
	c10 = read.csv("data/csv/c10.csv")
	c11 = read.csv("data/csv/c11.csv")
	c12 = read.csv("data/csv/c12.csv")
	c13 = read.csv("data/csv/c13.csv")
	r00 = read.csv("data/csv/r00.csv")
	r01 = read.csv("data/csv/r01.csv")
	e00 = read.csv("data/csv/e00.csv")
	e01 = read.csv("data/csv/e01.csv")
	e02 = read.csv("data/csv/e02.csv")
	### All users who attempted a specific project
	a00_users_id = read.csv("data/csv/a00_users.csv")
	s00_users_id = read.csv("data/csv/s00_users.csv")
	s01_users_id = read.csv("data/csv/s01_users.csv")
	c00_users_id = read.csv("data/csv/c00_users.csv")
	c01_users_id = read.csv("data/csv/c01_users.csv")
	c02_users_id = read.csv("data/csv/c02_users.csv")
	c03_users_id = read.csv("data/csv/c03_users.csv")
	c04_users_id = read.csv("data/csv/c04_users.csv")
	c05_users_id = read.csv("data/csv/c05_users.csv")
	c06_users_id = read.csv("data/csv/c06_users.csv")
	c07_users_id = read.csv("data/csv/c07_users.csv")
	c08_users_id = read.csv("data/csv/c08_users.csv")
	c09_users_id = read.csv("data/csv/c09_users.csv")
	c10_users_id = read.csv("data/csv/c10_users.csv")
	c11_users_id = read.csv("data/csv/c11_users.csv")
	c12_users_id = read.csv("data/csv/c12_users.csv")
	c13_users_id = read.csv("data/csv/c13_users.csv")
	r00_users_id = read.csv("data/csv/r00_users.csv")
	r01_users_id = read.csv("data/csv/r01_users.csv")
	e00_users_id = read.csv("data/csv/e00_users.csv")
	e01_users_id = read.csv("data/csv/e01_users.csv")
	e02_users_id = read.csv("data/csv/e02_users.csv")
	#?# Achievements
	#?# Achievements users
	#?# Campus users activities
	### Evaluations
	evaluations = read.csv("data/csv/evaluations.csv")
	#?# Events users
}
# Base merge operations
{
	cursus_users <- merge(cursus_users, cursus_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	heilbronn_students <- merge(heilbronn_students, heilbronn_students_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	wolfsburg_students <- merge(wolfsburg_students, wolfsburg_students_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	a00 <- merge(a00, a00_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	s00 <- merge(s00, s00_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	s01 <- merge(s01, s01_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c00 <- merge(c00, c00_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c01 <- merge(c01, c01_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c02 <- merge(c02, c02_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c03 <- merge(c03, c03_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c04 <- merge(c04, c04_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c05 <- merge(c05, c05_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c06 <- merge(c06, c06_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c07 <- merge(c07, c07_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c08 <- merge(c08, c08_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c09 <- merge(c09, c09_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c10 <- merge(c10, c10_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c11 <- merge(c11, c11_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c12 <- merge(c12, c12_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	c13 <- merge(c13, c13_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	r00 <- merge(r00, r00_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	r01 <- merge(r01, r01_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	e00 <- merge(e00, e00_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	e01 <- merge(e01, e01_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
	e02 <- merge(e02, e02_users_id, by = 0, all = TRUE, suffixes = c(".x",".y"))
}
# Drop & rename columns
{
	cursus_users <- cursus_users %>%
	  select(id.y, level, login, begin_at, end_at) %>%
	  rename(id_user = id.y)
  evaluations <- evaluations %>%
    select(id_user, evals_coded, 8:23, 25:38, 40:51, 53:64, 66:81, 83:92, 94:99, 101:110, 112:117, 119:126, 128:131, 128:139, 141:148, 150:151, 153:154) %>%
    rename()
	a00 <- a00 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	s00 <- s00 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	s01 <- s01 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c00 <- c00 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c01 <- c01 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c02 <- c02 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c03 <- c03 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c04 <- c04 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c05 <- c05 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c06 <- c06 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c07 <- c07 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c08 <- c08 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c09 <- c09 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c10 <- c10 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c11 <- c11 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c12 <- c12 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	c13 <- c13 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	r00 <- r00 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	r01 <- r01 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	e00 <- e00 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	e01 <- e01 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
	e02 <- e02 %>%
	  select(id.y, occurrence, final_mark, status, validated., current_team_id, marked, marked_at, created_at.x, updated_at.x, login) %>%
	  rename(id_user = id.y, retries = occurrence, valid = status, validated = validated., team_id = current_team_id, begin_at = created_at.x, end_at = updated_at.x)
}
# Prefix columns with project names
{
	names(a00) <- paste0("a00_", names(a00)[0:10]); names(a00)[11] <- paste0("login")
	names(s00) <- paste0("s00_", names(s00)[0:10]); names(s00)[11] <- paste0("login")
	names(s01) <- paste0("s01_", names(s01)[0:10]); names(s01)[11] <- paste0("login")
	names(c00) <- paste0("c00_", names(c00)[0:10]); names(c00)[11] <- paste0("login")
	names(c01) <- paste0("c01_", names(c01)[0:10]); names(c01)[11] <- paste0("login")
	names(c02) <- paste0("c02_", names(c02)[0:10]); names(c02)[11] <- paste0("login")
	names(c03) <- paste0("c03_", names(c03)[0:10]); names(c03)[11] <- paste0("login")
	names(c04) <- paste0("c04_", names(c04)[0:10]); names(c04)[11] <- paste0("login")
	names(c05) <- paste0("c05_", names(c05)[0:10]); names(c05)[11] <- paste0("login")
	names(c06) <- paste0("c06_", names(c06)[0:10]); names(c06)[11] <- paste0("login")
	names(c07) <- paste0("c07_", names(c07)[0:10]); names(c07)[11] <- paste0("login")
	names(c08) <- paste0("c08_", names(c08)[0:10]); names(c08)[11] <- paste0("login")
	names(c09) <- paste0("c09_", names(c09)[0:10]); names(c09)[11] <- paste0("login")
	names(c10) <- paste0("c10_", names(c10)[0:10]); names(c10)[11] <- paste0("login")
	names(c11) <- paste0("c11_", names(c11)[0:10]); names(c11)[11] <- paste0("login")
	names(c12) <- paste0("c12_", names(c12)[0:10]); names(c12)[11] <- paste0("login")
	names(c13) <- paste0("c13_", names(c13)[0:10]); names(c13)[11] <- paste0("login")
	names(r00) <- paste0("r00_", names(r00)[0:10]); names(r00)[11] <- paste0("login")
	names(r01) <- paste0("r01_", names(r01)[0:10]); names(r01)[11] <- paste0("login")
	names(e00) <- paste0("e00_", names(e00)[0:10]); names(e00)[11] <- paste0("login")
	names(e01) <- paste0("e01_", names(e01)[0:10]); names(e01)[11] <- paste0("login")
	names(e02) <- paste0("e02_", names(e02)[0:10]); names(e02)[11] <- paste0("login")
}
# Remove objects in the environment
{
	remove(a00_users_id, e00_users_id, e01_users_id, e02_users_id,
	       c00_users_id, c01_users_id, c02_users_id, c03_users_id,
	       c04_users_id, c05_users_id, c06_users_id, c07_users_id,
	       c08_users_id, c09_users_id, c10_users_id, c11_users_id,
	       c12_users_id, c13_users_id, r00_users_id, r01_users_id,
	       s00_users_id, s01_users_id, cursus_users_id)
}
# Remove duplicate rows from cursus_users
cursus_users = cursus_users[!duplicated(cursus_users), ]
# Join every project to cursus_users
{
	cursus_users <- full_join(cursus_users, a00[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, s00[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, s01[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c00[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c01[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c02[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c03[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c04[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c05[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c06[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c07[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c08[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c09[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c10[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c11[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c12[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, c13[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, r00[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, r01[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, e00[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, e01[,2:11], by = "login", suffix = c("", ""))
	cursus_users <- full_join(cursus_users, e02[,2:11], by = "login", suffix = c("", ""))
}
# Join every student data specific to campuses to cursus_users
cursus_users <- full_join(cursus_users, heilbronn_students[, c(3, 18)], by = "login", suffix = c("", ".h"))
cursus_users <- full_join(cursus_users, wolfsburg_students[, c(3, 18)], by = "login", suffix = c("", ".w"))
cursus_users <- cursus_users %>% mutate(Student = case_when((cursus_users$grade == "Learner" | cursus_users$grade.w == "Learner") ~ "Yes", (is.na(cursus_users$grade.w) == TRUE) & (is.na(cursus_users$grade) == TRUE) ~ "No"))
# Joined evaluators with those who was evaluated
cursus_users <- full_join(cursus_users, evaluations, by = "id_user", suffix = c("", ""))
# Mutate operations
### Campuses
{
  heilbronn_users <- heilbronn_users %>% mutate(campus = "Heilbronn")
  wolfsburg_users <- heilbronn_users %>% mutate(campus = "Wolfsburg")
}
### Piscine months
cursus_users <- cursus_users %>%
  mutate(month = case_when(
    as.Date(cursus_users$begin_at[]) == "2021-02-08" ~ "02-2021 (February)",
    as.Date(cursus_users$begin_at[]) == "2021-03-08" | as.Date(cursus_users$begin_at[]) == "2021-03-15" ~ "03-2021 (March)",
    as.Date(cursus_users$begin_at[]) == "2021-04-12" | as.Date(cursus_users$begin_at[]) == "2021-04-19" ~ "04-2021 (April)"
    )
    )
### All project attempts
{
	cursus_users <- cursus_users %>% mutate(a00_attempted = case_when(cursus_users$a00_valid == "finished" ~ 1, is.na(cursus_users$a00_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(s00_attempted = case_when(cursus_users$s00_valid == "finished" ~ 1, is.na(cursus_users$s00_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(s01_attempted = case_when(cursus_users$s01_valid == "finished" ~ 1, is.na(cursus_users$s01_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c00_attempted = case_when(cursus_users$c00_valid == "finished" ~ 1, is.na(cursus_users$c00_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c01_attempted = case_when(cursus_users$c01_valid == "finished" ~ 1, is.na(cursus_users$c01_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c02_attempted = case_when(cursus_users$c02_valid == "finished" ~ 1, is.na(cursus_users$c02_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c03_attempted = case_when(cursus_users$c03_valid == "finished" ~ 1, is.na(cursus_users$c03_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c04_attempted = case_when(cursus_users$c04_valid == "finished" ~ 1, is.na(cursus_users$c04_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c05_attempted = case_when(cursus_users$c05_valid == "finished" ~ 1, is.na(cursus_users$c05_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c06_attempted = case_when(cursus_users$c06_valid == "finished" ~ 1, is.na(cursus_users$c06_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c07_attempted = case_when(cursus_users$c07_valid == "finished" ~ 1, is.na(cursus_users$c07_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c08_attempted = case_when(cursus_users$c08_valid == "finished" ~ 1, is.na(cursus_users$c08_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c09_attempted = case_when(cursus_users$c09_valid == "finished" ~ 1, is.na(cursus_users$c09_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c10_attempted = case_when(cursus_users$c10_valid == "finished" ~ 1, is.na(cursus_users$c10_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c11_attempted = case_when(cursus_users$c11_valid == "finished" ~ 1, is.na(cursus_users$c11_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c12_attempted = case_when(cursus_users$c12_valid == "finished" ~ 1, is.na(cursus_users$c12_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(c13_attempted = case_when(cursus_users$c13_valid == "finished" ~ 1, is.na(cursus_users$c13_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(r00_attempted = case_when(cursus_users$r00_valid == "finished" ~ 1, is.na(cursus_users$r00_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(r01_attempted = case_when(cursus_users$r01_valid == "finished" ~ 1, is.na(cursus_users$r01_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(e00_attempted = case_when(cursus_users$e00_valid == "finished" ~ 1, is.na(cursus_users$e00_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(e01_attempted = case_when(cursus_users$e01_valid == "finished" ~ 1, is.na(cursus_users$e01_valid) == TRUE ~ 0))
	cursus_users <- cursus_users %>% mutate(e02_attempted = case_when(cursus_users$e02_valid == "finished" ~ 1, is.na(cursus_users$e02_valid) == TRUE ~ 0))
  }
### All project validations (passes)
{
  cursus_users <- cursus_users %>% mutate(a00_validated = case_when(cursus_users$a00_validated == 1 ~ 1, is.na(cursus_users$a00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(s00_validated = case_when(cursus_users$s00_validated == 1 ~ 1, is.na(cursus_users$s00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(s01_validated = case_when(cursus_users$s01_validated == 1 ~ 1, is.na(cursus_users$s01_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c00_validated = case_when(cursus_users$c00_validated == 1 ~ 1, is.na(cursus_users$c00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c01_validated = case_when(cursus_users$c01_validated == 1 ~ 1, is.na(cursus_users$c01_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c02_validated = case_when(cursus_users$c02_validated == 1 ~ 1, is.na(cursus_users$c02_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c03_validated = case_when(cursus_users$c03_validated == 1 ~ 1, is.na(cursus_users$c03_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c04_validated = case_when(cursus_users$c04_validated == 1 ~ 1, is.na(cursus_users$c04_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c05_validated = case_when(cursus_users$c05_validated == 1 ~ 1, is.na(cursus_users$c05_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c06_validated = case_when(cursus_users$c06_validated == 1 ~ 1, is.na(cursus_users$c06_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c07_validated = case_when(cursus_users$c07_validated == 1 ~ 1, is.na(cursus_users$c07_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c08_validated = case_when(cursus_users$c08_validated == 1 ~ 1, is.na(cursus_users$c08_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c09_validated = case_when(cursus_users$c09_validated == 1 ~ 1, is.na(cursus_users$c09_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c10_validated = case_when(cursus_users$c10_validated == 1 ~ 1, is.na(cursus_users$c10_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c11_validated = case_when(cursus_users$c11_validated == 1 ~ 1, is.na(cursus_users$c11_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c12_validated = case_when(cursus_users$c12_validated == 1 ~ 1, is.na(cursus_users$c12_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c13_validated = case_when(cursus_users$c13_validated == 1 ~ 1, is.na(cursus_users$c13_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(r00_validated = case_when(cursus_users$r00_validated == 1 ~ 1, is.na(cursus_users$r00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(r01_validated = case_when(cursus_users$r01_validated == 1 ~ 1, is.na(cursus_users$r01_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e00_validated = case_when(cursus_users$e00_validated == 1 ~ 1, is.na(cursus_users$e00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e01_validated = case_when(cursus_users$e01_validated == 1 ~ 1, is.na(cursus_users$e01_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e02_validated = case_when(cursus_users$e02_validated == 1 ~ 1, is.na(cursus_users$e02_validated) == TRUE ~ 0))
}
### All project tries (first attempt + reattempts) - except a00
{
  cursus_users <- cursus_users %>% mutate(s00_retries = case_when(cursus_users$s00_team_id != 0 ~ s00_retries + 1, cursus_users$s00_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(s01_retries = case_when(cursus_users$s01_team_id != 0 ~ s01_retries + 1, cursus_users$s01_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c00_retries = case_when(cursus_users$c00_team_id != 0 ~ c00_retries + 1, cursus_users$c00_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c01_retries = case_when(cursus_users$c01_team_id != 0 ~ c01_retries + 1, cursus_users$c01_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c02_retries = case_when(cursus_users$c02_team_id != 0 ~ c02_retries + 1, cursus_users$c02_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c03_retries = case_when(cursus_users$c03_team_id != 0 ~ c03_retries + 1, cursus_users$c03_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c04_retries = case_when(cursus_users$c04_team_id != 0 ~ c04_retries + 1, cursus_users$c04_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c05_retries = case_when(cursus_users$c05_team_id != 0 ~ c05_retries + 1, cursus_users$c05_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c06_retries = case_when(cursus_users$c06_team_id != 0 ~ c06_retries + 1, cursus_users$c06_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c07_retries = case_when(cursus_users$c07_team_id != 0 ~ c07_retries + 1, cursus_users$c07_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c08_retries = case_when(cursus_users$c08_team_id != 0 ~ c08_retries + 1, cursus_users$c08_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c09_retries = case_when(cursus_users$c09_team_id != 0 ~ c09_retries + 1, cursus_users$c09_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c10_retries = case_when(cursus_users$c10_team_id != 0 ~ c10_retries + 1, cursus_users$c10_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c11_retries = case_when(cursus_users$c11_team_id != 0 ~ c11_retries + 1, cursus_users$c11_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c12_retries = case_when(cursus_users$c12_team_id != 0 ~ c12_retries + 1, cursus_users$c12_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(c13_retries = case_when(cursus_users$c13_team_id != 0 ~ c13_retries + 1, cursus_users$c13_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(r00_retries = case_when(cursus_users$r00_team_id != 0 ~ r00_retries + 1, cursus_users$r00_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(r01_retries = case_when(cursus_users$r01_team_id != 0 ~ r01_retries + 1, cursus_users$r01_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(e00_retries = case_when(cursus_users$e00_team_id != 0 ~ e00_retries + 1, cursus_users$e00_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(e01_retries = case_when(cursus_users$e01_team_id != 0 ~ e01_retries + 1, cursus_users$e01_team_id == 0 ~ 0))
  cursus_users <- cursus_users %>% mutate(e02_retries = case_when(cursus_users$e02_team_id != 0 ~ e02_retries + 1, cursus_users$e02_team_id == 0 ~ 0))
}
### Replace every NA with 0
#cursus_users[is.na(cursus_users)] <- 0
### Create a variable for total attempts & validations
{
	cursus_users <- cursus_users %>% mutate(total_attempted = a00_attempted + s00_attempted + s01_attempted + c00_attempted + c01_attempted + 
														  c02_attempted + c03_attempted + c04_attempted + c05_attempted + c06_attempted + 
														  c07_attempted + c08_attempted + c09_attempted + c10_attempted + c11_attempted + 
														  c12_attempted + c13_attempted + r00_attempted + r01_attempted + e00_attempted + 
														  e01_attempted + e02_attempted)
	cursus_users <- cursus_users %>% mutate(total_acs_attempted = a00_attempted + s00_attempted + s01_attempted + c00_attempted + c01_attempted + 
														  c02_attempted + c03_attempted + c04_attempted + c05_attempted + c06_attempted + 
														  c07_attempted + c08_attempted + c09_attempted + c10_attempted + c11_attempted + 
														  c12_attempted + c13_attempted)
	cursus_users <- cursus_users %>% mutate(total_r_attempted = r00_attempted + r01_attempted)
	cursus_users <- cursus_users %>% mutate(total_e_attempted = e00_attempted + e01_attempted + e02_attempted)
	cursus_users <- cursus_users %>% mutate(total_validated = a00_validated + s00_validated + s01_validated + c00_validated + c01_validated + 
														  c02_validated + c03_validated + c04_validated + c05_validated + c06_validated + 
														  c07_validated + c08_validated + c09_validated + c10_validated + c11_validated + 
														  c12_validated + c13_validated + r00_validated + r01_validated + e00_validated + 
														  e01_validated + e02_validated)
	cursus_users <- cursus_users %>% mutate(total_acs_validated = a00_validated + s00_validated + s01_validated + c00_validated + c01_validated + 
														  c02_validated + c03_validated + c04_validated + c05_validated + c06_validated + 
														  c07_validated + c08_validated + c09_validated + c10_validated + c11_validated + 
														  c12_validated + c13_validated)
	cursus_users <- cursus_users %>% mutate(total_r_validated = r00_validated + r01_validated)
	cursus_users <- cursus_users %>% mutate(total_e_validated = e00_validated + e01_validated + e02_validated)
}
### All project tries
cursus_users <- cursus_users %>% mutate(total_tries = s00_retries + s01_retries + c00_retries + c01_retries + 
                                          c02_retries + c03_retries + c04_retries + c05_retries + c06_retries + 
                                          c07_retries + c08_retries + c09_retries + c10_retries + c11_retries + 
                                          c12_retries + c13_retries + r00_retries + r01_retries + e00_retries + 
                                          e01_retries + e02_retries)
### Evaluations



### Assign campus to users
cursus_users <- full_join(cursus_users, heilbronn_users[,2:7], by = "login", suffix = c("", ""))
cursus_users$campus[is.na(cursus_users$campus)] <- "Wolfsburg"
# Relocate columns
cursus_users <- cursus_users %>% relocate(month, .after = login)
cursus_users <- cursus_users %>% relocate(campus, .after = login)
cursus_users <- cursus_users %>% relocate(Student, .after = login)
# Drop rows with certain values
### Test/staff/duplicate/etc users
cursus_users <- cursus_users %>% filter(month != 0)						# These users have non-standard piscine start datetimes; thus are not valid
cursus_users <- cursus_users %>% filter(id_user != 84189)				# This user is a staff member; thus is not valid
cursus_users <- cursus_users %>% filter(level != 0)						# These users did not complete "I accept"; thus are not valid
cursus_users <- cursus_users %>% distinct(id_user, .keep_all = TRUE)	# Keep only unique users
# Export as .csv 
write.csv(cursus_users, "data/csv/data_complete.csv", row.names = FALSE)

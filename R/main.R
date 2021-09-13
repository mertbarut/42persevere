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
	### Achievements
	achievements = read.csv("data/csv/achievements.csv")
	### Achievements users
	achievements_users_330 = read.csv('data/csv/achievements_users_330.csv')
	achievements_users_331 = read.csv('data/csv/achievements_users_331.csv')
	achievements_users_332 = read.csv('data/csv/achievements_users_332.csv')
	achievements_users_333 = read.csv('data/csv/achievements_users_333.csv')
	achievements_users_334 = read.csv('data/csv/achievements_users_334.csv')
	achievements_users_335 = read.csv('data/csv/achievements_users_335.csv')
	achievements_users_336 = read.csv('data/csv/achievements_users_336.csv')
	achievements_users_337 = read.csv('data/csv/achievements_users_337.csv')
	achievements_users_338 = read.csv('data/csv/achievements_users_338.csv')
	achievements_users_339 = read.csv('data/csv/achievements_users_339.csv')
	achievements_users_340 = read.csv('data/csv/achievements_users_340.csv')
	achievements_users_341 = read.csv('data/csv/achievements_users_341.csv')
	achievements_users_342 = read.csv('data/csv/achievements_users_342.csv')
	achievements_users_343 = read.csv('data/csv/achievements_users_343.csv')
	achievements_users_344 = read.csv('data/csv/achievements_users_344.csv')
	achievements_users_345 = read.csv('data/csv/achievements_users_345.csv')
	achievements_users_347 = read.csv('data/csv/achievements_users_347.csv')
	achievements_users_348 = read.csv('data/csv/achievements_users_348.csv')
	achievements_users_353 = read.csv('data/csv/achievements_users_353.csv')
	achievements_users_354 = read.csv('data/csv/achievements_users_354.csv')
	achievements_users_355 = read.csv('data/csv/achievements_users_355.csv')
	achievements_users_356 = read.csv('data/csv/achievements_users_356.csv')
	achievements_users_357 = read.csv('data/csv/achievements_users_357.csv')
	achievements_users_358 = read.csv('data/csv/achievements_users_358.csv')
	achievements_users_359 = read.csv('data/csv/achievements_users_359.csv')
	achievements_users_360 = read.csv('data/csv/achievements_users_360.csv')
	achievements_users_361 = read.csv('data/csv/achievements_users_361.csv')
	achievements_users_362 = read.csv('data/csv/achievements_users_362.csv')
	achievements_users_363 = read.csv('data/csv/achievements_users_363.csv')
	achievements_users_364 = read.csv('data/csv/achievements_users_364.csv')
	achievements_users_365 = read.csv('data/csv/achievements_users_365.csv')
	achievements_users_366 = read.csv('data/csv/achievements_users_366.csv')
	achievements_users_367 = read.csv('data/csv/achievements_users_367.csv')
	achievements_users_368 = read.csv('data/csv/achievements_users_368.csv')
	achievements_users_369 = read.csv('data/csv/achievements_users_369.csv')
	achievements_users_374 = read.csv('data/csv/achievements_users_374.csv')
	achievements_users_375 = read.csv('data/csv/achievements_users_375.csv')
	achievements_users_376 = read.csv('data/csv/achievements_users_376.csv')
	achievements_users_438 = read.csv('data/csv/achievements_users_438.csv')
	### Evaluations
	evaluations = read.csv("data/csv/evaluations.csv")
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
    select(id_user, contains("peer"))
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
	achievements <- achievements %>%
	  select(id, name, description, tier, kind, campus)
	achievements_users_330 <- achievements_users_330 %>% select(achievement_id, user_id, login)
	achievements_users_331 <- achievements_users_331 %>% select(achievement_id, user_id, login)
	achievements_users_332 <- achievements_users_332 %>% select(achievement_id, user_id, login)
	achievements_users_333 <- achievements_users_333 %>% select(achievement_id, user_id, login)
	achievements_users_334 <- achievements_users_334 %>% select(achievement_id, user_id, login)
	achievements_users_335 <- achievements_users_335 %>% select(achievement_id, user_id, login)
	achievements_users_336 <- achievements_users_336 %>% select(achievement_id, user_id, login)
	achievements_users_337 <- achievements_users_337 %>% select(achievement_id, user_id, login)
	achievements_users_338 <- achievements_users_338 %>% select(achievement_id, user_id, login)
	achievements_users_339 <- achievements_users_339 %>% select(achievement_id, user_id, login)
	achievements_users_340 <- achievements_users_340 %>% select(achievement_id, user_id, login)
	achievements_users_341 <- achievements_users_341 %>% select(achievement_id, user_id, login)
	achievements_users_342 <- achievements_users_342 %>% select(achievement_id, user_id, login)
	achievements_users_343 <- achievements_users_343 %>% select(achievement_id, user_id, login)
	achievements_users_344 <- achievements_users_344 %>% select(achievement_id, user_id, login)
	achievements_users_345 <- achievements_users_345 %>% select(achievement_id, user_id, login)
	achievements_users_347 <- achievements_users_347 %>% select(achievement_id, user_id, login)
	achievements_users_348 <- achievements_users_348 %>% select(achievement_id, user_id, login)
	achievements_users_353 <- achievements_users_353 %>% select(achievement_id, user_id, login)
	achievements_users_354 <- achievements_users_354 %>% select(achievement_id, user_id, login)
	achievements_users_355 <- achievements_users_355 %>% select(achievement_id, user_id, login)
	achievements_users_356 <- achievements_users_356 %>% select(achievement_id, user_id, login)
	achievements_users_357 <- achievements_users_357 %>% select(achievement_id, user_id, login)
	achievements_users_358 <- achievements_users_358 %>% select(achievement_id, user_id, login)
	achievements_users_359 <- achievements_users_359 %>% select(achievement_id, user_id, login)
	achievements_users_360 <- achievements_users_360 %>% select(achievement_id, user_id, login)
	achievements_users_361 <- achievements_users_361 %>% select(achievement_id, user_id, login)
	achievements_users_362 <- achievements_users_362 %>% select(achievement_id, user_id, login)
	achievements_users_363 <- achievements_users_363 %>% select(achievement_id, user_id, login)
	achievements_users_364 <- achievements_users_364 %>% select(achievement_id, user_id, login)
	achievements_users_365 <- achievements_users_365 %>% select(achievement_id, user_id, login)
	achievements_users_366 <- achievements_users_366 %>% select(achievement_id, user_id, login)
	achievements_users_367 <- achievements_users_367 %>% select(achievement_id, user_id, login)
	achievements_users_368 <- achievements_users_368 %>% select(achievement_id, user_id, login)
	achievements_users_369 <- achievements_users_369 %>% select(achievement_id, user_id, login)
	achievements_users_374 <- achievements_users_374 %>% select(achievement_id, user_id, login)
	achievements_users_375 <- achievements_users_375 %>% select(achievement_id, user_id, login)
	achievements_users_376 <- achievements_users_376 %>% select(achievement_id, user_id, login)
	achievements_users_438 <- achievements_users_438 %>% select(achievement_id, user_id, login)
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
cursus_users <- cursus_users %>% mutate(Student = case_when((cursus_users$grade == "Learner" | cursus_users$grade.w == "Learner") ~ "Yes",
                                                            (is.na(cursus_users$grade.w) == TRUE) & (is.na(cursus_users$grade) == TRUE) ~ "No"))
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
cursus_users$a00_attempted[is.na(cursus_users$a00_attempted)] <- 0
cursus_users$s00_attempted[is.na(cursus_users$s00_attempted)] <- 0
cursus_users$s01_attempted[is.na(cursus_users$s01_attempted)] <- 0
cursus_users$c00_attempted[is.na(cursus_users$c00_attempted)] <- 0
cursus_users$c01_attempted[is.na(cursus_users$c01_attempted)] <- 0
cursus_users$c02_attempted[is.na(cursus_users$c02_attempted)] <- 0
cursus_users$c03_attempted[is.na(cursus_users$c03_attempted)] <- 0
cursus_users$c04_attempted[is.na(cursus_users$c04_attempted)] <- 0
cursus_users$c05_attempted[is.na(cursus_users$c05_attempted)] <- 0
cursus_users$c06_attempted[is.na(cursus_users$c06_attempted)] <- 0
cursus_users$c07_attempted[is.na(cursus_users$c07_attempted)] <- 0
cursus_users$c08_attempted[is.na(cursus_users$c08_attempted)] <- 0
cursus_users$c09_attempted[is.na(cursus_users$c09_attempted)] <- 0
cursus_users$c10_attempted[is.na(cursus_users$c10_attempted)] <- 0
cursus_users$c11_attempted[is.na(cursus_users$c11_attempted)] <- 0
cursus_users$c12_attempted[is.na(cursus_users$c12_attempted)] <- 0
cursus_users$c13_attempted[is.na(cursus_users$c13_attempted)] <- 0
cursus_users$r00_attempted[is.na(cursus_users$r00_attempted)] <- 0
cursus_users$r01_attempted[is.na(cursus_users$r01_attempted)] <- 0
cursus_users$e00_attempted[is.na(cursus_users$e00_attempted)] <- 0
cursus_users$e01_attempted[is.na(cursus_users$e01_attempted)] <- 0
cursus_users$e02_attempted[is.na(cursus_users$e02_attempted)] <- 0
### All project validations (passes)
{
  cursus_users <- cursus_users %>% mutate(a00_validated = case_when(cursus_users$a00_validated == 1 ~ 1, cursus_users$a00_validated != 1 | is.na(cursus_users$a00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(s00_validated = case_when(cursus_users$s00_validated == 1 ~ 1, cursus_users$s00_validated != 1 | is.na(cursus_users$s00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(s01_validated = case_when(cursus_users$s01_validated == 1 ~ 1, cursus_users$s01_validated != 1 | is.na(cursus_users$s01_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c00_validated = case_when(cursus_users$c00_validated == 1 ~ 1, cursus_users$c00_validated != 1 | is.na(cursus_users$c00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c01_validated = case_when(cursus_users$c01_validated == 1 ~ 1, cursus_users$c01_validated != 1 | is.na(cursus_users$c01_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c02_validated = case_when(cursus_users$c02_validated == 1 ~ 1, cursus_users$c02_validated != 1 | is.na(cursus_users$c02_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c03_validated = case_when(cursus_users$c03_validated == 1 ~ 1, cursus_users$c03_validated != 1 | is.na(cursus_users$c03_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c04_validated = case_when(cursus_users$c04_validated == 1 ~ 1, cursus_users$c04_validated != 1 | is.na(cursus_users$c04_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c05_validated = case_when(cursus_users$c05_validated == 1 ~ 1, cursus_users$c05_validated != 1 | is.na(cursus_users$c05_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c06_validated = case_when(cursus_users$c06_validated == 1 ~ 1, cursus_users$c06_validated != 1 | is.na(cursus_users$c06_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c07_validated = case_when(cursus_users$c07_validated == 1 ~ 1, cursus_users$c07_validated != 1 | is.na(cursus_users$c07_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c08_validated = case_when(cursus_users$c08_validated == 1 ~ 1, cursus_users$c08_validated != 1 | is.na(cursus_users$c08_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c09_validated = case_when(cursus_users$c09_validated == 1 ~ 1, cursus_users$c09_validated != 1 | is.na(cursus_users$c09_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c10_validated = case_when(cursus_users$c10_validated == 1 ~ 1, cursus_users$c10_validated != 1 | is.na(cursus_users$c10_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c11_validated = case_when(cursus_users$c11_validated == 1 ~ 1, cursus_users$c11_validated != 1 | is.na(cursus_users$c11_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c12_validated = case_when(cursus_users$c12_validated == 1 ~ 1, cursus_users$c12_validated != 1 | is.na(cursus_users$c12_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c13_validated = case_when(cursus_users$c13_validated == 1 ~ 1, cursus_users$c13_validated != 1 | is.na(cursus_users$c13_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(r00_validated = case_when(cursus_users$r00_validated == 1 ~ 1, cursus_users$r00_validated != 1 | is.na(cursus_users$r00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(r01_validated = case_when(cursus_users$r01_validated == 1 ~ 1, cursus_users$r01_validated != 1 | is.na(cursus_users$r01_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e00_validated = case_when(cursus_users$e00_validated == 1 ~ 1, cursus_users$e00_validated != 1 | is.na(cursus_users$e00_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e01_validated = case_when(cursus_users$e01_validated == 1 ~ 1, cursus_users$e01_validated != 1 | is.na(cursus_users$e01_validated) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e02_validated = case_when(cursus_users$e02_validated == 1 ~ 1, cursus_users$e02_validated != 1 | is.na(cursus_users$e02_validated) == TRUE ~ 0))
}
### All project tries (first attempt + reattempts) - except a00
{
  cursus_users <- cursus_users %>% mutate(s00_retries = case_when(cursus_users$s00_team_id != 0 ~ s00_retries + 1, is.na(cursus_users$s00_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(s01_retries = case_when(cursus_users$s01_team_id != 0 ~ s01_retries + 1, is.na(cursus_users$s01_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c00_retries = case_when(cursus_users$c00_team_id != 0 ~ c00_retries + 1, is.na(cursus_users$c00_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c01_retries = case_when(cursus_users$c01_team_id != 0 ~ c01_retries + 1, is.na(cursus_users$c01_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c02_retries = case_when(cursus_users$c02_team_id != 0 ~ c02_retries + 1, is.na(cursus_users$c02_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c03_retries = case_when(cursus_users$c03_team_id != 0 ~ c03_retries + 1, is.na(cursus_users$c03_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c04_retries = case_when(cursus_users$c04_team_id != 0 ~ c04_retries + 1, is.na(cursus_users$c04_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c05_retries = case_when(cursus_users$c05_team_id != 0 ~ c05_retries + 1, is.na(cursus_users$c05_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c06_retries = case_when(cursus_users$c06_team_id != 0 ~ c06_retries + 1, is.na(cursus_users$c06_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c07_retries = case_when(cursus_users$c07_team_id != 0 ~ c07_retries + 1, is.na(cursus_users$c07_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c08_retries = case_when(cursus_users$c08_team_id != 0 ~ c08_retries + 1, is.na(cursus_users$c08_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c09_retries = case_when(cursus_users$c09_team_id != 0 ~ c09_retries + 1, is.na(cursus_users$c09_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c10_retries = case_when(cursus_users$c10_team_id != 0 ~ c10_retries + 1, is.na(cursus_users$c10_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c11_retries = case_when(cursus_users$c11_team_id != 0 ~ c11_retries + 1, is.na(cursus_users$c11_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c12_retries = case_when(cursus_users$c12_team_id != 0 ~ c12_retries + 1, is.na(cursus_users$c12_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(c13_retries = case_when(cursus_users$c13_team_id != 0 ~ c13_retries + 1, is.na(cursus_users$c13_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(r00_retries = case_when(cursus_users$r00_team_id != 0 ~ r00_retries + 1, is.na(cursus_users$r00_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(r01_retries = case_when(cursus_users$r01_team_id != 0 ~ r01_retries + 1, is.na(cursus_users$r01_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e00_retries = case_when(cursus_users$e00_team_id != 0 ~ e00_retries + 1, is.na(cursus_users$e00_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e01_retries = case_when(cursus_users$e01_team_id != 0 ~ e01_retries + 1, is.na(cursus_users$e01_team_id) == TRUE ~ 0))
  cursus_users <- cursus_users %>% mutate(e02_retries = case_when(cursus_users$e02_team_id != 0 ~ e02_retries + 1, is.na(cursus_users$e02_team_id) == TRUE ~ 0))
}
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

# Evaluations
### s00
s00_peers_01 <- cursus_users %>% group_by(id_user, login, s00_peer01) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer01)
s00_peers_02 <- cursus_users %>% group_by(id_user, login, s00_peer02) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer02)
s00_peers_03 <- cursus_users %>% group_by(id_user, login, s00_peer03) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer03)
s00_peers_04 <- cursus_users %>% group_by(id_user, login, s00_peer04) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer04)
s00_peers_05 <- cursus_users %>% group_by(id_user, login, s00_peer05) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer05)
s00_peers_06 <- cursus_users %>% group_by(id_user, login, s00_peer06) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer06)
s00_peers_07 <- cursus_users %>% group_by(id_user, login, s00_peer07) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer07)
s00_peers_08 <- cursus_users %>% group_by(id_user, login, s00_peer08) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer08)
s00_peers_09 <- cursus_users %>% group_by(id_user, login, s00_peer09) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer09)
s00_peers_10 <- cursus_users %>% group_by(id_user, login, s00_peer10) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer10)
s00_peers_11 <- cursus_users %>% group_by(id_user, login, s00_peer11) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer11)
s00_peers_12 <- cursus_users %>% group_by(id_user, login, s00_peer12) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer12)
s00_peers_13 <- cursus_users %>% group_by(id_user, login, s00_peer13) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer13)
s00_peers_14 <- cursus_users %>% group_by(id_user, login, s00_peer14) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer14)
s00_peers_15 <- cursus_users %>% group_by(id_user, login, s00_peer15) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer15)
s00_peers_16 <- cursus_users %>% group_by(id_user, login, s00_peer16) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer16)
### s01
s01_peers_01 <- cursus_users %>% group_by(id_user, login, s01_peer01) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer01)
s01_peers_02 <- cursus_users %>% group_by(id_user, login, s01_peer02) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer02)
s01_peers_03 <- cursus_users %>% group_by(id_user, login, s01_peer03) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer03)
s01_peers_04 <- cursus_users %>% group_by(id_user, login, s01_peer04) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer04)
s01_peers_05 <- cursus_users %>% group_by(id_user, login, s01_peer05) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer05)
s01_peers_06 <- cursus_users %>% group_by(id_user, login, s01_peer06) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer06)
s01_peers_07 <- cursus_users %>% group_by(id_user, login, s01_peer07) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer07)
s01_peers_08 <- cursus_users %>% group_by(id_user, login, s01_peer08) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer08)
s01_peers_09 <- cursus_users %>% group_by(id_user, login, s01_peer09) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer09)
s01_peers_10 <- cursus_users %>% group_by(id_user, login, s01_peer10) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer10)
s01_peers_11 <- cursus_users %>% group_by(id_user, login, s01_peer11) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer11)
s01_peers_12 <- cursus_users %>% group_by(id_user, login, s01_peer12) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer12)
s01_peers_13 <- cursus_users %>% group_by(id_user, login, s01_peer13) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer13)
s01_peers_14 <- cursus_users %>% group_by(id_user, login, s01_peer14) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer14)
### c00
c00_peers_01 <- cursus_users %>% group_by(id_user, login, c00_peer01) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer01)
c00_peers_02 <- cursus_users %>% group_by(id_user, login, c00_peer02) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer02)
c00_peers_03 <- cursus_users %>% group_by(id_user, login, c00_peer03) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer03)
c00_peers_04 <- cursus_users %>% group_by(id_user, login, c00_peer04) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer04)
c00_peers_05 <- cursus_users %>% group_by(id_user, login, c00_peer05) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer05)
c00_peers_06 <- cursus_users %>% group_by(id_user, login, c00_peer06) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer06)
c00_peers_07 <- cursus_users %>% group_by(id_user, login, c00_peer07) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer07)
c00_peers_08 <- cursus_users %>% group_by(id_user, login, c00_peer08) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer08)
c00_peers_09 <- cursus_users %>% group_by(id_user, login, c00_peer09) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer09)
c00_peers_10 <- cursus_users %>% group_by(id_user, login, c00_peer10) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer10)
c00_peers_11 <- cursus_users %>% group_by(id_user, login, c00_peer11) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer11)
c00_peers_12 <- cursus_users %>% group_by(id_user, login, c00_peer12) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer12)
### c01
c01_peers_01 <- cursus_users %>% group_by(id_user, login, c01_peer01) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer01)
c01_peers_02 <- cursus_users %>% group_by(id_user, login, c01_peer02) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer02)
c01_peers_03 <- cursus_users %>% group_by(id_user, login, c01_peer03) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer03)
c01_peers_04 <- cursus_users %>% group_by(id_user, login, c01_peer04) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer04)
c01_peers_05 <- cursus_users %>% group_by(id_user, login, c01_peer05) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer05)
c01_peers_06 <- cursus_users %>% group_by(id_user, login, c01_peer06) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer06)
c01_peers_07 <- cursus_users %>% group_by(id_user, login, c01_peer07) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer07)
c01_peers_08 <- cursus_users %>% group_by(id_user, login, c01_peer08) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer08)
c01_peers_09 <- cursus_users %>% group_by(id_user, login, c01_peer09) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer09)
c01_peers_10 <- cursus_users %>% group_by(id_user, login, c01_peer10) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer10)
c01_peers_11 <- cursus_users %>% group_by(id_user, login, c01_peer11) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer11)
c01_peers_12 <- cursus_users %>% group_by(id_user, login, c01_peer12) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer12)
### c02
c02_peers_01 <- cursus_users %>% group_by(id_user, login, c02_peer01) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer01)
c02_peers_02 <- cursus_users %>% group_by(id_user, login, c02_peer02) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer02)
c02_peers_03 <- cursus_users %>% group_by(id_user, login, c02_peer03) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer03)
c02_peers_04 <- cursus_users %>% group_by(id_user, login, c02_peer04) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer04)
c02_peers_05 <- cursus_users %>% group_by(id_user, login, c02_peer05) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer05)
c02_peers_06 <- cursus_users %>% group_by(id_user, login, c02_peer06) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer06)
c02_peers_07 <- cursus_users %>% group_by(id_user, login, c02_peer07) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer07)
c02_peers_08 <- cursus_users %>% group_by(id_user, login, c02_peer08) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer08)
c02_peers_09 <- cursus_users %>% group_by(id_user, login, c02_peer09) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer09)
c02_peers_10 <- cursus_users %>% group_by(id_user, login, c02_peer10) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer10)
c02_peers_11 <- cursus_users %>% group_by(id_user, login, c02_peer11) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer11)
c02_peers_12 <- cursus_users %>% group_by(id_user, login, c02_peer12) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer12)
c02_peers_13 <- cursus_users %>% group_by(id_user, login, c02_peer13) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer13)
c02_peers_14 <- cursus_users %>% group_by(id_user, login, c02_peer14) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer14)
c02_peers_15 <- cursus_users %>% group_by(id_user, login, c02_peer15) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer15)
c02_peers_16 <- cursus_users %>% group_by(id_user, login, c02_peer16) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer16)
### c03
c03_peers_01 <- cursus_users %>% group_by(id_user, login, c03_peer01) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer01)
c03_peers_02 <- cursus_users %>% group_by(id_user, login, c03_peer02) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer02)
c03_peers_03 <- cursus_users %>% group_by(id_user, login, c03_peer03) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer03)
c03_peers_04 <- cursus_users %>% group_by(id_user, login, c03_peer04) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer04)
c03_peers_05 <- cursus_users %>% group_by(id_user, login, c03_peer05) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer05)
c03_peers_06 <- cursus_users %>% group_by(id_user, login, c03_peer06) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer06)
c03_peers_07 <- cursus_users %>% group_by(id_user, login, c03_peer07) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer07)
c03_peers_08 <- cursus_users %>% group_by(id_user, login, c03_peer08) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer08)
c03_peers_09 <- cursus_users %>% group_by(id_user, login, c03_peer09) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer09)
c03_peers_10 <- cursus_users %>% group_by(id_user, login, c03_peer10) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer10)
### c04
c04_peers_01 <- cursus_users %>% group_by(id_user, login, c04_peer01) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer01)
c04_peers_02 <- cursus_users %>% group_by(id_user, login, c04_peer02) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer02)
c04_peers_03 <- cursus_users %>% group_by(id_user, login, c04_peer03) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer03)
c04_peers_04 <- cursus_users %>% group_by(id_user, login, c04_peer04) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer04)
c04_peers_05 <- cursus_users %>% group_by(id_user, login, c04_peer05) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer05)
c04_peers_06 <- cursus_users %>% group_by(id_user, login, c04_peer06) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer06)
c04_peers_07 <- cursus_users %>% group_by(id_user, login, c04_peer07) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer07)
c04_peers_08 <- cursus_users %>% group_by(id_user, login, c04_peer08) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer08)
### c05
c05_peers_01 <- cursus_users %>% group_by(id_user, login, c05_peer01) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer01)
c05_peers_02 <- cursus_users %>% group_by(id_user, login, c05_peer02) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer02)
c05_peers_03 <- cursus_users %>% group_by(id_user, login, c05_peer03) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer03)
c05_peers_04 <- cursus_users %>% group_by(id_user, login, c05_peer04) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer04)
c05_peers_05 <- cursus_users %>% group_by(id_user, login, c05_peer05) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer05)
c05_peers_06 <- cursus_users %>% group_by(id_user, login, c05_peer06) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer06)
c05_peers_07 <- cursus_users %>% group_by(id_user, login, c05_peer07) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer07)
c05_peers_08 <- cursus_users %>% group_by(id_user, login, c05_peer08) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer08)
c05_peers_09 <- cursus_users %>% group_by(id_user, login, c05_peer09) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer09)
c05_peers_10 <- cursus_users %>% group_by(id_user, login, c05_peer10) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer10)
### c06
c06_peers_01 <- cursus_users %>% group_by(id_user, login, c06_peer01) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer01)
c06_peers_02 <- cursus_users %>% group_by(id_user, login, c06_peer02) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer02)
c06_peers_03 <- cursus_users %>% group_by(id_user, login, c06_peer03) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer03)
c06_peers_04 <- cursus_users %>% group_by(id_user, login, c06_peer04) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer04)
c06_peers_05 <- cursus_users %>% group_by(id_user, login, c06_peer05) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer05)
c06_peers_06 <- cursus_users %>% group_by(id_user, login, c06_peer06) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer06)
### c07
c07_peers_01 <- cursus_users %>% group_by(id_user, login, c07_peer01) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer01)
c07_peers_02 <- cursus_users %>% group_by(id_user, login, c07_peer02) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer02)
c07_peers_03 <- cursus_users %>% group_by(id_user, login, c07_peer03) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer03)
c07_peers_04 <- cursus_users %>% group_by(id_user, login, c07_peer04) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer04)
c07_peers_05 <- cursus_users %>% group_by(id_user, login, c07_peer05) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer05)
c07_peers_06 <- cursus_users %>% group_by(id_user, login, c07_peer06) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer06)
c07_peers_07 <- cursus_users %>% group_by(id_user, login, c07_peer07) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer07)
c07_peers_08 <- cursus_users %>% group_by(id_user, login, c07_peer08) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer08)
### c08
c08_peers_01 <- cursus_users %>% group_by(id_user, login, c08_peer01) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer01)
c08_peers_02 <- cursus_users %>% group_by(id_user, login, c08_peer02) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer02)
c08_peers_03 <- cursus_users %>% group_by(id_user, login, c08_peer03) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer03)
c08_peers_04 <- cursus_users %>% group_by(id_user, login, c08_peer04) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer04)
c08_peers_05 <- cursus_users %>% group_by(id_user, login, c08_peer05) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer05)
c08_peers_06 <- cursus_users %>% group_by(id_user, login, c08_peer06) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer06)
c08_peers_07 <- cursus_users %>% group_by(id_user, login, c08_peer07) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer07)
c08_peers_08 <- cursus_users %>% group_by(id_user, login, c08_peer08) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer08)
c08_peers_09 <- cursus_users %>% group_by(id_user, login, c08_peer09) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer09)
c08_peers_10 <- cursus_users %>% group_by(id_user, login, c08_peer10) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer10)
c08_peers_11 <- cursus_users %>% group_by(id_user, login, c08_peer11) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer11)
c08_peers_12 <- cursus_users %>% group_by(id_user, login, c08_peer12) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer12)
### c09
c09_peers_01 <- cursus_users %>% group_by(id_user, login, c09_peer01) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer01)
c09_peers_02 <- cursus_users %>% group_by(id_user, login, c09_peer02) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer02)
c09_peers_03 <- cursus_users %>% group_by(id_user, login, c09_peer03) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer03)
c09_peers_04 <- cursus_users %>% group_by(id_user, login, c09_peer04) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer04)
c09_peers_05 <- cursus_users %>% group_by(id_user, login, c09_peer05) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer05)
c09_peers_06 <- cursus_users %>% group_by(id_user, login, c09_peer06) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer06)
c09_peers_07 <- cursus_users %>% group_by(id_user, login, c09_peer07) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer07)
c09_peers_08 <- cursus_users %>% group_by(id_user, login, c09_peer08) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer08)
### c10
c10_peers_01 <- cursus_users %>% group_by(id_user, login, c10_peer01) %>% summarise(project = "C 10") %>% ungroup() %>% rename(dest = login, src = c10_peer01)
c10_peers_02 <- cursus_users %>% group_by(id_user, login, c10_peer02) %>% summarise(project = "C 10") %>% ungroup() %>% rename(dest = login, src = c10_peer02)
### c11
c11_peers_01 <- cursus_users %>% group_by(id_user, login, c11_peer01) %>% summarise(project = "C 11") %>% ungroup() %>% rename(dest = login, src = c11_peer01)
c11_peers_02 <- cursus_users %>% group_by(id_user, login, c11_peer02) %>% summarise(project = "C 11") %>% ungroup() %>% rename(dest = login, src = c11_peer02)

### bind every evaluation
peers <- bind_rows(s00_peers_01, s00_peers_02, s00_peers_03, s00_peers_04, s00_peers_05, s00_peers_06, s00_peers_07, s00_peers_08, s00_peers_09, s00_peers_10, s00_peers_11, s00_peers_12, s00_peers_13, s00_peers_14, s00_peers_15, s00_peers_16,
                   s01_peers_01, s01_peers_02, s01_peers_03, s01_peers_04, s01_peers_05, s01_peers_06, s01_peers_07, s01_peers_08, s01_peers_09, s01_peers_10, s01_peers_11, s01_peers_12, s01_peers_13, s01_peers_14,
                   c00_peers_01, c00_peers_02, c00_peers_03, c00_peers_04, c00_peers_05, c00_peers_06, c00_peers_07, c00_peers_08, c00_peers_09, c00_peers_10, c00_peers_11, c00_peers_12,
                   c01_peers_01, c01_peers_02, c01_peers_03, c01_peers_04, c01_peers_05, c01_peers_06, c01_peers_07, c01_peers_08, c01_peers_09, c01_peers_10, c01_peers_11, c01_peers_12,
                   c02_peers_01, c02_peers_02, c02_peers_03, c02_peers_04, c02_peers_05, c02_peers_06, c02_peers_07, c02_peers_08, c02_peers_09, c02_peers_10, c02_peers_11, c02_peers_12, c02_peers_13, c02_peers_14, c02_peers_15, c02_peers_16,
                   c03_peers_01, c03_peers_02, c03_peers_03, c03_peers_04, c03_peers_05, c03_peers_06, c03_peers_07, c03_peers_08, c03_peers_09, c03_peers_10,
                   c04_peers_01, c04_peers_02, c04_peers_03, c04_peers_04, c04_peers_05, c04_peers_06, c04_peers_07, c04_peers_08,
                   c05_peers_01, c05_peers_02, c05_peers_03, c05_peers_04, c05_peers_05, c05_peers_06, c05_peers_07, c05_peers_08, c05_peers_09, c05_peers_10,
                   c06_peers_01, c06_peers_02, c06_peers_03, c06_peers_04, c06_peers_05, c06_peers_06,
                   c07_peers_01, c07_peers_02, c07_peers_03, c07_peers_04, c07_peers_05, c07_peers_06, c07_peers_07, c07_peers_08,
                   c08_peers_01, c08_peers_02, c08_peers_03, c08_peers_04, c08_peers_05, c08_peers_06, c08_peers_07, c08_peers_08, c08_peers_09, c08_peers_10, c08_peers_11, c08_peers_12,
                   c09_peers_01, c09_peers_02, c09_peers_03, c09_peers_04, c09_peers_05, c09_peers_06, c09_peers_07, c09_peers_08,
                   c10_peers_01, c10_peers_02,
                   c11_peers_01, c11_peers_02)
### Transform the peer evaluation data into node/edge format
peers <- peers %>% filter(!is.na(src)) %>% filter(src != "")
peers <- peers %>% mutate(id_eval = row_number()) %>% relocate(id_eval, .before = id_user)
### skill levels
peers <- right_join(peers, cursus_users[, c("level", "login", "Student", "campus", "month")], by = c("dest" = "login")) %>% rename(dest_level = level, dest_student = Student)
peers <- right_join(peers, cursus_users[, c("level", "login", "Student")], by = c("src" = "login")) %>% rename(src_level = level, src_student = Student)
peers <- peers %>% relocate(c(month, campus), .after = project)
### skill gap
peers <- peers %>% mutate(level_gap = src_level - dest_level)
### tries, attempts, and validations
##### dest user
peers <- right_join(peers, cursus_users[, c("login", "s00_retries", "s00_attempted", "s00_validated",
														"s01_retries", "s01_attempted", "s01_validated",
														"c00_retries", "c00_attempted", "c00_validated",
														"c01_retries", "c01_attempted", "c01_validated",
													    "c02_retries", "c02_attempted", "c02_validated",
														"c03_retries", "c03_attempted", "c03_validated",
														"c04_retries", "c04_attempted", "c04_validated",
														"c05_retries", "c05_attempted", "c05_validated",
														"c06_retries", "c06_attempted", "c06_validated",
														"c07_retries", "c07_attempted", "c07_validated",
													    "c08_retries", "c08_attempted", "c08_validated",
														"c09_retries", "c09_attempted", "c09_validated",
														"c10_retries", "c10_attempted", "c10_validated",
														"c11_retries", "c11_attempted", "c11_validated",
														"c12_retries", "c12_attempted", "c12_validated",
														"c13_retries", "c13_attempted", "c13_validated"
                                            )], by = c("dest" = "login")) %>% rename(
                                              "dest_s00_retries" = "s00_retries", "dest_s00_attempted" = "s00_attempted", "dest_s00_validated" = "s00_validated",
                                              "dest_s01_retries" = "s01_retries", "dest_s01_attempted" = "s01_attempted", "dest_s01_validated" = "s01_validated",
                                              "dest_c00_retries" = "c00_retries", "dest_c00_attempted" = "c00_attempted", "dest_c00_validated" = "c00_validated",
                                              "dest_c01_retries" = "c01_retries", "dest_c01_attempted" = "c01_attempted", "dest_c01_validated" = "c01_validated",
                                              "dest_c02_retries" = "c02_retries", "dest_c02_attempted" = "c02_attempted", "dest_c02_validated" = "c02_validated",
                                              "dest_c03_retries" = "c03_retries", "dest_c03_attempted" = "c03_attempted", "dest_c03_validated" = "c03_validated",
                                              "dest_c04_retries" = "c04_retries", "dest_c04_attempted" = "c04_attempted", "dest_c04_validated" = "c04_validated",
                                              "dest_c05_retries" = "c05_retries", "dest_c05_attempted" = "c05_attempted", "dest_c05_validated" = "c05_validated",
                                              "dest_c06_retries" = "c06_retries", "dest_c06_attempted" = "c06_attempted", "dest_c06_validated" = "c06_validated",
                                              "dest_c07_retries" = "c07_retries", "dest_c07_attempted" = "c07_attempted", "dest_c07_validated" = "c07_validated",
                                              "dest_c08_retries" = "c08_retries", "dest_c08_attempted" = "c08_attempted", "dest_c08_validated" = "c08_validated",
                                              "dest_c09_retries" = "c09_retries", "dest_c09_attempted" = "c09_attempted", "dest_c09_validated" = "c09_validated",
                                              "dest_c10_retries" = "c10_retries", "dest_c10_attempted" = "c10_attempted", "dest_c10_validated" = "c10_validated",
                                              "dest_c11_retries" = "c11_retries", "dest_c11_attempted" = "c11_attempted", "dest_c11_validated" = "c11_validated",
                                              "dest_c12_retries" = "c12_retries", "dest_c12_attempted" = "c12_attempted", "dest_c12_validated" = "c12_validated",
                                              "dest_c13_retries" = "c13_retries", "dest_c13_attempted" = "c13_attempted", "dest_c13_validated" = "c13_validated"
                                            )
##### src user
peers <- right_join(peers, cursus_users[, c("login", "s00_retries", "s00_attempted", "s00_validated",
                                            "s01_retries", "s01_attempted", "s01_validated",
                                            "c00_retries", "c00_attempted", "c00_validated",
                                            "c01_retries", "c01_attempted", "c01_validated",
                                            "c02_retries", "c02_attempted", "c02_validated",
                                            "c03_retries", "c03_attempted", "c03_validated",
                                            "c04_retries", "c04_attempted", "c04_validated",
                                            "c05_retries", "c05_attempted", "c05_validated",
                                            "c06_retries", "c06_attempted", "c06_validated",
                                            "c07_retries", "c07_attempted", "c07_validated",
                                            "c08_retries", "c08_attempted", "c08_validated",
                                            "c09_retries", "c09_attempted", "c09_validated",
                                            "c10_retries", "c10_attempted", "c10_validated",
                                            "c11_retries", "c11_attempted", "c11_validated",
                                            "c12_retries", "c12_attempted", "c12_validated",
                                            "c13_retries", "c13_attempted", "c13_validated"
)], by = c("src" = "login")) %>% rename(
  "src_s00_retries" = "s00_retries", "src_s00_attempted" = "s00_attempted", "src_s00_validated" = "s00_validated",
  "src_s01_retries" = "s01_retries", "src_s01_attempted" = "s01_attempted", "src_s01_validated" = "s01_validated",
  "src_c00_retries" = "c00_retries", "src_c00_attempted" = "c00_attempted", "src_c00_validated" = "c00_validated",
  "src_c01_retries" = "c01_retries", "src_c01_attempted" = "c01_attempted", "src_c01_validated" = "c01_validated",
  "src_c02_retries" = "c02_retries", "src_c02_attempted" = "c02_attempted", "src_c02_validated" = "c02_validated",
  "src_c03_retries" = "c03_retries", "src_c03_attempted" = "c03_attempted", "src_c03_validated" = "c03_validated",
  "src_c04_retries" = "c04_retries", "src_c04_attempted" = "c04_attempted", "src_c04_validated" = "c04_validated",
  "src_c05_retries" = "c05_retries", "src_c05_attempted" = "c05_attempted", "src_c05_validated" = "c05_validated",
  "src_c06_retries" = "c06_retries", "src_c06_attempted" = "c06_attempted", "src_c06_validated" = "c06_validated",
  "src_c07_retries" = "c07_retries", "src_c07_attempted" = "c07_attempted", "src_c07_validated" = "c07_validated",
  "src_c08_retries" = "c08_retries", "src_c08_attempted" = "c08_attempted", "src_c08_validated" = "c08_validated",
  "src_c09_retries" = "c09_retries", "src_c09_attempted" = "c09_attempted", "src_c09_validated" = "c09_validated",
  "src_c10_retries" = "c10_retries", "src_c10_attempted" = "c10_attempted", "src_c10_validated" = "c10_validated",
  "src_c11_retries" = "c11_retries", "src_c11_attempted" = "c11_attempted", "src_c11_validated" = "c11_validated",
  "src_c12_retries" = "c12_retries", "src_c12_attempted" = "c12_attempted", "src_c12_validated" = "c12_validated",
  "src_c13_retries" = "c13_retries", "src_c13_attempted" = "c13_attempted", "src_c13_validated" = "c13_validated"
)
### delete missing id_evals
peers <- peers %>% filter(!is.na(id_eval))
### have all NAs into 0
peers[is.na(peers)] <- 0
### order projects
peers$project <- factor(peers$project, ordered = TRUE, levels = c("Shell 00", "Shell 01", "C 00", "C 01", "C 02", "C 03", "C 04", "C 05", "C 06", "C 07", "C 08", "C 09", "C 10", "C 11", "C 12", "C 13"))
### group evaluations
peers <- peers %>% mutate(student_status = case_when(dest_student == "Yes" & src_student == "Yes" ~ "Both",
                                             dest_student == "Yes" & src_student == "No" ~ "Only Evaluatee",
                                             dest_student == "No" & src_student == "Yes" ~ "Only Evaluator",
                                             dest_student == "No" & src_student == "No" ~ "Neither"))

peers$student_status <- factor(peers$student_status, ordered = TRUE, 
                                levels = c("Both", "Only Evaluator", "Only Evaluatee", "Neither"))

### evaluator/evaluatee level sum, n, mean

# the sum of the levels of users who the user has evaluated is saved next to that user as 'score_evaluator'
peers <- peers %>% group_by(src) %>% mutate(sum_evaluator = sum(dest_level))
sum(peers[which(peers$src == "mbarut"), "dest_level"])

# the sum of the levels of users who evaluated the user is saved next to that user as 'score_evaluatee'
peers <- peers %>% group_by(dest) %>% mutate(sum_evaluatee = sum(src_level))
sum(peers[which(peers$dest == "mbarut"), "src_level"])

# how many instances the user has evaluated someone is saved as 'n_evaluator'
peers <- peers %>% group_by(src) %>% mutate(n_evaluator = n())

# how many instances the user has been evaluated is saved as 'n_evaluatee'
peers <- peers %>% group_by(dest) %>% mutate(n_evaluatee = n())

# score per eval

peers <- peers %>% mutate(avg_level_of_evaluators = sum_evaluator / n_evaluator)
peers <- peers %>% mutate(avg_level_of_evaluatees = sum_evaluatee / n_evaluatee)

### some checks 

sum(peers[which(peers$dest == "mbarut"), "src_level"])
sum(peers[which(peers$src == "mbarut"), "dest_level"])

peers[which(peers$dest == cursus_users[45, "login"]), c("sum_evaluatee", "n_evaluatee", "avg_level_of_evaluatees")] %>% nth(1) %>% nth(1)
peers[which(peers$src == "mbarut"), c("sum_evaluator", "n_evaluator", "avg_level_of_evaluators")]

### join some evaluation data with cursus_users

i <- 1
while (i < nrow(cursus_users)) {
  cursus_users[i, "sum_evaluatee"] = peers[which(peers$dest == cursus_users[i, "login"]), "sum_evaluatee"] %>% nth(1) %>% nth(1)
  cursus_users[i, "n_evaluatee"] = peers[which(peers$dest == cursus_users[i, "login"]), "n_evaluatee"] %>% nth(1) %>% nth(1)
  cursus_users[i, "avg_level_of_evaluatees"] = peers[which(peers$dest == cursus_users[i, "login"]), "avg_level_of_evaluatees"] %>% nth(1) %>% nth(1)
  cursus_users[i, "sum_evaluator"] = peers[which(peers$src == cursus_users[i, "login"]), "sum_evaluator"] %>% nth(1) %>% nth(1)
  cursus_users[i, "n_evaluator"] = peers[which(peers$src == cursus_users[i, "login"]), "n_evaluator"] %>% nth(1) %>% nth(1)
  cursus_users[i, "avg_level_of_evaluators"] = peers[which(peers$src == cursus_users[i, "login"]), "avg_level_of_evaluators"] %>% nth(1) %>% nth(1)
  i <- i + 1
}

cursus_users <- cursus_users %>% mutate(
  sum_evaluatee = ifelse(is.na(sum_evaluatee), 0, sum_evaluatee),
  n_evaluatee = ifelse(is.na(n_evaluatee), 0, n_evaluatee),
  avg_level_of_evaluatees = ifelse(is.na(avg_level_of_evaluatees), 0, avg_level_of_evaluatees),
  sum_evaluator = ifelse(is.na(sum_evaluator), 0, sum_evaluator),
  n_evaluator = ifelse(is.na(n_evaluator), 0, n_evaluator),
  avg_level_of_evaluators = ifelse(is.na(avg_level_of_evaluators), 0, avg_level_of_evaluators))

cursus_users <- cursus_users %>% mutate(
  n_evaluation = n_evaluatee + n_evaluator,
  avg_level_of_peers = ifelse(n_evaluatee == 0 | n_evaluator == 0, 0, (sum_evaluatee + sum_evaluator)/(n_evaluatee + n_evaluator))
)

# achievement data: portuguese -> english

achievements[which(achievements$id == "330"), "name"] <- "Field Recognition"
achievements[which(achievements$id == "330"), "description"] <- "Be active on at least 5 of 7 days in the first week of Basecamp."
achievements[which(achievements$id == "331"), "name"] <- "First Footprints"
achievements[which(achievements$id == "331"), "description"] <- "Be active on at least 5 of 7 days in the second week of Basecamp."
achievements[which(achievements$id == "332"), "name"] <- "Explorer"
achievements[which(achievements$id == "332"), "description"] <- "Be active on at least 5 of 7 days in the third week of Basecamp."
achievements[which(achievements$id == "333"), "name"] <- "Focus I"
achievements[which(achievements$id == "333"), "description"] <- "Achieve in the second week at least the number of points earned in the first week of Basecamp."
achievements[which(achievements$id == "334"), "name"] <- "Focus II"
achievements[which(achievements$id == "334"), "description"] <- "Achieve in the third week at least the number of points earned in the second week of Basecamp."
achievements[which(achievements$id == "335"), "name"] <- "Super Focus"
achievements[which(achievements$id == "335"), "description"] <- "Achieve in the fourth week at least the number of points earned in the third week of Basecamp."
achievements[which(achievements$id == "336"), "name"] <- "Helper I"
achievements[which(achievements$id == "336"), "description"] <- "Receive a certain number of votes in Voxotron during the first week of Basecamp."
achievements[which(achievements$id == "337"), "name"] <- "Helper II"
achievements[which(achievements$id == "337"), "description"] <- "Receive a certain number of votes in Voxotron during the second week of Basecamp."
achievements[which(achievements$id == "338"), "name"] <- "Helper III"
achievements[which(achievements$id == "338"), "description"] <- "Receive a certain number of votes in Voxotron during the third week of Basecamp."
achievements[which(achievements$id == "339"), "name"] <- "Super Helper"
achievements[which(achievements$id == "339"), "description"] <- "Receive a certain number of votes in Voxotron throughout the Basecamp."
achievements[which(achievements$id == "340"), "name"] <- "Community I"
achievements[which(achievements$id == "340"), "description"] <- "Participate at most of the events of the first week of Basecamp"
achievements[which(achievements$id == "341"), "name"] <- "Community II"
achievements[which(achievements$id == "341"), "description"] <- "Participate at most of the events of the second week of Basecamp"
achievements[which(achievements$id == "342"), "name"] <- "Community III"
achievements[which(achievements$id == "342"), "description"] <- "Participate at most of the events of the third week of Basecamp"
achievements[which(achievements$id == "343"), "name"] <- "Super Community"
achievements[which(achievements$id == "343"), "description"] <- "Participate in most of the events throughout the Basecamp."
achievements[which(achievements$id == "344"), "name"] <- "United Village I"
achievements[which(achievements$id == "344"), "description"] <- "At least 80% of your Village members have been active on min. 5 of 7 days in the first week of Basecamp."
achievements[which(achievements$id == "345"), "name"] <- "United Village II"
achievements[which(achievements$id == "345"), "description"] <- "At least 80% of your Village members have been active on min. 5 of 7 days in the second week of Basecamp."
achievements[which(achievements$id == "348"), "name"] <- "United Village III"
achievements[which(achievements$id == "348"), "description"] <- "At least 80% of your Village members have been active on min. 5 of 7 days in the third week of Basecamp."
achievements[which(achievements$id == "347"), "name"] <- "Super Village"
achievements[which(achievements$id == "347"), "description"] <- "At least 80% of your Village members have been active on min. 5 of 7 days throughout the Basecamp."

### join achievement data with cursus_users

##### Field Recognition
cursus_users <- cursus_users %>% mutate("Activity: Level 1" = case_when(cursus_users$login %in% achievements_users_330$login | cursus_users$login %in% achievements_users_369$login ~ 1,
                                                                        !(cursus_users$login %in% achievements_users_330$login | cursus_users$login %in% achievements_users_369$login) ~ 0))

##### First Footprints
cursus_users <- cursus_users %>% mutate("Activity: Level 2" = case_when(cursus_users$login %in% achievements_users_331$login | cursus_users$login %in% achievements_users_368$login ~ 1,
                                                                       !(cursus_users$login %in% achievements_users_331$login | cursus_users$login %in% achievements_users_368$login) ~ 0))

##### Explorer
cursus_users <- cursus_users %>% mutate("Activity: Level 3" = case_when(cursus_users$login %in% achievements_users_332$login | cursus_users$login %in% achievements_users_362$login ~ 1,
                                                               !(cursus_users$login %in% achievements_users_332$login | cursus_users$login %in% achievements_users_362$login) ~ 0))

##### Focus I
cursus_users <- cursus_users %>% mutate("Progression: Level 1" = case_when(cursus_users$login %in% achievements_users_333$login | cursus_users$login %in% achievements_users_363$login ~ 1,
                                                              !(cursus_users$login %in% achievements_users_333$login | cursus_users$login %in% achievements_users_363$login) ~ 0))

##### Focus II
cursus_users <- cursus_users %>% mutate("Progression: Level 2" = case_when(cursus_users$login %in% achievements_users_334$login | cursus_users$login %in% achievements_users_364$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_334$login | cursus_users$login %in% achievements_users_364$login) ~ 0))

##### Super Focus
cursus_users <- cursus_users %>% mutate("Progression: Level 3" = case_when(cursus_users$login %in% achievements_users_335$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_335$login) ~ 0))

##### Helper I
cursus_users <- cursus_users %>% mutate("Helping Peers: Level 1" = case_when(cursus_users$login %in% achievements_users_336$login | cursus_users$login %in% achievements_users_365$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_336$login | cursus_users$login %in% achievements_users_365$login) ~ 0))

##### Helper II
cursus_users <- cursus_users %>% mutate("Helping Peers: Level 2" = case_when(cursus_users$login %in% achievements_users_337$login | cursus_users$login %in% achievements_users_366$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_337$login | cursus_users$login %in% achievements_users_366$login) ~ 0))

##### Helper III
cursus_users <- cursus_users %>% mutate("Helping Peers: Level 3" = case_when(cursus_users$login %in% achievements_users_338$login | cursus_users$login %in% achievements_users_367$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_338$login) ~ 0))

##### Super Helper
cursus_users <- cursus_users %>% mutate("Helping Peers: Level 4" = case_when(cursus_users$login %in% achievements_users_339$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_339$login) ~ 0))

##### Community I
cursus_users <- cursus_users %>% mutate("Event Participation: Level 1" = case_when(cursus_users$login %in% achievements_users_340$login | cursus_users$login %in% achievements_users_359$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_340$login | cursus_users$login %in% achievements_users_359$login) ~ 0))

##### Community II
cursus_users <- cursus_users %>% mutate("Event Participation: Level 2" = case_when(cursus_users$login %in% achievements_users_341$login | cursus_users$login %in% achievements_users_360$login  ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_341$login | cursus_users$login %in% achievements_users_360$login) ~ 0))

##### Community III
cursus_users <- cursus_users %>% mutate("Event Participation: Level 3" = case_when(cursus_users$login %in% achievements_users_342$login | cursus_users$login %in% achievements_users_361$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_342$login | cursus_users$login %in% achievements_users_361$login) ~ 0))

##### Super Community
cursus_users <- cursus_users %>% mutate("Event Participation: Level 4" = case_when(cursus_users$login %in% achievements_users_343$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_343$login) ~ 0))

##### United Village I
cursus_users <- cursus_users %>% mutate("Group Cohesion: Level 1" = case_when(cursus_users$login %in% achievements_users_344$login | cursus_users$login %in% achievements_users_374$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_344$login | cursus_users$login %in% achievements_users_374$login) ~ 0))

##### United Village II
cursus_users <- cursus_users %>% mutate("Group Cohesion: Level 2" = case_when(cursus_users$login %in% achievements_users_345$login | cursus_users$login %in% achievements_users_375$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_345$login | cursus_users$login %in% achievements_users_375$login) ~ 0))

##### United Village III
cursus_users <- cursus_users %>% mutate("Group Cohesion: Level 3" = case_when(cursus_users$login %in% achievements_users_348$login | cursus_users$login %in% achievements_users_376$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_348$login | cursus_users$login %in% achievements_users_376$login) ~ 0))

##### Super Village
cursus_users <- cursus_users %>% mutate("Group Cohesion: Level 4" = case_when(cursus_users$login %in% achievements_users_347$login ~ 1,
                                                                    !(cursus_users$login %in% achievements_users_347$login) ~ 0))

##### (Wolfsburg Only) Easter Egg Hunting

cursus_users <- cursus_users %>% mutate("Easter Egg 1" = case_when(cursus_users$login %in% achievements_users_354$login ~ 1, !(cursus_users$login %in% achievements_users_354$login) ~ 0))
cursus_users <- cursus_users %>% mutate("Easter Egg 2" = case_when(cursus_users$login %in% achievements_users_355$login ~ 1, !(cursus_users$login %in% achievements_users_355$login) ~ 0))
cursus_users <- cursus_users %>% mutate("Easter Egg 3" = case_when(cursus_users$login %in% achievements_users_356$login ~ 1, !(cursus_users$login %in% achievements_users_356$login) ~ 0))
cursus_users <- cursus_users %>% mutate("Easter Egg 4" = case_when(cursus_users$login %in% achievements_users_357$login ~ 1, !(cursus_users$login %in% achievements_users_357$login) ~ 0))
cursus_users <- cursus_users %>% mutate("Easter Egg 5" = case_when(cursus_users$login %in% achievements_users_358$login ~ 1, !(cursus_users$login %in% achievements_users_358$login) ~ 0))

cursus_users <- cursus_users %>% mutate(achievements_all = 
                                          cursus_users$"Activity: Level 1" + cursus_users$"Activity: Level 2" + cursus_users$"Activity: Level 3" +
                                          cursus_users$"Progression: Level 1" + cursus_users$"Progression: Level 2" + cursus_users$"Progression: Level 3" +
                                          cursus_users$"Helping Peers: Level 1" + cursus_users$"Helping Peers: Level 2" + cursus_users$"Helping Peers: Level 3" + cursus_users$"Helping Peers: Level 4" +
                                          cursus_users$"Event Participation: Level 1" + cursus_users$"Event Participation: Level 2" + cursus_users$"Event Participation: Level 3" + cursus_users$"Event Participation: Level 4" +
                                          cursus_users$"Group Cohesion: Level 1" + cursus_users$"Group Cohesion: Level 2" + cursus_users$"Group Cohesion: Level 3" + cursus_users$"Group Cohesion: Level 4")

cursus_users <- cursus_users %>% mutate(achievements_activity = cursus_users$"Activity: Level 1" + cursus_users$"Activity: Level 2" + cursus_users$"Activity: Level 3")
cursus_users <- cursus_users %>% mutate(achievements_progression = cursus_users$"Progression: Level 1" + cursus_users$"Progression: Level 2" + cursus_users$"Progression: Level 3")
cursus_users <- cursus_users %>% mutate(achievements_helping = cursus_users$"Helping Peers: Level 1" + cursus_users$"Helping Peers: Level 2" + cursus_users$"Helping Peers: Level 3" + cursus_users$"Helping Peers: Level 4")
cursus_users <- cursus_users %>% mutate(achievements_participation = cursus_users$"Event Participation: Level 1" + cursus_users$"Event Participation: Level 2" + cursus_users$"Event Participation: Level 3" + cursus_users$"Event Participation: Level 4")
cursus_users <- cursus_users %>% mutate(achievements_cohesion = cursus_users$"Group Cohesion: Level 1" + cursus_users$"Group Cohesion: Level 2" + cursus_users$"Group Cohesion: Level 3" + cursus_users$"Group Cohesion: Level 4")

# Export as .csv
write.csv(cursus_users, "data/csv/data_complete.csv", row.names = FALSE)

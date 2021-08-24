library(dplyr)
library(visNetwork)

# Keep
### campuses
all_campuses = c("Wolfsburg", "Heilbronn")
### months
all_months = c("02-2021 (February)", "03-2021 (March)", "04-2021 (April)")
### studentship
studentship = c("Yes", "No")

### Options

shown_months = all_months[1]
shown_campuses = all_campuses[1]
show_studentship = studentship[1]

network_data <- cursus_users %>% filter(evals_coded == 1, campus %in% shown_campuses, month %in% shown_months, Student %in% show_studentship)

# s00

s00_peers_01 <- network_data %>% group_by(id_user, login, s00_peer01) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer01)
s00_peers_02 <- network_data %>% group_by(id_user, login, s00_peer02) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer02)
s00_peers_03 <- network_data %>% group_by(id_user, login, s00_peer03) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer03)
s00_peers_04 <- network_data %>% group_by(id_user, login, s00_peer04) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer04)
s00_peers_05 <- network_data %>% group_by(id_user, login, s00_peer05) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer05)
s00_peers_06 <- network_data %>% group_by(id_user, login, s00_peer06) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer06)
s00_peers_07 <- network_data %>% group_by(id_user, login, s00_peer07) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer07)
s00_peers_08 <- network_data %>% group_by(id_user, login, s00_peer08) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer08)
s00_peers_09 <- network_data %>% group_by(id_user, login, s00_peer09) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer09)
s00_peers_10 <- network_data %>% group_by(id_user, login, s00_peer10) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer10)
s00_peers_11 <- network_data %>% group_by(id_user, login, s00_peer11) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer11)
s00_peers_12 <- network_data %>% group_by(id_user, login, s00_peer12) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer12)
s00_peers_13 <- network_data %>% group_by(id_user, login, s00_peer13) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer13)
s00_peers_14 <- network_data %>% group_by(id_user, login, s00_peer14) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer14)
s00_peers_15 <- network_data %>% group_by(id_user, login, s00_peer15) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer15)
s00_peers_16 <- network_data %>% group_by(id_user, login, s00_peer16) %>% summarise(project = "s00") %>% ungroup() %>% rename(dest = login, src = s00_peer16)

# s01

s01_peers_01 <- network_data %>% group_by(id_user, login, s01_peer01) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer01)
s01_peers_02 <- network_data %>% group_by(id_user, login, s01_peer02) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer02)
s01_peers_03 <- network_data %>% group_by(id_user, login, s01_peer03) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer03)
s01_peers_04 <- network_data %>% group_by(id_user, login, s01_peer04) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer04)
s01_peers_05 <- network_data %>% group_by(id_user, login, s01_peer05) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer05)
s01_peers_06 <- network_data %>% group_by(id_user, login, s01_peer06) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer06)
s01_peers_07 <- network_data %>% group_by(id_user, login, s01_peer07) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer07)
s01_peers_08 <- network_data %>% group_by(id_user, login, s01_peer08) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer08)
s01_peers_09 <- network_data %>% group_by(id_user, login, s01_peer09) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer09)
s01_peers_10 <- network_data %>% group_by(id_user, login, s01_peer10) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer10)
s01_peers_11 <- network_data %>% group_by(id_user, login, s01_peer11) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer11)
s01_peers_12 <- network_data %>% group_by(id_user, login, s01_peer12) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer12)
s01_peers_13 <- network_data %>% group_by(id_user, login, s01_peer13) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer13)
s01_peers_14 <- network_data %>% group_by(id_user, login, s01_peer14) %>% summarise(project = "s01") %>% ungroup() %>% rename(dest = login, src = s01_peer14)

# c00

c00_peers_01 <- network_data %>% group_by(id_user, login, c00_peer01) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer01)
c00_peers_02 <- network_data %>% group_by(id_user, login, c00_peer02) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer02)
c00_peers_03 <- network_data %>% group_by(id_user, login, c00_peer03) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer03)
c00_peers_04 <- network_data %>% group_by(id_user, login, c00_peer04) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer04)
c00_peers_05 <- network_data %>% group_by(id_user, login, c00_peer05) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer05)
c00_peers_06 <- network_data %>% group_by(id_user, login, c00_peer06) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer06)
c00_peers_07 <- network_data %>% group_by(id_user, login, c00_peer07) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer07)
c00_peers_08 <- network_data %>% group_by(id_user, login, c00_peer08) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer08)
c00_peers_09 <- network_data %>% group_by(id_user, login, c00_peer09) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer09)
c00_peers_10 <- network_data %>% group_by(id_user, login, c00_peer10) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer10)
c00_peers_11 <- network_data %>% group_by(id_user, login, c00_peer11) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer11)
c00_peers_12 <- network_data %>% group_by(id_user, login, c00_peer12) %>% summarise(project = "c00") %>% ungroup() %>% rename(dest = login, src = c00_peer12)

# c01

c01_peers_01 <- network_data %>% group_by(id_user, login, c01_peer01) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer01)
c01_peers_02 <- network_data %>% group_by(id_user, login, c01_peer02) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer02)
c01_peers_03 <- network_data %>% group_by(id_user, login, c01_peer03) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer03)
c01_peers_04 <- network_data %>% group_by(id_user, login, c01_peer04) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer04)
c01_peers_05 <- network_data %>% group_by(id_user, login, c01_peer05) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer05)
c01_peers_06 <- network_data %>% group_by(id_user, login, c01_peer06) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer06)
c01_peers_07 <- network_data %>% group_by(id_user, login, c01_peer07) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer07)
c01_peers_08 <- network_data %>% group_by(id_user, login, c01_peer08) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer08)
c01_peers_09 <- network_data %>% group_by(id_user, login, c01_peer09) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer09)
c01_peers_10 <- network_data %>% group_by(id_user, login, c01_peer10) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer10)
c01_peers_11 <- network_data %>% group_by(id_user, login, c01_peer11) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer11)
c01_peers_12 <- network_data %>% group_by(id_user, login, c01_peer12) %>% summarise(project = "c01") %>% ungroup() %>% rename(dest = login, src = c01_peer12)

# c02

c02_peers_01 <- network_data %>% group_by(id_user, login, c02_peer01) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer01)
c02_peers_02 <- network_data %>% group_by(id_user, login, c02_peer02) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer02)
c02_peers_03 <- network_data %>% group_by(id_user, login, c02_peer03) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer03)
c02_peers_04 <- network_data %>% group_by(id_user, login, c02_peer04) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer04)
c02_peers_05 <- network_data %>% group_by(id_user, login, c02_peer05) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer05)
c02_peers_06 <- network_data %>% group_by(id_user, login, c02_peer06) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer06)
c02_peers_07 <- network_data %>% group_by(id_user, login, c02_peer07) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer07)
c02_peers_08 <- network_data %>% group_by(id_user, login, c02_peer08) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer08)
c02_peers_09 <- network_data %>% group_by(id_user, login, c02_peer09) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer09)
c02_peers_10 <- network_data %>% group_by(id_user, login, c02_peer10) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer10)
c02_peers_11 <- network_data %>% group_by(id_user, login, c02_peer11) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer11)
c02_peers_12 <- network_data %>% group_by(id_user, login, c02_peer12) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer12)
c02_peers_13 <- network_data %>% group_by(id_user, login, c02_peer13) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer13)
c02_peers_14 <- network_data %>% group_by(id_user, login, c02_peer14) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer14)
c02_peers_15 <- network_data %>% group_by(id_user, login, c02_peer15) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer15)
c02_peers_16 <- network_data %>% group_by(id_user, login, c02_peer16) %>% summarise(project = "c02") %>% ungroup() %>% rename(dest = login, src = c02_peer16)

# c03

c03_peers_01 <- network_data %>% group_by(id_user, login, c03_peer01) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer01)
c03_peers_02 <- network_data %>% group_by(id_user, login, c03_peer02) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer02)
c03_peers_03 <- network_data %>% group_by(id_user, login, c03_peer03) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer03)
c03_peers_04 <- network_data %>% group_by(id_user, login, c03_peer04) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer04)
c03_peers_05 <- network_data %>% group_by(id_user, login, c03_peer05) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer05)
c03_peers_06 <- network_data %>% group_by(id_user, login, c03_peer06) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer06)
c03_peers_07 <- network_data %>% group_by(id_user, login, c03_peer07) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer07)
c03_peers_08 <- network_data %>% group_by(id_user, login, c03_peer08) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer08)
c03_peers_09 <- network_data %>% group_by(id_user, login, c03_peer09) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer09)
c03_peers_10 <- network_data %>% group_by(id_user, login, c03_peer10) %>% summarise(project = "c03") %>% ungroup() %>% rename(dest = login, src = c03_peer10)

# c04

c04_peers_01 <- network_data %>% group_by(id_user, login, c04_peer01) %>% summarise(project = "c04") %>% ungroup() %>% rename(dest = login, src = c04_peer01)
c04_peers_02 <- network_data %>% group_by(id_user, login, c04_peer02) %>% summarise(project = "c04") %>% ungroup() %>% rename(dest = login, src = c04_peer02)
c04_peers_03 <- network_data %>% group_by(id_user, login, c04_peer03) %>% summarise(project = "c04") %>% ungroup() %>% rename(dest = login, src = c04_peer03)
c04_peers_04 <- network_data %>% group_by(id_user, login, c04_peer04) %>% summarise(project = "c04") %>% ungroup() %>% rename(dest = login, src = c04_peer04)
c04_peers_05 <- network_data %>% group_by(id_user, login, c04_peer05) %>% summarise(project = "c04") %>% ungroup() %>% rename(dest = login, src = c04_peer05)
c04_peers_06 <- network_data %>% group_by(id_user, login, c04_peer06) %>% summarise(project = "c04") %>% ungroup() %>% rename(dest = login, src = c04_peer06)

# c05

c05_peers_01 <- network_data %>% group_by(id_user, login, c05_peer01) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer01)
c05_peers_02 <- network_data %>% group_by(id_user, login, c05_peer02) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer02)
c05_peers_03 <- network_data %>% group_by(id_user, login, c05_peer03) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer03)
c05_peers_04 <- network_data %>% group_by(id_user, login, c05_peer04) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer04)
c05_peers_05 <- network_data %>% group_by(id_user, login, c05_peer05) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer05)
c05_peers_06 <- network_data %>% group_by(id_user, login, c05_peer06) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer06)
c05_peers_07 <- network_data %>% group_by(id_user, login, c05_peer07) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer07)
c05_peers_08 <- network_data %>% group_by(id_user, login, c05_peer08) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer08)
c05_peers_09 <- network_data %>% group_by(id_user, login, c05_peer09) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer09)
c05_peers_10 <- network_data %>% group_by(id_user, login, c05_peer10) %>% summarise(project = "c05") %>% ungroup() %>% rename(dest = login, src = c05_peer10)

# c06

c06_peers_01 <- network_data %>% group_by(id_user, login, c06_peer01) %>% summarise(project = "c06") %>% ungroup() %>% rename(dest = login, src = c06_peer01)
c06_peers_02 <- network_data %>% group_by(id_user, login, c06_peer02) %>% summarise(project = "c06") %>% ungroup() %>% rename(dest = login, src = c06_peer02)
c06_peers_03 <- network_data %>% group_by(id_user, login, c06_peer03) %>% summarise(project = "c06") %>% ungroup() %>% rename(dest = login, src = c06_peer03)
c06_peers_04 <- network_data %>% group_by(id_user, login, c06_peer04) %>% summarise(project = "c06") %>% ungroup() %>% rename(dest = login, src = c06_peer04)
c06_peers_05 <- network_data %>% group_by(id_user, login, c06_peer05) %>% summarise(project = "c06") %>% ungroup() %>% rename(dest = login, src = c06_peer05)
c06_peers_06 <- network_data %>% group_by(id_user, login, c06_peer06) %>% summarise(project = "c06") %>% ungroup() %>% rename(dest = login, src = c06_peer06)

# c07

c07_peers_01 <- network_data %>% group_by(id_user, login, c07_peer01) %>% summarise(project = "c07") %>% ungroup() %>% rename(dest = login, src = c07_peer01)
c07_peers_02 <- network_data %>% group_by(id_user, login, c07_peer02) %>% summarise(project = "c07") %>% ungroup() %>% rename(dest = login, src = c07_peer02)
c07_peers_03 <- network_data %>% group_by(id_user, login, c07_peer03) %>% summarise(project = "c07") %>% ungroup() %>% rename(dest = login, src = c07_peer03)
c07_peers_04 <- network_data %>% group_by(id_user, login, c07_peer04) %>% summarise(project = "c07") %>% ungroup() %>% rename(dest = login, src = c07_peer04)
c07_peers_05 <- network_data %>% group_by(id_user, login, c07_peer05) %>% summarise(project = "c07") %>% ungroup() %>% rename(dest = login, src = c07_peer05)
c07_peers_06 <- network_data %>% group_by(id_user, login, c07_peer06) %>% summarise(project = "c07") %>% ungroup() %>% rename(dest = login, src = c07_peer06)
c07_peers_07 <- network_data %>% group_by(id_user, login, c07_peer07) %>% summarise(project = "c07") %>% ungroup() %>% rename(dest = login, src = c07_peer07)
c07_peers_08 <- network_data %>% group_by(id_user, login, c07_peer08) %>% summarise(project = "c07") %>% ungroup() %>% rename(dest = login, src = c07_peer08)

# c08

c08_peers_01 <- network_data %>% group_by(id_user, login, c08_peer01) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer01)
c08_peers_02 <- network_data %>% group_by(id_user, login, c08_peer02) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer02)
c08_peers_03 <- network_data %>% group_by(id_user, login, c08_peer03) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer03)
c08_peers_04 <- network_data %>% group_by(id_user, login, c08_peer04) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer04)
c08_peers_05 <- network_data %>% group_by(id_user, login, c08_peer05) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer05)
c08_peers_06 <- network_data %>% group_by(id_user, login, c08_peer06) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer06)
c08_peers_07 <- network_data %>% group_by(id_user, login, c08_peer07) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer07)
c08_peers_08 <- network_data %>% group_by(id_user, login, c08_peer08) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer08)
c08_peers_09 <- network_data %>% group_by(id_user, login, c08_peer09) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer09)
c08_peers_10 <- network_data %>% group_by(id_user, login, c08_peer10) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer10)
c08_peers_11 <- network_data %>% group_by(id_user, login, c08_peer11) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer11)
c08_peers_12 <- network_data %>% group_by(id_user, login, c08_peer12) %>% summarise(project = "c08") %>% ungroup() %>% rename(dest = login, src = c08_peer12)

# c09

c09_peers_01 <- network_data %>% group_by(id_user, login, c09_peer01) %>% summarise(project = "c09") %>% ungroup() %>% rename(dest = login, src = c09_peer01)
c09_peers_02 <- network_data %>% group_by(id_user, login, c09_peer02) %>% summarise(project = "c09") %>% ungroup() %>% rename(dest = login, src = c09_peer02)
c09_peers_03 <- network_data %>% group_by(id_user, login, c09_peer03) %>% summarise(project = "c09") %>% ungroup() %>% rename(dest = login, src = c09_peer03)
c09_peers_04 <- network_data %>% group_by(id_user, login, c09_peer04) %>% summarise(project = "c09") %>% ungroup() %>% rename(dest = login, src = c09_peer04)
c09_peers_05 <- network_data %>% group_by(id_user, login, c09_peer05) %>% summarise(project = "c09") %>% ungroup() %>% rename(dest = login, src = c09_peer05)
c09_peers_06 <- network_data %>% group_by(id_user, login, c09_peer06) %>% summarise(project = "c09") %>% ungroup() %>% rename(dest = login, src = c09_peer06)
c09_peers_07 <- network_data %>% group_by(id_user, login, c09_peer07) %>% summarise(project = "c09") %>% ungroup() %>% rename(dest = login, src = c09_peer07)
c09_peers_08 <- network_data %>% group_by(id_user, login, c09_peer08) %>% summarise(project = "c09") %>% ungroup() %>% rename(dest = login, src = c09_peer08)

# c10

c10_peers_01 <- network_data %>% group_by(id_user, login, c10_peer01) %>% summarise(project = "c10") %>% ungroup() %>% rename(dest = login, src = c10_peer01)
c10_peers_02 <- network_data %>% group_by(id_user, login, c10_peer02) %>% summarise(project = "c10") %>% ungroup() %>% rename(dest = login, src = c10_peer02)

# c11

c11_peers_01 <- network_data %>% group_by(id_user, login, c11_peer01) %>% summarise(project = "c11") %>% ungroup() %>% rename(dest = login, src = c11_peer01)
c11_peers_02 <- network_data %>% group_by(id_user, login, c11_peer02) %>% summarise(project = "c11") %>% ungroup() %>% rename(dest = login, src = c11_peer02)

# bind everything

peers <- bind_rows(s00_peers_01, s00_peers_02, s00_peers_03, s00_peers_04, s00_peers_05, s00_peers_06, s00_peers_07, s00_peers_08, s00_peers_09, s00_peers_10, s00_peers_11, s00_peers_12, s00_peers_13, s00_peers_14, s00_peers_15, s00_peers_16,
				   s01_peers_01, s01_peers_02, s01_peers_03, s01_peers_04, s01_peers_05, s01_peers_06, s01_peers_07, s01_peers_08, s01_peers_09, s01_peers_10, s01_peers_11, s01_peers_12, s01_peers_13, s01_peers_14,
				   c00_peers_01, c00_peers_02, c00_peers_03, c00_peers_04, c00_peers_05, c00_peers_06, c00_peers_07, c00_peers_08, c00_peers_09, c00_peers_10, c00_peers_11, c00_peers_12,
				   c01_peers_01, c01_peers_02, c01_peers_03, c01_peers_04, c01_peers_05, c01_peers_06, c01_peers_07, c01_peers_08, c01_peers_09, c01_peers_10, c01_peers_11, c01_peers_12,
				   c02_peers_01, c02_peers_02, c02_peers_03, c02_peers_04, c02_peers_05, c02_peers_06, c02_peers_07, c02_peers_08, c02_peers_09, c02_peers_10, c02_peers_11, c02_peers_12, c02_peers_13, c02_peers_14, c02_peers_15, c02_peers_16,
				   c03_peers_01, c03_peers_02, c03_peers_03, c03_peers_04, c03_peers_05, c03_peers_06, c03_peers_07, c03_peers_08, c03_peers_09, c03_peers_10,
				   c04_peers_01, c04_peers_02, c04_peers_03, c04_peers_04, c04_peers_05, c04_peers_06,
				   c05_peers_01, c05_peers_02, c05_peers_03, c05_peers_04, c05_peers_05, c05_peers_06, c05_peers_07, c05_peers_08, c05_peers_09, c05_peers_10,
				   c06_peers_01, c06_peers_02, c06_peers_03, c06_peers_04, c06_peers_05, c06_peers_06,
				   c07_peers_01, c07_peers_02, c07_peers_03, c07_peers_04, c07_peers_05, c07_peers_06, c07_peers_07, c07_peers_08,
				   c08_peers_01, c08_peers_02, c08_peers_03, c08_peers_04, c08_peers_05, c08_peers_06, c08_peers_07, c08_peers_08, c08_peers_09, c08_peers_10, c08_peers_11, c08_peers_12,
				   c09_peers_01, c09_peers_02, c09_peers_03, c09_peers_04, c09_peers_05, c09_peers_06, c09_peers_07, c09_peers_08,
				   c10_peers_01, c10_peers_02,
				   c11_peers_01, c11_peers_02)

peers <- peers %>% filter(!is.na(src)) %>% filter(src != "")

peers <- peers %>% mutate(id_eval = row_number()) %>% relocate(id_eval, .before = id_user)

per_eval <- peers %>% group_by(src, dest, project) %>% summarise(weight = n()) %>% ungroup()

nodes <- peers %>% distinct(src) %>% rename(id_user = src)
nodes <- nodes %>% mutate(id = row_number(), shape = " dot") %>% relocate(id, .before = id_user) %>% rename(label = id_user)

edges <- per_eval %>% left_join(nodes, by = c("src" = "label")) %>% rename(from = id)
edges <- edges %>% left_join(nodes, by = c("dest" = "label")) %>% rename(to = id)
edges <- select(edges, from, to, weight, project)

edges <- edges %>% na.omit
edges <- edges %>% rename(label = project)

# Show/Hide
### projects
all_projects = c("s00", "s01", "c01", "c02", "c03", "c04", "c05", "c06", "c07", "c08", "c09", "c10", "c11", "c12", "c13")
shown_projects = all_projects[3]

edges <- edges %>% mutate(hidden = case_when(label %in% shown_projects ~ FALSE,
                                             !(label %in% shown_projects) ~ TRUE))

# vis Network

visNetwork(nodes, edges, height = "1440px", width = "100%") %>%
  visOptions(collapse = FALSE,
             clickToUse = FALSE,
             highlightNearest = list(enabled = TRUE, algorithm = "all", 
                                     degree = list(from = 1, to = 1))) %>%
  visIgraphLayout(layout = "layout_with_fr") %>% 
  visEdges(arrows = "middle") %>%
  visNodes(color = list(background = "lightblue", 
                        border = "darkblue",
                        highlight = "yellow"))

library(shiny)
library(shinydashboard)
library(dplyr)
library(igraph)
library(visNetwork)

all_campuses = c("Wolfsburg", "Heilbronn")
all_months = c("02-2021 (February)", "03-2021 (March)", "04-2021 (April)")
studentship = c("Yes", "No")

shown_months = all_months[1:3]
shown_campuses = all_campuses[1:2]
show_studentship = studentship[1:2]

### Get data
data_complete = read.csv("data/data_complete.csv")
network_data <- data_complete %>% filter(campus %in% shown_campuses, month %in% shown_months, Student %in% show_studentship)

### Front end
ui <- dashboardPage(
	dashboardHeader(title = "Menu"),
	sidebar <- dashboardSidebar(
		textInput("login", "Intra login:"),
		checkboxGroupInput("shown_projects", "Select projects", choices = c(
			"Shell 00" = "Shell 00", "Shell 01" = "Shell 01",
	    	"C 00" = "C 00", "C 01" = "C 01", "C 02" = "C 02",
	    	"C 03" = "C 03", "C 04" = "C 04", "C 05" = "C 05",
	    	"C 06" = "C 06", "C 07" = "C 07", "C 08" = "C 08",
	    	"C 09" = "C 09", "C 10" = "C 10", "C 11" = "C 11",
	    	"C 12" = "C 12", "C 13" = "C 13"), selected = 1),
		actionButton("updateButton", "Generate Network!", class = "btn-success")
	),
	body <- dashboardBody(
		fillPage(
			tags$style(type = "text/css", "#Waterfall {height: calc(100vh - 80px) !important;}"),
			visNetworkOutput("network", height = "1440px", width = "2560px"))
	),
	dashboardPage(dashboardHeader(title = "Dashboard"), sidebar, body)
)

### Back end
server <- function(input, output, session) {
	output$network <- renderVisNetwork(
	{
		if (input$updateButton == 0)
			return()
    	isolate({
			validate(need(input$login != "", 'Intra login is needed (ex. "mbarut")'))
			validate(need((input$login != "" && input$login %in% network_data$login), 'Intra login was not found'))
			validate(need((input$shown_projects != ""), 'At least one project must be selected'))
			shown_campuses = network_data[network_data$login == input$login, "campus"]
			shown_months = network_data[network_data$login == input$login, "month"]
			shown_projects = input$shown_projects
			# pick the data
			network_data <- data_complete %>% filter(campus %in% shown_campuses, month %in% shown_months, Student %in% show_studentship)
			# s00
			s00_peers_01 <- network_data %>% group_by(id_user, login, s00_peer01) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer01)
			s00_peers_02 <- network_data %>% group_by(id_user, login, s00_peer02) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer02)
			s00_peers_03 <- network_data %>% group_by(id_user, login, s00_peer03) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer03)
			s00_peers_04 <- network_data %>% group_by(id_user, login, s00_peer04) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer04)
			s00_peers_05 <- network_data %>% group_by(id_user, login, s00_peer05) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer05)
			s00_peers_06 <- network_data %>% group_by(id_user, login, s00_peer06) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer06)
			s00_peers_07 <- network_data %>% group_by(id_user, login, s00_peer07) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer07)
			s00_peers_08 <- network_data %>% group_by(id_user, login, s00_peer08) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer08)
			s00_peers_09 <- network_data %>% group_by(id_user, login, s00_peer09) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer09)
			s00_peers_10 <- network_data %>% group_by(id_user, login, s00_peer10) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer10)
			s00_peers_11 <- network_data %>% group_by(id_user, login, s00_peer11) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer11)
			s00_peers_12 <- network_data %>% group_by(id_user, login, s00_peer12) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer12)
			s00_peers_13 <- network_data %>% group_by(id_user, login, s00_peer13) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer13)
			s00_peers_14 <- network_data %>% group_by(id_user, login, s00_peer14) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer14)
			s00_peers_15 <- network_data %>% group_by(id_user, login, s00_peer15) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer15)
			s00_peers_16 <- network_data %>% group_by(id_user, login, s00_peer16) %>% summarise(project = "Shell 00") %>% ungroup() %>% rename(dest = login, src = s00_peer16)
			# s01
			s01_peers_01 <- network_data %>% group_by(id_user, login, s01_peer01) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer01)
			s01_peers_02 <- network_data %>% group_by(id_user, login, s01_peer02) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer02)
			s01_peers_03 <- network_data %>% group_by(id_user, login, s01_peer03) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer03)
			s01_peers_04 <- network_data %>% group_by(id_user, login, s01_peer04) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer04)
			s01_peers_05 <- network_data %>% group_by(id_user, login, s01_peer05) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer05)
			s01_peers_06 <- network_data %>% group_by(id_user, login, s01_peer06) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer06)
			s01_peers_07 <- network_data %>% group_by(id_user, login, s01_peer07) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer07)
			s01_peers_08 <- network_data %>% group_by(id_user, login, s01_peer08) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer08)
			s01_peers_09 <- network_data %>% group_by(id_user, login, s01_peer09) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer09)
			s01_peers_10 <- network_data %>% group_by(id_user, login, s01_peer10) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer10)
			s01_peers_11 <- network_data %>% group_by(id_user, login, s01_peer11) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer11)
			s01_peers_12 <- network_data %>% group_by(id_user, login, s01_peer12) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer12)
			s01_peers_13 <- network_data %>% group_by(id_user, login, s01_peer13) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer13)
			s01_peers_14 <- network_data %>% group_by(id_user, login, s01_peer14) %>% summarise(project = "Shell 01") %>% ungroup() %>% rename(dest = login, src = s01_peer14)
			# c00
			c00_peers_01 <- network_data %>% group_by(id_user, login, c00_peer01) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer01)
			c00_peers_02 <- network_data %>% group_by(id_user, login, c00_peer02) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer02)
			c00_peers_03 <- network_data %>% group_by(id_user, login, c00_peer03) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer03)
			c00_peers_04 <- network_data %>% group_by(id_user, login, c00_peer04) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer04)
			c00_peers_05 <- network_data %>% group_by(id_user, login, c00_peer05) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer05)
			c00_peers_06 <- network_data %>% group_by(id_user, login, c00_peer06) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer06)
			c00_peers_07 <- network_data %>% group_by(id_user, login, c00_peer07) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer07)
			c00_peers_08 <- network_data %>% group_by(id_user, login, c00_peer08) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer08)
			c00_peers_09 <- network_data %>% group_by(id_user, login, c00_peer09) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer09)
			c00_peers_10 <- network_data %>% group_by(id_user, login, c00_peer10) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer10)
			c00_peers_11 <- network_data %>% group_by(id_user, login, c00_peer11) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer11)
			c00_peers_12 <- network_data %>% group_by(id_user, login, c00_peer12) %>% summarise(project = "C 00") %>% ungroup() %>% rename(dest = login, src = c00_peer12)
			# c01
			c01_peers_01 <- network_data %>% group_by(id_user, login, c01_peer01) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer01)
			c01_peers_02 <- network_data %>% group_by(id_user, login, c01_peer02) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer02)
			c01_peers_03 <- network_data %>% group_by(id_user, login, c01_peer03) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer03)
			c01_peers_04 <- network_data %>% group_by(id_user, login, c01_peer04) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer04)
			c01_peers_05 <- network_data %>% group_by(id_user, login, c01_peer05) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer05)
			c01_peers_06 <- network_data %>% group_by(id_user, login, c01_peer06) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer06)
			c01_peers_07 <- network_data %>% group_by(id_user, login, c01_peer07) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer07)
			c01_peers_08 <- network_data %>% group_by(id_user, login, c01_peer08) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer08)
			c01_peers_09 <- network_data %>% group_by(id_user, login, c01_peer09) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer09)
			c01_peers_10 <- network_data %>% group_by(id_user, login, c01_peer10) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer10)
			c01_peers_11 <- network_data %>% group_by(id_user, login, c01_peer11) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer11)
			c01_peers_12 <- network_data %>% group_by(id_user, login, c01_peer12) %>% summarise(project = "C 01") %>% ungroup() %>% rename(dest = login, src = c01_peer12)
			# c02
			c02_peers_01 <- network_data %>% group_by(id_user, login, c02_peer01) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer01)
			c02_peers_02 <- network_data %>% group_by(id_user, login, c02_peer02) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer02)
			c02_peers_03 <- network_data %>% group_by(id_user, login, c02_peer03) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer03)
			c02_peers_04 <- network_data %>% group_by(id_user, login, c02_peer04) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer04)
			c02_peers_05 <- network_data %>% group_by(id_user, login, c02_peer05) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer05)
			c02_peers_06 <- network_data %>% group_by(id_user, login, c02_peer06) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer06)
			c02_peers_07 <- network_data %>% group_by(id_user, login, c02_peer07) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer07)
			c02_peers_08 <- network_data %>% group_by(id_user, login, c02_peer08) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer08)
			c02_peers_09 <- network_data %>% group_by(id_user, login, c02_peer09) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer09)
			c02_peers_10 <- network_data %>% group_by(id_user, login, c02_peer10) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer10)
			c02_peers_11 <- network_data %>% group_by(id_user, login, c02_peer11) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer11)
			c02_peers_12 <- network_data %>% group_by(id_user, login, c02_peer12) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer12)
			c02_peers_13 <- network_data %>% group_by(id_user, login, c02_peer13) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer13)
			c02_peers_14 <- network_data %>% group_by(id_user, login, c02_peer14) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer14)
			c02_peers_15 <- network_data %>% group_by(id_user, login, c02_peer15) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer15)
			c02_peers_16 <- network_data %>% group_by(id_user, login, c02_peer16) %>% summarise(project = "C 02") %>% ungroup() %>% rename(dest = login, src = c02_peer16)
			# c03
			c03_peers_01 <- network_data %>% group_by(id_user, login, c03_peer01) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer01)
			c03_peers_02 <- network_data %>% group_by(id_user, login, c03_peer02) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer02)
			c03_peers_03 <- network_data %>% group_by(id_user, login, c03_peer03) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer03)
			c03_peers_04 <- network_data %>% group_by(id_user, login, c03_peer04) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer04)
			c03_peers_05 <- network_data %>% group_by(id_user, login, c03_peer05) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer05)
			c03_peers_06 <- network_data %>% group_by(id_user, login, c03_peer06) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer06)
			c03_peers_07 <- network_data %>% group_by(id_user, login, c03_peer07) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer07)
			c03_peers_08 <- network_data %>% group_by(id_user, login, c03_peer08) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer08)
			c03_peers_09 <- network_data %>% group_by(id_user, login, c03_peer09) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer09)
			c03_peers_10 <- network_data %>% group_by(id_user, login, c03_peer10) %>% summarise(project = "C 03") %>% ungroup() %>% rename(dest = login, src = c03_peer10)
			# c04
			c04_peers_01 <- network_data %>% group_by(id_user, login, c04_peer01) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer01)
			c04_peers_02 <- network_data %>% group_by(id_user, login, c04_peer02) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer02)
			c04_peers_03 <- network_data %>% group_by(id_user, login, c04_peer03) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer03)
			c04_peers_04 <- network_data %>% group_by(id_user, login, c04_peer04) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer04)
			c04_peers_05 <- network_data %>% group_by(id_user, login, c04_peer05) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer05)
			c04_peers_06 <- network_data %>% group_by(id_user, login, c04_peer06) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer06)
			c04_peers_07 <- network_data %>% group_by(id_user, login, c04_peer07) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer07)
			c04_peers_08 <- network_data %>% group_by(id_user, login, c04_peer08) %>% summarise(project = "C 04") %>% ungroup() %>% rename(dest = login, src = c04_peer08)
			# c05
			c05_peers_01 <- network_data %>% group_by(id_user, login, c05_peer01) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer01)
			c05_peers_02 <- network_data %>% group_by(id_user, login, c05_peer02) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer02)
			c05_peers_03 <- network_data %>% group_by(id_user, login, c05_peer03) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer03)
			c05_peers_04 <- network_data %>% group_by(id_user, login, c05_peer04) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer04)
			c05_peers_05 <- network_data %>% group_by(id_user, login, c05_peer05) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer05)
			c05_peers_06 <- network_data %>% group_by(id_user, login, c05_peer06) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer06)
			c05_peers_07 <- network_data %>% group_by(id_user, login, c05_peer07) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer07)
			c05_peers_08 <- network_data %>% group_by(id_user, login, c05_peer08) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer08)
			c05_peers_09 <- network_data %>% group_by(id_user, login, c05_peer09) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer09)
			c05_peers_10 <- network_data %>% group_by(id_user, login, c05_peer10) %>% summarise(project = "C 05") %>% ungroup() %>% rename(dest = login, src = c05_peer10)
			# c06
			c06_peers_01 <- network_data %>% group_by(id_user, login, c06_peer01) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer01)
			c06_peers_02 <- network_data %>% group_by(id_user, login, c06_peer02) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer02)
			c06_peers_03 <- network_data %>% group_by(id_user, login, c06_peer03) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer03)
			c06_peers_04 <- network_data %>% group_by(id_user, login, c06_peer04) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer04)
			c06_peers_05 <- network_data %>% group_by(id_user, login, c06_peer05) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer05)
			c06_peers_06 <- network_data %>% group_by(id_user, login, c06_peer06) %>% summarise(project = "C 06") %>% ungroup() %>% rename(dest = login, src = c06_peer06)
			# c07
			c07_peers_01 <- network_data %>% group_by(id_user, login, c07_peer01) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer01)
			c07_peers_02 <- network_data %>% group_by(id_user, login, c07_peer02) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer02)
			c07_peers_03 <- network_data %>% group_by(id_user, login, c07_peer03) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer03)
			c07_peers_04 <- network_data %>% group_by(id_user, login, c07_peer04) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer04)
			c07_peers_05 <- network_data %>% group_by(id_user, login, c07_peer05) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer05)
			c07_peers_06 <- network_data %>% group_by(id_user, login, c07_peer06) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer06)
			c07_peers_07 <- network_data %>% group_by(id_user, login, c07_peer07) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer07)
			c07_peers_08 <- network_data %>% group_by(id_user, login, c07_peer08) %>% summarise(project = "C 07") %>% ungroup() %>% rename(dest = login, src = c07_peer08)
			# c08
			c08_peers_01 <- network_data %>% group_by(id_user, login, c08_peer01) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer01)
			c08_peers_02 <- network_data %>% group_by(id_user, login, c08_peer02) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer02)
			c08_peers_03 <- network_data %>% group_by(id_user, login, c08_peer03) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer03)
			c08_peers_04 <- network_data %>% group_by(id_user, login, c08_peer04) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer04)
			c08_peers_05 <- network_data %>% group_by(id_user, login, c08_peer05) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer05)
			c08_peers_06 <- network_data %>% group_by(id_user, login, c08_peer06) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer06)
			c08_peers_07 <- network_data %>% group_by(id_user, login, c08_peer07) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer07)
			c08_peers_08 <- network_data %>% group_by(id_user, login, c08_peer08) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer08)
			c08_peers_09 <- network_data %>% group_by(id_user, login, c08_peer09) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer09)
			c08_peers_10 <- network_data %>% group_by(id_user, login, c08_peer10) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer10)
			c08_peers_11 <- network_data %>% group_by(id_user, login, c08_peer11) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer11)
			c08_peers_12 <- network_data %>% group_by(id_user, login, c08_peer12) %>% summarise(project = "C 08") %>% ungroup() %>% rename(dest = login, src = c08_peer12)
			# c09
			c09_peers_01 <- network_data %>% group_by(id_user, login, c09_peer01) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer01)
			c09_peers_02 <- network_data %>% group_by(id_user, login, c09_peer02) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer02)
			c09_peers_03 <- network_data %>% group_by(id_user, login, c09_peer03) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer03)
			c09_peers_04 <- network_data %>% group_by(id_user, login, c09_peer04) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer04)
			c09_peers_05 <- network_data %>% group_by(id_user, login, c09_peer05) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer05)
			c09_peers_06 <- network_data %>% group_by(id_user, login, c09_peer06) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer06)
			c09_peers_07 <- network_data %>% group_by(id_user, login, c09_peer07) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer07)
			c09_peers_08 <- network_data %>% group_by(id_user, login, c09_peer08) %>% summarise(project = "C 09") %>% ungroup() %>% rename(dest = login, src = c09_peer08)
			# c10
			c10_peers_01 <- network_data %>% group_by(id_user, login, c10_peer01) %>% summarise(project = "C 10") %>% ungroup() %>% rename(dest = login, src = c10_peer01)
			c10_peers_02 <- network_data %>% group_by(id_user, login, c10_peer02) %>% summarise(project = "C 10") %>% ungroup() %>% rename(dest = login, src = c10_peer02)
			# c11
			c11_peers_01 <- network_data %>% group_by(id_user, login, c11_peer01) %>% summarise(project = "C 11") %>% ungroup() %>% rename(dest = login, src = c11_peer01)
			c11_peers_02 <- network_data %>% group_by(id_user, login, c11_peer02) %>% summarise(project = "C 11") %>% ungroup() %>% rename(dest = login, src = c11_peer02)
			# bind everything
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
			# Transform the data into node/edge format
			peers <- peers %>% filter(!is.na(src)) %>% filter(src != "")
			peers <- peers %>% mutate(id_eval = row_number()) %>% relocate(id_eval, .before = id_user)		
			per_eval <- peers %>% group_by(src, dest, project) %>% summarise(weight = n()) %>% ungroup()
			nodes <- peers %>% distinct(src) %>% rename(id_user = src)
			nodes <- nodes %>% mutate(id = row_number(), shape = "dot", color = "#DADCDE", size = 2, font.size = 2, font.color = "#DADCDE") %>% relocate(id, .before = id_user) %>% rename(label = id_user)		
			nodes[nodes$label == input$login, "shape"] <- "dot"
			nodes[nodes$label == input$login, "size"] <- 5
			nodes[nodes$label == input$login, "color"] <- "#FF9A00"
			nodes[nodes$label == input$login, "font.size"] <- 10
			nodes[nodes$label == input$login, "font.color"] <- "#343434"
			evaluate_to = per_eval[which(per_eval$src == input$login & per_eval$project %in% shown_projects), ]
			evaluate_from = per_eval[which(per_eval$dest == input$login & per_eval$project %in% shown_projects), ]
			print(evaluate_to$dest)
			print(evaluate_from$src)
			print(which(evaluate_to$dest %in% evaluate_from$src))
			print(nodes$label %in% evaluate_to$dest & nodes$label %in% evaluate_from$src)
			nodes[nodes$label %in% evaluate_to$dest, "size"] <- 5
			nodes[nodes$label %in% evaluate_to$dest, "font.size"] <- 10
			nodes[nodes$label %in% evaluate_to$dest, "color"] <- "#FF9A00"
			nodes[nodes$label %in% evaluate_to$dest, "font.color"] <- "#343434"
			nodes[nodes$label %in% evaluate_from$src, "size"] <- 5
			nodes[nodes$label %in% evaluate_from$src, "font.size"] <- 10
			nodes[nodes$label %in% evaluate_from$src, "color"] <- "#27A7D8"
			nodes[nodes$label %in% evaluate_from$src, "font.color"] <- "#343434"
			edges <- per_eval %>% left_join(nodes, by = c("src" = "label")) %>% rename(from = id)
			edges <- edges %>% left_join(nodes, by = c("dest" = "label")) %>% rename(to = id)
			
			edges <- select(edges, src, dest, from, to, weight, project)
			edges <- edges %>% na.omit
			
			edges <- edges %>% rename(label = project)
			
			edges <- edges %>% mutate(hidden = TRUE, smooth = FALSE)
			
			edges[which(edges$src == input$login & edges$label %in% shown_projects), "hidden"] <- FALSE
			edges[which(edges$dest == input$login & edges$label %in% shown_projects), "hidden"] <- FALSE
			
			edges[edges$dest %in% evaluate_from$src & edges$src == input$login & edges$hidden == FALSE, "smooth"] <- TRUE
			edges[edges$src %in% evaluate_to$dest & edges$dest == input$login & edges$hidden == FALSE, "smooth"] <- TRUE

			edges[edges$hidden == FALSE, "font.size"] <- 5
			
			visNetwork(nodes, edges) %>%
				visOptions(
					collapse = FALSE,
					clickToUse = FALSE,
					highlightNearest = list(enabled = TRUE, hover = TRUE, algorithm = "hierarchical")) %>%
			    visInteraction(hover = TRUE) %>%
					visIgraphLayout(layout = "layout_with_fr", randomSeed = 42, type = "full") %>%
					visEdges(arrows = list(to = list(enabled = TRUE, scaleFactor = 0.2)))
			})
		}
	)
}

shinyApp(ui, server)
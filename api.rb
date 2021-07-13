require "json"
require "oauth2"

# This .rb file creates a gateway to the 42 intra data via API access with correct credentials. 
# The API is RESTful, uses JSON over HTTPS and lets you authenticate users with OAuth 2.0.
# Returned data is stored in data/json/ in JSON format.
# The return JSON format is not completely valid, so needs to manually modified, consult Mert if necessary.
# For more information, go to https://api.intra.42.fr/apidoc (for 42 students and staff)

# Credentials
UID = "f4e456317f7772886e192b7655b5b5f5f674c901b0f8806c3e4e9c7a7bdec0d1"
SECRET = "GET_YOUR_OWN_KEY"

# Create the client
client = OAuth2::Client.new(UID, SECRET, site: "https://api.intra.42.fr")

# Get an access token
token = client.client_credentials.get_token

# Data of those who attended Germmany Basecamp (in February, March, and April)
$i = 0
$page = 1
while $i < 50 do
	users = token.get("/v2/cursus/germany-basecamp/cursus_users", params: {page: {number: $page}}).parsed
	File.open("data/json/cursus_users.json", "a") do |f|
		f.write(JSON.pretty_generate(users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# Data of the students in Heilbronn
$i = 0
$page = 1
while $i < 20 do
	students = token.get("/v2/cursus/21/cursus_users", params: {page: {number: $page}, filter: {campus_id: 39}}).parsed
	File.open("data/json/heilbronn_students.json", "a") do |f|
		f.write(JSON.pretty_generate(students))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# Data of the students in Wolfsburg
$i = 0
$page = 1
while $i < 20 do
	students = token.get("/v2/cursus/21/cursus_users", params: {page: {number: $page}, filter: {campus_id: 44}}).parsed
	File.open("data/json/wolfsburg_students.json", "a") do |f|
		f.write(JSON.pretty_generate(students))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# Data of the users* in Heilbronn
$i = 0
$page = 1
while $i < 50 do
	heilbronn_users = token.get("/v2/campus/39/users", params: {page: {number: $page}}).parsed
	File.open("data/json/heilbronn_users.json", "a") do |f|
		f.write(JSON.pretty_generate(heilbronn_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# * users are those who have data in 42 because they attended the basecamp (not necessarily students)

# Data of the users* in Wolfsburg
$i = 0
$page = 1
while $i < 50 do
	wolfsburg_users = token.get("/v2/campus/44/users", params: {page: {number: $page}}).parsed
	File.open("data/json/wolfsburg_users.json", "a") do |f|
		f.write(JSON.pretty_generate(wolfsburg_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# * users are those who have data in 42 because they attended the basecamp (not necessarily students)

# Data of the projects in the Basecamp 
while $i < 50 do
	projects = token.get("/v2/cursus/germany-basecamp/projects", params: {page: {number: $page}}).parsed
	File.open("public/projects.json", "a") do |f|
		f.write(JSON.pretty_generate(projects))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [a00] Data of the first project in the Basecamp: "I accept"
$i = 0
$page = 1
while $i < 50 do
	a00_users = token.get("/v2/projects/1889/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1889},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/a00_users.json", "a") do |f|
		f.write(JSON.pretty_generate(a00_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [s00] Data of the first shell project in the Basecamp: "Shell 00"
$i = 0
$page = 1
while $i < 50 do
	s00_users = token.get("/v2/projects/1890/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1890},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/s00_users.json", "a") do |f|
		f.write(JSON.pretty_generate(s00_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [s01] Data of the second shell project in the Basecamp: "Shell 01"
$i = 0
$page = 1
while $i < 50 do
	s01_users = token.get("/v2/projects/1891/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1891},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/s01_users.json", "a") do |f|
		f.write(JSON.pretty_generate(s01_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c00] Data of the first C project in the Basecamp: "C 00"
$i = 0
$page = 1
while $i < 50 do
	c00_users = token.get("/v2/projects/1892/projects_users", params: 
	{
		page: {number: $page},
		project_id: {String: 1892},
	}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c00_users.json", "a") do |f|
	f.write(JSON.pretty_generate(c00_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c01] Data of the following C project in the Basecamp: "C 01"
$i = 0
$page = 1
while $i < 50 do
	c01_users = token.get("/v2/projects/1893/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1893},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c01_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c01_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c02] Data of the following C project in the Basecamp: "C 02"
$i = 0
$page = 1
while $i < 50 do
	c02_users = token.get("/v2/projects/1894/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1894},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c02_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c02_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c03] Data of the following C project in the Basecamp: "C 03"
$i = 0
$page = 1
while $i < 40 do
	c03_users = token.get("/v2/projects/1895/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1895},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c03_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c03_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c04] Data of the following C project in the Basecamp: "C 04"
$i = 0
$page = 1
while $i < 40 do
	c04_users = token.get("/v2/projects/1896/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1896},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c04_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c04_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c05] Data of the following C project in the Basecamp: "C 05"
$i = 0
$page = 1
while $i < 40 do
	c05_users = token.get("/v2/projects/1897/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1897},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c05_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c05_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c06] Data of the following C project in the Basecamp: "C 06"
$i = 0
$page = 1
while $i < 20 do
	c06_users = token.get("/v2/projects/1898/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1898},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c06_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c06_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c07] Data of the following C project in the Basecamp: "C 07"
$i = 0
$page = 1
while $i < 20 do
	c07_users = token.get("/v2/projects/1899/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1899},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c07_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c07_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c08] Data of the following C project in the Basecamp: "C 08"
$i = 0
$page = 1
while $i < 10 do
	c08_users = token.get("/v2/projects/1900/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1900},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c08_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c08_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c09] Data of the following C project in the Basecamp: "C 09"
$i = 0
$page = 1
while $i < 10 do
	c09_users = token.get("/v2/projects/1901/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1901},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c09_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c09_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c10] Data of the following C project in the Basecamp: "C 10"
$i = 0
$page = 1
while $i < 5 do
	c10_users = token.get("/v2/projects/1903/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1903},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c10_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c10_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c11] Data of the following C project in the Basecamp: "C 11"
$i = 0
$page = 1
while $i < 5 do
	c11_users = token.get("/v2/projects/1904/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1904},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c11_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c11_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c12] Data of the following C project in the Basecamp: "C 12"
$i = 0
$page = 1
while $i < 5 do
	c12_users = token.get("/v2/projects/1905/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1905},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c12_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c12_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [c13] Data of the following C project in the Basecamp: "C 13"
$i = 0
$page = 1
while $i < 5 do
	c13_users = token.get("/v2/projects/1906/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1906},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/c13_users.json", "a") do |f|
		f.write(JSON.pretty_generate(c13_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [r00] Data of the first group project in the Basecamp: "Rush 00"
$i = 0
$page = 1
while $i < 50 do
	r00_users = token.get("/v2/projects/1907/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1907},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/r00_users.json", "a") do |f|
		f.write(JSON.pretty_generate(r00_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [r01] Data of the second and last group project in the Basecamp: "Rush 01"
$i = 0
$page = 1
while $i < 30 do
	r01_users = token.get("/v2/projects/1908/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1908},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/r01_users.json", "a") do |f|
		f.write(JSON.pretty_generate(r01_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [e00] Data of the first exam in the Basecamp: "Exam 00"
$i = 0
$page = 1
while $i < 50 do
	e00_users = token.get("/v2/projects/1909/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1909},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/e00_users.json", "a") do |f|
		f.write(JSON.pretty_generate(e00_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [e01] Data of the second exam in the Basecamp: "Exam 01"
$i = 0
$page = 1
while $i < 21 do
	e01_users = token.get("/v2/projects/1910/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1910},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/e01_users.json", "a") do |f|
		f.write(JSON.pretty_generate(e01_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end
# [e02] Data of the final exam in the Basecamp: "Final Exam"
$i = 0
$page = 1
while $i < 21 do
	e02_users = token.get("/v2/projects/1911/projects_users", params: 
		{
			page: {number: $page},
			project_id: {String: 1911},
		}
	).parsed
	File.open("/home/mertbarut/42analytics/data/json/e02_users.json", "a") do |f|
		f.write(JSON.pretty_generate(e02_users))
	end
	$i += 1
	$page += 1
	sleep(0.5)
end

from cherrypicker import CherryPicker
import json
import pandas as pd

# This file converts .json files under data/json to .csv files to be stored in data/csv.
# Conversion method: .json -> pandas DataFrame object -> .csv
# Nested JSON objects (e.g. "user") is handled seperately when necessary using the package Cherrypicker.

# Extract 'user data' nested in 'cursus_users'
with open('data/json/cursus_users.json') as cursus_users:
    cursus_users = json.load(cursus_users)
picker = CherryPicker(cursus_users)
flat = picker['user'].flatten().get()
cursus_users_id = pd.DataFrame(flat)

#  Extract 'user data' nested in 'heilbronn students'
with open('data/json/heilbronn_students.json') as heilbronn_students:
    heilbronn_students = json.load(heilbronn_students)
picker = CherryPicker(heilbronn_students)
flat = picker['user'].flatten().get()
heilbronn_students_id = pd.DataFrame(flat)

# Extract 'user data' nested in 'wolfsburg students'
with open('data/json/wolfsburg_students.json') as wolfsburg_students:
    wolfsburg_students = json.load(wolfsburg_students)
picker = CherryPicker(wolfsburg_students)
flat = picker['user'].flatten().get()
wolfsburg_students_id = pd.DataFrame(flat)

# Extract cursus user data
### User data abaut project 'a00'
with open('data/json/a00_users.json') as a00:
    a00 = json.load(a00)
picker = CherryPicker(a00)
flat = picker['user'].flatten().get()
a00_users = pd.DataFrame(flat)

### User data abaut project 's00'
with open('data/json/s00_users.json') as s00:
    s00 = json.load(s00)
picker = CherryPicker(s00)
flat = picker['user'].flatten().get()
s00_users = pd.DataFrame(flat)

### User data abaut project 's01'
with open('data/json/s01_users.json') as s01:
    s01 = json.load(s01)
picker = CherryPicker(s01)
flat = picker['user'].flatten().get()
s01_users = pd.DataFrame(flat)

### User data abaut project 'c00'
with open('data/json/c00_users.json') as c00:
    c00 = json.load(c00)
picker = CherryPicker(c00)
flat = picker['user'].flatten().get()
c00_users = pd.DataFrame(flat)

### User data abaut project 'c01'
with open('data/json/c01_users.json') as c01:
    c01 = json.load(c01)
picker = CherryPicker(c01)
flat = picker['user'].flatten().get()
c01_users = pd.DataFrame(flat)

### User data abaut project 'c02'
with open('data/json/c02_users.json') as c02:
    c02 = json.load(c02)
picker = CherryPicker(c02)
flat = picker['user'].flatten().get()
c02_users = pd.DataFrame(flat)

### User data abaut project 'c03'
with open('data/json/c03_users.json') as c03:
    c03 = json.load(c03)
picker = CherryPicker(c03)
flat = picker['user'].flatten().get()
c03_users = pd.DataFrame(flat)

### User data abaut project 'c04'
with open('data/json/c04_users.json') as c04:
    c04 = json.load(c04)
picker = CherryPicker(c04)
flat = picker['user'].flatten().get()
c04_users = pd.DataFrame(flat)

### User data abaut project 'c05'
with open('data/json/c05_users.json') as c05:
    c05 = json.load(c05)
picker = CherryPicker(c05)
flat = picker['user'].flatten().get()
c05_users = pd.DataFrame(flat)

### User data abaut project 'c06'
with open('data/json/c06_users.json') as c06:
    c06 = json.load(c06)
picker = CherryPicker(c06)
flat = picker['user'].flatten().get()
c06_users = pd.DataFrame(flat)

### User data abaut project 'c07'
with open('data/json/c07_users.json') as c07:
    c07 = json.load(c07)
picker = CherryPicker(c07)
flat = picker['user'].flatten().get()
c07_users = pd.DataFrame(flat)

### User data abaut project 'c08'
with open('data/json/c08_users.json') as c08:
    c08 = json.load(c08)
picker = CherryPicker(c08)
flat = picker['user'].flatten().get()
c08_users = pd.DataFrame(flat)

### User data abaut project 'c09'
with open('data/json/c09_users.json') as c09:
    c09 = json.load(c09)
picker = CherryPicker(c09)
flat = picker['user'].flatten().get()
c09_users = pd.DataFrame(flat)

### User data abaut project 'c10'
with open('data/json/c10_users.json') as c10:
    c10 = json.load(c10)
picker = CherryPicker(c10)
flat = picker['user'].flatten().get()
c10_users = pd.DataFrame(flat)

### User data abaut project 'c11'
with open('data/json/c11_users.json') as c11:
    c11 = json.load(c11)
picker = CherryPicker(c11)
flat = picker['user'].flatten().get()
c11_users = pd.DataFrame(flat)

### User data abaut project 'c12'
with open('data/json/c12_users.json') as c12:
    c12 = json.load(c12)
picker = CherryPicker(c12)
flat = picker['user'].flatten().get()
c12_users = pd.DataFrame(flat)

### User data abaut project 'c13'
with open('data/json/c13_users.json') as c13:
    c13 = json.load(c13)
picker = CherryPicker(c13)
flat = picker['user'].flatten().get()
c13_users = pd.DataFrame(flat)

### User data abaut group project 'r00'
with open('data/json/r00_users.json') as r00:
    r00 = json.load(r00)
picker = CherryPicker(r00)
flat = picker['user'].flatten().get()
r00_users = pd.DataFrame(flat)

### User data abaut group project 'r01'
with open('data/json/r01_users.json') as r01:
    r01 = json.load(r01)
picker = CherryPicker(r01)
flat = picker['user'].flatten().get()
r01_users = pd.DataFrame(flat)

### User data abaut exam 'e00'
with open('data/json/e00_users.json') as e00:
    e00 = json.load(e00)
picker = CherryPicker(e00)
flat = picker['user'].flatten().get()
e00_users = pd.DataFrame(flat)

### User data abaut exam 'e01'
with open('data/json/e01_users.json') as e01:
    e01 = json.load(e01)
picker = CherryPicker(e01)
flat = picker['user'].flatten().get()
e01_users = pd.DataFrame(flat)

### User data abaut exam 'e02'
with open('data/json/e02_users.json') as e02:
    e02 = json.load(e02)
picker = CherryPicker(e02)
flat = picker['user'].flatten().get()
e02_users = pd.DataFrame(flat)

# Handle all .json -> dataframe conversion
cursus_users = pd.read_json('data/json/cursus_users.json')
a00 = pd.read_json('data/json/a00_users.json')
s00 = pd.read_json('data/json/s00_users.json')
s01 = pd.read_json('data/json/s01_users.json')
c00 = pd.read_json('data/json/c00_users.json')
c01 = pd.read_json('data/json/c01_users.json')
c02 = pd.read_json('data/json/c02_users.json')
c03 = pd.read_json('data/json/c03_users.json')
c04 = pd.read_json('data/json/c04_users.json')
c05 = pd.read_json('data/json/c05_users.json')
c06 = pd.read_json('data/json/c06_users.json')
c07 = pd.read_json('data/json/c07_users.json')
c08 = pd.read_json('data/json/c08_users.json')
c09 = pd.read_json('data/json/c09_users.json')
c10 = pd.read_json('data/json/c10_users.json')
c11 = pd.read_json('data/json/c11_users.json')
c12 = pd.read_json('data/json/c12_users.json')
c13 = pd.read_json('data/json/c13_users.json')
r00 = pd.read_json('data/json/r00_users.json')
r01 = pd.read_json('data/json/r01_users.json')
e00 = pd.read_json('data/json/e00_users.json')
e01 = pd.read_json('data/json/e01_users.json')
e02 = pd.read_json('data/json/e02_users.json')
wolfsburg_users = pd.read_json('data/json/wolfsburg_users.json')
heilbronn_users = pd.read_json('data/json/heilbronn_users.json')
wolfsburg_students = pd.read_json('data/json/wolfsburg_students.json')
heilbronn_students = pd.read_json('data/json/heilbronn_students.json')

# Handle all dataframe -> .csv conversion
cursus_users.to_csv('data/csv/cursus_users.csv')
cursus_users_id.to_csv('data/csv/cursus_users_id.csv')
a00.to_csv('data/csv/a00.csv')
s00.to_csv('data/csv/s00.csv')
s00.to_csv('data/csv/s00.csv')
s01.to_csv('data/csv/s01.csv')
c00.to_csv('data/csv/c00.csv')
c01.to_csv('data/csv/c01.csv')
c02.to_csv('data/csv/c02.csv')
c03.to_csv('data/csv/c03.csv')
c04.to_csv('data/csv/c04.csv')
c05.to_csv('data/csv/c05.csv')
c06.to_csv('data/csv/c06.csv')
c07.to_csv('data/csv/c07.csv')
c08.to_csv('data/csv/c08.csv')
c09.to_csv('data/csv/c09.csv')
c10.to_csv('data/csv/c10.csv')
c11.to_csv('data/csv/c11.csv')
c12.to_csv('data/csv/c12.csv')
c13.to_csv('data/csv/c13.csv')
r00.to_csv('data/csv/r00.csv')
r01.to_csv('data/csv/r01.csv')
e00.to_csv('data/csv/e00.csv')
e01.to_csv('data/csv/e01.csv')
e02.to_csv('data/csv/e02.csv')
a00_users.to_csv('data/csv/a00_users.csv')
s00_users.to_csv('data/csv/s00_users.csv')
s00_users.to_csv('data/csv/s00_users.csv')
s01_users.to_csv('data/csv/s01_users.csv')
c00_users.to_csv('data/csv/c00_users.csv')
c01_users.to_csv('data/csv/c01_users.csv')
c02_users.to_csv('data/csv/c02_users.csv')
c03_users.to_csv('data/csv/c03_users.csv')
c04_users.to_csv('data/csv/c04_users.csv')
c05_users.to_csv('data/csv/c05_users.csv')
c06_users.to_csv('data/csv/c06_users.csv')
c07_users.to_csv('data/csv/c07_users.csv')
c08_users.to_csv('data/csv/c08_users.csv')
c09_users.to_csv('data/csv/c09_users.csv')
c10_users.to_csv('data/csv/c10_users.csv')
c11_users.to_csv('data/csv/c11_users.csv')
c12_users.to_csv('data/csv/c12_users.csv')
c13_users.to_csv('data/csv/c13_users.csv')
r00_users.to_csv('data/csv/r00_users.csv')
r01_users.to_csv('data/csv/r01_users.csv')
e00_users.to_csv('data/csv/e00_users.csv')
e01_users.to_csv('data/csv/e01_users.csv')
e02_users.to_csv('data/csv/e02_users.csv')
wolfsburg_users.to_csv('data/csv/wolfsburg_users.csv')
heilbronn_users.to_csv('data/csv/heilbronn_users.csv')
wolfsburg_students.to_csv('data/csv/wolfsburg_students.csv')
heilbronn_students.to_csv('data/csv/heilbronn_students.csv')
heilbronn_students_id.to_csv('data/csv/heilbronn_students_id.csv')
wolfsburg_students_id.to_csv('data/csv/wolfsburg_students_id.csv')
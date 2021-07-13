# Project Perseverance

This projects aims to explore and produce new knowledge about the indicators of **student perseverance** students at 42 Wolfsburg and 42 Heilbronn display throughout the piscine, and eventually publicize this knowledge.

https://42wolfsburg.de/en/

https://42heilbronn.de/en/

## **Focus Area**

This project focuses on applying **Data Analysis & Statistics** methods on the educational data publicly provided by the 42 Network to their students, which is made available via their [API](https://api.intra.42.fr/apidoc). This project relies heavily on manipulating, analysing and extracting meaning out of these data.

## **Coded in**

***R***

- R/main.r    : Written to import and manipulate all .csv files produced by api.rb
- R/sum.r     : Written to summarize and plot the data obtained after data manipulation in main.R is complete

***Python***

- json2csv.py : When ran with Python3, yhis file converts .json files under data/json to .csv files to be stored in directory data/csv.

***Julia***

- plots.jl    : A Pluto notebook file to be used in producing nice looking plots.

***Ruby***

- api.rb      : Written to make GET requests to the 42 API with valid credentials.

## Notion page

https://www.notion.so/42wolfsburg/Project-Perseverance-a2994bfef2694d66b7be906c361e0186

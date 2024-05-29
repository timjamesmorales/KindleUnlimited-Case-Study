# Kindle Unlimited Case Study
###### Performed By: Timothy Morales
## Introduction
This case study serves as an exploration into Amazon's Kindle Unlimited eBook subscription program. It intends to showcase proficiency in Spreadsheets and Google Slides.

## Scenario
For this project, I will assume the role of a data analyst working on Amazon's operations management analytics team. The head of the department believes that expanding the Kindle Unlimited eBook subscription program will improve the future success of Amazon eBooks. My team has therefore been tasked with answering several key business questions and gaining insights into Kindle Unlimited eBook data. The insights gleaned from this case study will provide the Operations Management team with key data and visualizations that will allow them to design and propose effective recommendations to the executive team for ways to expand the Kindle Unlimited program and increase the sales of Amazon eBooks.

## Business Task
My task is to analyze Kindle Unlimited eBook data in order to identify trends that show how Kindle Unlimited books perform compared to non-Kindle Unlimited eBooks. To do so, I will analyze publically available web-scraped data using Google Sheets, and create pivot tables and charts to showcase my findings. In addition, I will create a Slideshow presentation to present my findings and offer recommendations to the executive team. 

## Data Source
My analysis will be conducted on 130k rows of publically available web-scraped data from Amazon, collected in October 2023. The data can be downloaded from [here](https://www.kaggle.com/datasets/asaniczka/amazon-kindle-books-dataset-2023-130k-books) and has been made publically available through this [license](https://opendatacommons.org/licenses/by/1-0/index.html).

All personally identifiably information has been removed from the dataset. The data includes 1 CSV file of long format data. The file consists of 16 columns: asin, title, author, soldBy, imgUrl, productURL, stars, reviews, price, category_id, category_name, publishedDate, isKindleUnlimited, isBestSeller, isEditorsPick, isGoodReadsChoice.

Additionally, a disclaimer for this dataset states that whenever 0 price, 0 review count, or 0 star rating is found, it means that the value was either not found or unavailable.

## Process
SQL will be used for the initial organization of the dataset, due to the large amount of raw data in the original dataset. 130k rows heavily bogs down the processing time of Sheets, so BigQuery will be used to separate the data into 3 distinct datasets based on the type of data they contain: String data, Numerical data, and Boolean data. These smaller datasets will be more easily cleaned by Sheets, and then Sheets will be used for data analysis and visualization.

### Uploading Data

SQL Code: Uploading Data

The original data CSV file is uploaded as a table to the 'mydata-408300.amazon_kindle_unlimited_data' dataset. Then, 3 new tables are created, each containing the String, Numerical, or Boolean data of the original table. Each table is created with the 'asin' column so that VLOOKUP can join them later on.

### Cleaning Data

Each of the 3 tables are downloaded as CSV files and uploaded to Google Drive, where they are saved in the larger project folder. Then, each CSV is imported into a new combined workbook as 3 separate sheets. From here, each individual sheet is inspected, cleaned, and transformed. First, each sheet is sorted by the 'asin' column from A->Z. Next, null/empty values are checked. A large amount of empty publishedDate and 0 review count values are found, rendering analyses involving these columns impractical (55k empty publishedDate values, 65k 0 review count values). Duplicate rows and extra white spaces are checked, with none being found. The YEAR is EXTRACTED from the publishedDate column and made into its own column.

A new combined sheet is then populated with the values of the 3 foundational sheets via VLOOKUP. IF conditions are set so that if a cell value is blank or 0, VLOOKUP will return "Not Found" instead. The returned VLOOKUP values are copied and special pasted "Values Only" into new columns, then the 3 foundational sheets are protected and hidden. Next, a filter is used to only return rows where isKindleUnlimited = true. These rows are copied and pasted into a new sheet in the same workbook, then deleted from the first sheet. Now, two tabs exist, all containing the same columns with the only difference being the value of isKindleUnlimited (true/false). The price column of each sheet is changed to the currency ($) format. Then, every "Not Found" cell is formatted to green in order to stand out.

### Analyze Data

In order to generate useful insights, several analyses are performed on the two true/false isKindleUnlimited sheets. The following insights are gleaned during this phase:

Number of Kindle Unlimited vs. Non-Kindle Unlimited books ; Number of Kindle Unlimited vs. Non-Kindle Unlimited books on Best-Seller List ; Number of Kindle Unlimited vs. Non-Kindle Unlimited books on GoodReads' Choice List ; Number of Kindle Unlimited vs. Non-Kindle Unlimited books on Editors' Pick List ; Number of Kindle Unlimited vs. Non-Kindle Unlimited books per Seller ; Number of Kindle Unlimited vs. Non-Kindle Unlimited books per Star Rating ; Number of Kindle Unlimited vs. Non-Kindle Unlimited books per Price Range ; Number of Kindle Unlimited vs. Non-Kindle Unlimited books per Category

Each observation is determined by creating pivot tables of the relevant data, with charts visually representing the data. Here is a link to the complete [workbook](https://docs.google.com/spreadsheets/d/1-BoarkN6yOXqApOdRcb0r-6XRjsFDch6IeoL0WBExQs/edit#gid=1459172057).

## Visualize and Share

Link to the [Slideshow presentation](https://docs.google.com/presentation/d/1MQkG3GU-Al9k34dG4_ui9nWhajQVS4rG5XCsUS0B38I/edit#slide=id.p) of findings.

Kindle Unlimited (left/top) vs. Non-Kindle Unlimited (right/bottom)

Best-Sellers:

![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/True/Best%20Sellers.png) ![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/False/Best%20Sellers.png)

Higher percent of Kindle Unlimited books are on the Best-Seller List.

GoodReads' Choice:

![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/True/GoodReads'%20Choice.png) ![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/False/GoodReads'%20Choice.png)

Higher percent of Non-Kindle Unlimited books are on the GoodReads’ Choice List.

Editors' Pick:

![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/True/Editors'%20Picks.png) ![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/False/Editors'%20Pick.png)

Higher percent of Non-Kindle Unlimited books are on the Editors’ Pick List.

Books per Seller:

![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/True/Books%20per%20Seller.png) ![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/False/Books%20per%20Seller.png)

Much higher diversity of sellers for Non-Kindle Unlimited books.

Books per Star Review:

![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/True/Books%20per%20Star%20Review.png) ![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/False/Books%20per%20Star%20Review.png)

Higher average rating of Non-Kindle Unlimited books.

Books per Price Range:

![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/True/Books%20per%20%2410%20Price%20Range.png) ![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/False/Books%20per%20%2410%20Price%20Range.png)

Much higher diversity of price ranges for Non-Kindle Unlimited books.

Books per Category:

![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/True/Books%20per%20Category.png) ![img](https://github.com/timjamesmorales/KindleUnlimited-Case-Study/blob/main/Charts/False/Books%20per%20Category.png)

More fiction books are in Kindle Unlimited vs. more non-fiction and educational books in Non-Kindle Unlimited.

## Action
### Summary

### Recommendations

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

## Process
SQL will be used for the initial organization of the dataset, due to the large amount of raw data in the original dataset. 130k rows heavily bogs down the processing time of Sheets, so BigQuery will be used to separate the data into 3 distinct datasets based on the data they contain: String data, Numerical data, and Boolean data. These smaller datasets will be more easily manipulated in Sheets, and then Sheets will be used for data analysis and visualization.

### Uploading Data

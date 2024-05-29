-- After uploading the original dataset as a table called 'kindle_unlimited_stats_with_year', three separate datasets are created and include either the String, Numerical, or Boolean
-- data of the original dataset. Each table is created with the 'asin' column to link them for future VLOOKUP joins.

-- String table
CREATE TABLE mydata-408300.amazon_kindle_unlimited_data.kindle_unlimited_stats_string AS (
  SELECT
   asin, title, author, soldBy, imgUrl, productURL, category_name
  FROM `mydata-408300.amazon_kindle_unlimited_data.kindle_unlimited_stats_with_year`
)

-- Numerical table
CREATE TABLE mydata-408300.amazon_kindle_unlimited_data.kindle_unlimited_stats_numbers AS (
  SELECT
   asin, stars, reviews, price, category_id, publishedDate, year
  FROM `mydata-408300.amazon_kindle_unlimited_data.kindle_unlimited_stats_with_year`
)

-- Boolean table
CREATE TABLE mydata-408300.amazon_kindle_unlimited_data.kindle_unlimited_stats_boolean AS (
  SELECT
   asin, isKindleUnlimited, isBestSeller, isEditorsPick, isGoodReadsChoice
  FROM `mydata-408300.amazon_kindle_unlimited_data.kindle_unlimited_stats_with_year`
)

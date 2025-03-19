-- Aggregate sales data by product and month
CREATE OR REPLACE TABLE mydataset.transformed_data AS
SELECT
  product_name,
  EXTRACT(YEAR FROM order_date) AS sale_year,
  EXTRACT(MONTH FROM order_date) AS sale_month,
  SUM(total_amount) AS revenue_usd
FROM mydataset.ingested_data
  
GROUP BY 1,2,3;

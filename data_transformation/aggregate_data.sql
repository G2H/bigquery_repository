-- Aggregate sales data by product and month
CREATE OR REPLACE TABLE  AS
SELECT
  product_id,
  EXTRACT(YEAR FROM sale_date) AS sale_year,
  EXTRACT(MONTH FROM sale_date) AS sale_month,
  SUM(sale_amount) AS total_sales
FROM
  
GROUP BY
  product_id,
  sale_year,
  sale_month;

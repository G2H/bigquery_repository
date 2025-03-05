-- Clean the raw sales data by removing duplicates and handling missing values
CREATE OR REPLACE TABLE  AS
SELECT DISTINCT
  product_id,
  sale_date,
  sale_amount,
  COALESCE(customer_id, 'unknown') AS customer_id
FROM
  
WHERE
  product_id IS NOT NULL;

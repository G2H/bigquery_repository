-- Clean the raw sales data by removing duplicates and handling missing values
CREATE OR REPLACE TABLE mydataset.clean_data AS
SELECT DISTINCT
  product_name,
  order_date,
  total_amount,
  COALESCE(customer_id, 'unknown') AS customer_id
FROM
  mydataset.ingested_data
WHERE
  product_name IS NOT NULL;

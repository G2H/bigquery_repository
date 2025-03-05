-- Validate the loaded data for consistency and completeness
SELECT
  COUNT(*) AS total_rows,
  COUNT(CASE WHEN product_id IS NULL THEN 1 END) AS null_product_ids,
  COUNT(CASE WHEN sale_date > CURRENT_DATE() THEN 1 END) AS future_sale_dates
FROM
  ;

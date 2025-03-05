-- Load raw sales data from an external source (e.g., Cloud Storage)
CREATE OR REPLACE TABLE  AS
SELECT
  *
FROM
  EXTERNAL_QUERY(
    "your-external-connection",
    """
    SELECT * FROM external_sales_table
    """
  );

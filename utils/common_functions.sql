-- Example: Function to calculate the average of an array of numbers
CREATE OR REPLACE FUNCTION (arr ARRAY<FLOAT64>)
RETURNS FLOAT64 AS (
  (SELECT AVG(x) FROM UNNEST(arr) AS x)
);

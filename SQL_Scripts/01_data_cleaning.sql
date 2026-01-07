CREATE TABLE Clean_Marketing AS
SELECT 
    CAST(c2 AS DATE) AS Date,
    c3 AS Campaign_Name,
    c4 AS Category,
    CAST(c7 AS FLOAT) AS Spend,
    CAST(c8 AS INTEGER) AS Clicks,
    CAST(c10 AS INTEGER) AS Orders,
    CAST(c11 AS FLOAT) AS Revenue
FROM Marketing
WHERE c1 != 'id';

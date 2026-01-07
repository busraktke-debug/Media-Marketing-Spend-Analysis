-- Purpose: Calculate total ROMI and Average Order Value (AOV)
SELECT 
    SUM(Revenue) AS Total_Revenue,
    SUM(Spend) AS Total_Spend,
    ROUND(((SUM(Revenue) - SUM(Spend)) / NULLIF(SUM(Spend), 0)), 2) AS Overall_ROMI,
    ROUND(SUM(Revenue) / NULLIF(SUM(Orders), 0), 2) AS Average_Order_Value
FROM Clean_Marketing;

-- Purpose: Compare marketing categories by efficiency
SELECT 
    Category,
    SUM(Spend) AS Total_Cost,
    SUM(Revenue) AS Total_Revenue,
    ROUND(((SUM(Revenue) - SUM(Spend)) / NULLIF(SUM(Spend), 0)), 2) AS Category_ROMI
FROM Clean_Marketing
GROUP BY Category
ORDER BY Category_ROMI DESC;

-- Purpose: Analyze Customer Acquisition Cost (CAC) per campaign
SELECT 
    Campaign_Name,
    SUM(Spend) AS Spend,
    SUM(Orders) AS Total_Orders,
    ROUND(SUM(Spend) / NULLIF(SUM(Orders), 0), 2) AS CAC
FROM Clean_Marketing
GROUP BY Campaign_Name
HAVING Total_Orders > 0
ORDER BY CAC ASC;

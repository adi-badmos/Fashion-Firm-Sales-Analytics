USE FashionFirmAnalytics;
GO

BULK INSERT dbo.Sales
FROM 'C:\Users\BIT\Downloads\fashion_firm_sales_data.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
SELECT COUNT(*) AS Total_Rows
FROM dbo.Sales;
SELECT TOP 10 *
FROM dbo.Sales;
SELECT
    COUNT(*) AS Total_Orders,
    SUM(Quantity) AS Total_Units,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Target) AS Total_Target
FROM dbo.Sales;
SELECT
    SUM(Sales) AS Actual_Sales,
    SUM(Target) AS Target_Sales,
    ROUND(
        SUM(Sales) * 100.0 / SUM(Target),
        2
    ) AS Target_Achievement_Percent
FROM dbo.Sales;
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Target) AS Total_Target,
    ROUND(
        SUM(Sales) * 100.0 / SUM(Target),
        2
    ) AS Target_Achievement_Percent
FROM dbo.Sales
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Units_Sold,
    ROUND(
        SUM(Profit) * 100.0 / SUM(Sales),
        2
    ) AS Profit_Margin_Percent
FROM dbo.Sales
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT
    YEAR(Sale_Date) AS Sales_Year,
    MONTH(Sale_Date) AS Sales_Month,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales
GROUP BY
    YEAR(Sale_Date),
    MONTH(Sale_Date)
ORDER BY
    Sales_Year,
    Sales_Month;
SELECT TOP 10
    Product,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Units_Sold
FROM dbo.Sales
GROUP BY Product
ORDER BY Total_Sales DESC;
SELECT
    Channel,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Units_Sold,
    ROUND(
        SUM(Profit) * 100.0 / SUM(Sales),
        2
    ) AS Profit_Margin_Percent
FROM dbo.Sales
GROUP BY Channel
ORDER BY Total_Sales DESC;
SELECT TOP 10
    Product,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Units_Sold
FROM dbo.Sales
GROUP BY Product
ORDER BY Total_Sales DESC;
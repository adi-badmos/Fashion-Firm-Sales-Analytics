CREATE DATABASE FashionFirmAnalytics;
GO

USE FashionFirmAnalytics;
GO
CREATE TABLE Sales (
    Order_ID VARCHAR(20),
    Sale_Date DATE,
    Product VARCHAR(100),
    Category VARCHAR(50),
    Region VARCHAR(30),
    Channel VARCHAR(30),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Discount DECIMAL(5,2),
    Sales DECIMAL(12,2),
    Profit DECIMAL(12,2),
    Target DECIMAL(12,2)
);
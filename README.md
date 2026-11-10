# Fashion Firm Sales Analytics Dashboard

An end-to-end sales analytics project using **Microsoft Excel, SQL Server, Power BI, and DAX** to clean, prepare, analyze, and visualize fashion sales data.

## 📊 Project Overview

This project analyzes sales performance across regions, product categories, sales channels, products, and years.

The complete workflow follows:

**Excel → SQL Server → Power BI**

- **Excel** – Data cleaning, calculated columns, Pivot Tables, and initial analysis
- **SQL Server** – Database storage and data management
- **Power BI** – Data modeling, DAX calculations, interactive dashboards, and business insights

---

## 🎯 Business Objectives

The dashboard helps answer important business questions:

- What are the overall sales and profit?
- How close are actual sales to the target?
- Which regions generate the highest sales?
- Which product categories contribute the most sales and profit?
- How does sales performance change over the years?
- How are sales distributed between Online and Store channels?
- Which products contribute most to total sales?
- What is the overall profit margin?

---

## 🧹 Excel Data Cleaning & Analysis

The raw sales dataset was initially processed and analyzed using Microsoft Excel.

### Data Cleaning

The following data preparation activities were performed:

- Removed unnecessary and duplicate records
- Checked and handled missing values
- Standardized column names
- Corrected and standardized date formats
- Verified numerical fields such as Sales, Profit, Quantity, Target, and Unit Price
- Checked data consistency before importing into SQL Server

### Calculated Column

A **Profit Margin** column was created in Excel to measure profitability at the transaction level.

**Profit Margin = Profit / Sales × 100**

This helped evaluate the profitability of individual sales records.

### Pivot Tables

Excel Pivot Tables were created for initial exploratory analysis, including:

- Sales by Region
- Profit by Region
- Sales by Category
- Profit by Category
- Sales by Channel
- Sales by Product
- Sales and Profit summaries

These Pivot Tables helped identify patterns and validate the data before building the Power BI dashboard.

---

## 🗄️ SQL Server

The cleaned and prepared dataset was stored in a SQL Server database.

**Server:** `(local)`

**Database:** `FashionFirmAnalytics`

The Power BI dashboard is connected directly to this SQL Server database.

This allows the dashboard to retrieve and refresh data from the database rather than relying on an older static Excel copy.

---

## 📈 Power BI Dashboard

The Power BI dashboard provides an interactive view of overall sales performance.

### Key Performance Indicators

- **Total Sales**
- **Total Profit**
- **Target Achievement %**
- **Profit Margin %**

### Dashboard Visualizations

- Sales by Region
- Sales by Product Category
- Profit by Product Category
- Sales by Channel
- Sales by Year
- Sales vs Target by Region
- Sales by Product

### Interactive Features

- Date range slicer
- Region slicer
- Channel slicer
- Category slicer
- Interactive cross-filtering between visuals

---

## 🧮 DAX Measures

DAX was used to create important business metrics.

### Target Achievement %

```DAX
Target Achievement % =
DIVIDE(
    SUM(Sales[Sales]),
    SUM(Sales[Target]),
    0
)

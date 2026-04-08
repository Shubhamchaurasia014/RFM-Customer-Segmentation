# Customer Segmentation & RFM Analysis (End-to-End Data Analyst Project)

##  Project Overview

This project focuses on analyzing customer purchasing behavior using **RFM (Recency, Frequency, Monetary) Analysis**.
The goal is to segment customers into meaningful groups and generate business insights to improve revenue and customer retention.

---

##  Objectives

* Clean and preprocess raw e-commerce data using SQL
* Perform RFM analysis to evaluate customer value
* Segment customers based on purchasing behavior
* Build an interactive dashboard for business insights

---

##  Tools & Technologies

* **SQL (PostgreSQL)** – Data cleaning & transformation
* **Python (Pandas, NumPy)** – Data processing & segmentation
* **Power BI** – Dashboard & visualization

---

##  Dataset

* Source: Kaggle (Online Retail Dataset)
* Contains transactional data including:

  * Invoice details
  * Product information
  * Customer ID
  * Quantity & Price

---

##  Project Workflow

###  Data Cleaning (SQL)

* Removed null and invalid values
* Filtered incorrect quantities and prices
* Handled cancellations and returns
* Converted data types for analysis

---

###  RFM Analysis (SQL)

* **Recency** → Days since last purchase
* **Frequency** → Number of purchases
* **Monetary** → Total spending

Created a structured RFM table for further analysis.

---

###  Customer Segmentation (Python)

  Segmented customers into:

  * High Value
  * Regular
  * Low Value

---

###  Dashboard (Power BI)

Built an interactive dashboard including:

* Customer segmentation overview
* Revenue distribution by segment
* Recency distribution
* Frequency vs Monetary analysis

---

## 📈 Key Insights

* High Value customers contribute the majority of revenue
* Most customers are in the low or regular segments
* A large number of customers purchase only once
* Recency analysis shows presence of inactive customers

---

##  Business Recommendations

* Focus on retaining high-value customers
* Convert regular customers into high-value through upselling
* Re-engage inactive customers with offers
* Target low-value customers with personalized campaigns

---

## 🚀 How to Run

1. Load dataset into PostgreSQL
2. Run SQL script for cleaning & RFM calculation
3. Export RFM data
4. Run Python script for segmentation
5. Load data into Power BI for dashboard

---

## 🙌 Conclusion

This project demonstrates a complete **end-to-end data analysis workflow**, from raw data to business insights.

---

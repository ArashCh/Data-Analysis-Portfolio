# RFM Analysis for Targeted Marketing Campaigns

## Project Overview
* **Objective:** To perform an RFM (Recency, Frequency, Monetary) analysis to segment customers based on their purchasing behavior and develop actionable recommendations for targeted marketing campaigns.
* **Tools Used:** MS Excel.
* **Dataset:** [Online Retail Dataset](https://www.kaggle.com/datasets/ulrikthygepedersen/online-retail-dataset) - Transactions of a UK based non-store online retail
* **Key Outcome:** Identified distinct customer segments with tailored marketing strategies to improve customer retention and revenue growth.

## Data and Preprocessing
### Data Overview
A transactional dataset containing 541,909 rows of online retail transactions during 2010–2011 including these columns:
* **InvoiceNo:** Invoice number. Nominal - a 6-digit integral number uniquely assigned to each transaction. If this code starts with the letter 'c', it indicates a cancellation.
* **StockCode:** Product (item) code. Nominal - a 5-digit integral number uniquely assigned to each distinct product.
* **Description:** Product (item) name. Nominal.
* **Quantity:** The quantities of each product (item) per transaction. Numeric.
* **InvoiceDate:** Invice Date and time. Numeric, the day and time when each transaction was generated.
* **UnitPrice:** Unit price. Numeric, Product price per unit in sterling.
* **CustomerID:** Customer number. Nominal, a 5-digit integral number uniquely assigned to each customer.
* **Country:** Country name. Nominal, the name of the country where each customer resides.
### Preprocessing Steps
* **Step 1:** Dropped the rows where the "CustomerID" is null. (In Power Query)
* **Step 2:** Converted the "InvoiceDate" from DateTime to Date only.
* **Step 3:** Added a new column to define the canceled purchases. (In Power Query)
* **Step 4:** Filtered out the rows where the added "Canceled" column represents the cancellations. (In Power Query)
* **Step 5:** Removed the added "Canceled" column to free up memory. (In Power Query)
* **Step 6:** Inserted a multiplication column, "Quantity" multiplied by "UnitPrice" to get the "Monetary" column. (In Power Query)
* **Step 7:** Grouped rows by "CustomerID" with these aggregations  (In Power Query):
  * Monetary: Sum of the "Monetary" column.
  * Frequency: Count of distinct rows.
  * LastPurchaseDate: Max of the "InvoiceDate" column.
  * Country: Min of the "Country" column.
* **Step 8:** Created the "Recency" column to show days past from the last purchase (considering the last day's next day as the reference day). (In the sheet)
* **Step 9:** Added a "RecencyLabel" column based on the "Recency" column (In the sheet):
  * 1 to 30 days: "Very Recent"
  * 31 to 60 days: "Recent"
  * 61 to 90 days: "Moderate"
  * +90 days: "Distant"
* **Step 10:** Added a "RecencyScore" column representing the "RecencyLabel" numerical score. (In the sheet)
* **Step 11:** Added the "FrequencyLabel" column based on the "Frequency" column (In the sheet):
  * 0 to 0.33 percentile: "Low Frequency"
  * 0.33 to 0.66 percentile: "Medium Frequency"
  * +0.66 percentile: "High Frequency"
* **Step 12:** Added a "FrequencyScore" column representing the "FrequencyLabel" numerical score. (In the sheet)
* **Step 13:** Added the "MonetaryLabel" column based on the "Monetary" column using the same approach applied to "FrequencyLabel". (In the sheet)
* **Step 14:** Added a "MonetaryScore" column representing the "MonetaryLabel" numerical score. (In the sheet)
* **Step 15:** Added the "RFMScore" using the concatenation of RecencyScore, FrequencyScore, and MonetaryScore. (In the sheet)
* **Step 16:** Created the "Segment" column based on different scenarios (In the sheet):
  * Champions: Very Recent, High Frequency, High Spending
  * Loyal Customers: Recet or Very Recent, Medium Frequency, Medium Spending
  * Potential Loyalists: Very Recent or Recent, 

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
* **Step 9:** Added a "RecencyLabel" column based on the "Recency" column using the quartiles (In the sheet):
  * Very Recent
  * Recent
  * Moderate
  * Distant
* **Step 10:** Added a "RecencyScore" column representing the "RecencyLabel" numerical score. (In the sheet)
* **Step 11:** Added the "FrequencyLabel" column based on the "Frequency" column using the quartiles (In the sheet):
  * High Freq.
  * Medium Freq.
  * Low Freq.
  * Very Low Freq.
* **Step 12:** Added a "FrequencyScore" column representing the "FrequencyLabel" numerical score. (In the sheet)
* **Step 13:** Added the "MonetaryLabel" column based on the "Monetary" column using the quartiles. (In the sheet)
  * High Spending
  * Medium Spending
  * Low Spending
  * Very Low Spending
* **Step 14:** Added a "MonetaryScore" column representing the "MonetaryLabel" numerical score. (In the sheet)
* **Step 15:** Added the "RFMScore" using the concatenation of RecencyScore, FrequencyScore, and MonetaryScore. (In the sheet)
* **Step 16:** Created the "Segment" column based on different scenarios (In the sheet):
  * Engaged/Loyal: Very Recent or Recent - High Freq. or Medium Freq. - High Spending or Medium Spending
  * Growth Potential: Moderate to Very Recent - Low to High Freq. - Low to High Spending
  * At-Risk: Distant to Moderate - Medium or High Freq. - Medium or High Spending
  * Low Value

## Grouping Segments and Recommendations
Grouped the table by Segments, Counted the Customers in each segment, added the description of each segment, and finally provided actionable recommendations for each segment.


## Screenshots
### The Power Query
![The Power Query](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Excel/OnlineRetail-RFM/Screenshots/Screenshot-PowerQuery.png)
### The Table
![The Table](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Excel/OnlineRetail-RFM/Screenshots/Screenshot-Table.png)
### The Result
![The Result](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Excel/OnlineRetail-RFM/Screenshots/Screenshot-Segmentation.png)


## Bonus
Looking for the Python version? Check out this [notebook of mine on Kaggle](https://www.kaggle.com/code/arashchitgar/onlineretail-rfm-analysis).

---
**Author:** [A. Arash Chitgar](https://www.linkedin.com/in/a-arash-chitgar/)

**Contact:**
- [Telegram](https://t.me/Arash_Chitgar)
- [Email](a.arash.chitgar@gmail.com)

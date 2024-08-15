# AirBnB Listing Analysis in Paris - [Maven Analytics Project](https://mavenanalytics.io/blog/introducing-guided-projects)

## Project Overview
This project focused on analyzing AirBnB listings in Paris, with a particular emphasis on understanding the impact of recent regulations on the market. The project involved data profiling, preparation for visualization, and detailed analysis to draw meaningful insights from the data. The primary goal was to determine how the 2015 regulations affected new host entries and the pricing landscape in Paris.

![Average Airbnb Prices Across Paris Neighbourhoods - Elysee Leads with Highest Rates](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Python/Maven%20Analytics%20-%20Airbnb%20Listings%20%26%20Reviews/Visualizations/Average%20Airbnb%20Prices%20Across%20Paris%20Neighbourhoods%20-%20Elysee%20Leads%20with%20Highest%20Rates.png)
![Airbnb Prices in Elysee - Higher Occupancy Leads to Significantly Higher Rates](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Python/Maven%20Analytics%20-%20Airbnb%20Listings%20%26%20Reviews/Visualizations/Airbnb%20Prices%20in%20Elysee%20-%20Higher%20Occupancy%20Leads%20to%20Significantly%20Higher%20Rates.png)
![Trends in Average Airbnb Prices and New Host Growth (2008-2021) - New Host Counts Decrease Since 2015](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Python/Maven%20Analytics%20-%20Airbnb%20Listings%20%26%20Reviews/Visualizations/Trends%20in%20Average%20Airbnb%20Prices%20and%20New%20Host%20Growth%20(2008-2021)%20-%20New%20Host%20Counts%20Decrease%20Since%202015.png)


## Project Objectives
The project was structured around three key objectives:
### 1. Data Profiling & Quality Assurance (QA):
**Goal:** To ensure the dataset is accurate and focused on Paris listings.

**Key Actions:**
- Imported the Listings.csv file and cast relevant columns to appropriate datatypes, specifically converting date columns to datetime.
- Filtered the dataset to include only Paris listings and retained critical columns such as host_since, neighbourhood, city, accommodates, and price.
- Performed QA by checking for missing values and calculating profiling metrics like minimum, maximum, and average values for numeric fields.
### 2. Data Preparation for Visualization:
**Goal:** To create data structures (DataFrames) that would facilitate meaningful visualizations.

**Key Actions:**
- Created a paris_listings_neighbourhood table to group listings by neighborhood and calculated the mean price, sorted from low to high.
- Created a paris_listings_accommodations table, focusing on the most expensive neighborhood, grouping by the accommodates column to derive the mean price for each accommodation type, sorted from low to high.
- Developed a paris_listings_over_time table to group listings by the year the host joined (host_since), calculating the average price and the number of new hosts for each year.
### 3. Data Visualization and Summary of Findings:
**Goal:** To visualize the analyzed data and draw conclusions about the impact of the 2015 regulations.

**Key Actions:**
- Created a column chart (instead of a horizontal bar chart) showing the average price by neighborhood in Paris, with appropriate titles and axis labels.
- Created a horizontal bar chart showing the average price by accommodation type in Paris’ most expensive neighborhood.
- Developed two line charts:
  - One showing the count of new hosts over time.
  - Another showing the average price over time, with adjusted y-axis limits, titles, and labels.
- Combined insights to assess the impact of the 2015 regulations on new host entries and pricing trends.
- BONUS: Created a dual-axis line chart to display both the number of new hosts and the average price over time, providing a comprehensive view of the trends.

## Tools and Techniques
- **Python & Pandas:** Used for data manipulation, cleaning, and aggregation tasks to create the required DataFrames.
  - You can find my code (an ipynb file) [here](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Python/Maven%20Analytics%20-%20Airbnb%20Listings%20%26%20Reviews/AirBnB%20Listing%20Analysis%20in%20Paris.ipynb) as well. I've asked [Mr. Chris Dutton](https://mavenanalytics.io/meet-the-team/chris-dutton) directly for his permission for sharing the code on my portfolio)
- **Matplotlib:** Utilized for creating and customizing visualizations.

![MavenAnalytics Badge](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Python/Maven%20Analytics%20-%20Airbnb%20Listings%20%26%20Reviews/MavenAnalytics-Airbnb-Listing-Badge.png)

[Visit My Maven Analytics Portfolio](https://mavenanalytics.io/project/18400)
The Guided Project on [Maven Analytics](https://mavenanalytics.io/) is instructed by [Mr. Chris Bruehl](https://mavenanalytics.io/meet-the-team/chris-bruehl)


---
**Author:** [A. Arash Chitgar](https://www.linkedin.com/in/a-arash-chitgar/)

**Contact:**
- [Telegram](https://t.me/Arash_Chitgar)
- [Email](a.arash.chitgar@gmail.com)



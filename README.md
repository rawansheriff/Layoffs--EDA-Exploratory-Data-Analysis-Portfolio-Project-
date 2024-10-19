
![1683542446572](https://github.com/user-attachments/assets/3c64215e-b7cb-46a3-b05b-acf572c2210a)


# Exploring Layoffs Data (2020-2023) with MySQL

Welcome to my **Layoffs Data Analysis Project**, where I dive deep into layoffs trends from 2020 to 2023 using MySQL! This project was inspired by the turbulent times many industries faced, and it’s all about uncovering key insights from global layoffs data. 🏢📉

## Project Overview

We all know that layoffs have become a pressing topic in recent years. With this project, I’ve used MySQL to explore and analyze a dataset that captures layoffs across various industries, countries, and company stages. The goal? To identify patterns, trends, and significant outliers that tell the real story behind the numbers.

Whether you're curious about which industries were hit hardest, which companies had the highest layoffs, or how layoffs trended over time, this project covers it all.

## 🛠️ Tools and Techniques

This project uses:

- **MySQL** for querying and exploring the data.
- **CTEs (Common Table Expressions)** for complex aggregations.
- **Window Functions** to calculate rolling totals and rankings.

## 📊 Key Insights

Here are some of the cool insights I’ve uncovered from the data:

### 1. **Companies with the Most Layoffs**
   - Using SQL, I found that the top companies with the highest total layoffs are concentrated in certain industries, like **Consumer & Retail**.
   
### 2. **Countries Most Affected**
   - Unsurprisingly, the **United States** and **India** lead the pack in total layoffs. The magnitude of layoffs in these regions was particularly striking.

### 3. **Yearly Layoffs Trend**
   - From 2020 to 2023, the data revealed a noticeable surge in layoffs, especially during the height of the pandemic. But what’s interesting is how layoffs have trended as industries began to recover.

### 4. **Company Stages & Layoffs**
   - Startups and mid-stage companies were hit the hardest in terms of layoffs, with many companies laying off 100% of their workforce (yes, **100%** 😲). A notable example is **Britishvolt**, which raised $2 billion but had to lay off their entire team!

### 5. **Rolling Monthly Layoffs**
   - Using a rolling total calculation, I tracked how layoffs accumulated month over month. This helped to highlight the most challenging months during the pandemic and how layoffs progressed.

## SQL Queries

I used a variety of SQL queries to dig into the data, including:

- Identifying the **maximum percentage of layoffs** by company.
- Ranking companies with the **highest yearly layoffs**.
- Calculating the **rolling monthly total** of layoffs.
- Grouping by **industries, countries, and company stages** to see trends and patterns.

Check out the `Exploratory Data Analysis Layoffs - Project.sql` file to see the full list of queries used! You’ll find everything from simple SELECTs to more advanced window functions. 

## Dataset

The dataset used for this project covers layoffs across multiple industries and countries from 2020 to 2023. Feel free to take a look at the `layoffs.csv` file to see the raw data that powered these insights.

## What’s Next?

This is just the beginning! In the future, I’m planning to expand this analysis by incorporating **visualizations** (using Python or Tableau) to make these insights even more digestible. Stay tuned for more updates!

---

Thank you for checking out my project. If you have any feedback or suggestions, I’d love to hear them! Feel free to connect with me on LinkedIn or explore my GitHub for more cool projects.

---

## 📫 Contact

- [LinkedIn](https://www.linkedin.com/in/rawansherif/)





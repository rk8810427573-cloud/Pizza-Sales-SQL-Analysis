**# 🍕 Pizza Sales Analysis (SQL)

## 📌 Project Overview
This project provides a comprehensive analysis of a year's worth of sales data for a pizza shop. Using **SQL**, I transformed raw data into actionable business insights by solving 14 specific questions ranging from basic sales counts to advanced revenue trends.

The goal was to identify top-performing products, peak order times, and revenue contributors to help the business make data-driven decisions.

## 📊 Data Schema
The project uses four main tables:
- `orders`: Records of every order (Date, Time).
- `order_details`: Specific pizzas and quantities within each order.
- `pizzas`: Pricing and size details for each pizza code.
- `pizza_types`: Categorization (Classic, Veggie, etc.) and ingredient lists.



## 🛠️ Tech Stack & Skills
- **Language:** SQL (MySQL/PostgreSQL)
- **Concepts:** Multi-table Joins, Window Functions (RANK), CTEs, Date/Time Manipulation, Subqueries, and Data Aggregations.

---

## 📂 Project Structure
I have organized the analysis into three difficulty levels. Click the links below to view the individual SQL scripts for each query.

### 🟢 Basic Analysis
*Showcases foundational SQL skills like SELECT, COUNT, and SUM.*
1. [Total Orders Placed](./Queries/total_orders.sql)
2. [Total Revenue Generated](./Queries/total_revenue.sql)
3. [Highest Priced Pizza](./Queries/highest_priced_pizza.sql)
4. [Most Common Pizza Size](./Queries/common_size.sql)
5. [Top 5 Most Ordered Pizzas](./Queries/top_5_ordered.sql)

### 🟡 Intermediate Analysis
*Showcases the use of JOINs, GROUP BY, and Date functions.*
6. [Quantity Ordered by Category](./Queries/category_quantity.sql)
7. [Order Distribution by Hour](./Queries/orders_by_hour.sql)
8. [Category-wise Pizza Distribution](./Queries/category_distribution.sql)
9. [Average Pizzas Ordered Per Day](./Queries/avg_pizzas_per_day.sql)
10. [Top 3 Pizzas by Revenue](./Queries/top_3_by_revenue.sql)

### 🔴 Advanced Analysis
*Showcases complex logic, Window Functions, and CTEs.*
11. [Revenue Percentage per Pizza Type](./Queries/revenue_percentage.sql)
12. [Cumulative Revenue Over Time](./Queries/cumulative_revenue.sql)
13. [Top 3 Pizzas per Category (by Revenue)](./Queries/top_3_per_category.sql)

---

## 📈 Key Insights
* **Revenue Leader:** The **Classic** category contributes the most to the total revenue (~$817,860 total).
* **Peak Volume:** Most orders are concentrated during the lunch (12:00-13:00) and dinner (17:00-19:00) rushes.
* **Top Performer:** "The Classic Deluxe Pizza" is the highest-selling pizza by quantity.



## 🚀 How to Use
1. Clone this repository.
2. Import the CSV files from the `/Data` folder into your SQL database.
3. Run the scripts in the `/Queries` folder to replicate the results.**

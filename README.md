# Food Delivery Analysis

## Project Review 

### Project Title: Food Delivery Analysis 
### Level: Beginner 

This project is designed to demonstrate fundamental SQL skills and techniques used by data analysts to manage and optimize operations in a food delivery startup. The project involves setting up a delivery database, performing data cleaning and executing business driven queries to ensure delivery efficieny during high demand periods (like the lunch rush).

## Objectives
1. Database Setup: Create and populate a food delivery database with transaction records.
2. Data Cleaning: Identify and handle missing order_time or order_id values to maintain data integrity.
3. Operational Analysis; Filter and sort data to assist delivery drivers in route planning.
4. Customer Insights: Analyze customer ordering patterns based on names and locations.

## Project Structure
1. Database Setup
   - Database Creation: The project starts by creating a database named "FoodDelivery_db".
   - Table Creation: A table named "Orders" is created to store delivery details.
```SQL
CREATE TABLE ORDERS(
order_id int,
order_time double,
customer_id varchar(20),
customer_name varchar(50),
address_pincode int,
apartment_floor int
);
```
2. Data Exploration and Cleaning
   - Record Audit: Checking the first few rows to understand the data structure.
   - Null Value Check: Identifying "bugs" where order_time was not captured.
   - Duplicate Prevention: Using "Distinct" to identify unique service areas (pincodes).
```SQL
SELECT order_id
FROM Orders
WHERE order_time IS NULL OR order_time="";
```
3. Data Analysis and Business Logic
The following SQL queries were developed to solve real-world delivery challenges:
   - The Lunch Rush Filter: Retrieve all orders placed during the peak window (12pm- 1pm).
   - Driver Optimization: Sort orders by apartment_floor in ascending order to minimize physical strain for delivery personnel.
   - Marketing Suffix Search: Identify unique customers whose names and with 'a' for targeted promotional campaigns.
```SQL
SELECT * 
FROM Orders
WHERE order_time>=12 AND order_time<=13;
```
```SQL
SELECT * 
FROM Orders
ORDER BY apartment_floor;
```
```SQL
SELECT DISTINCT customer_id 
FROM Orders
WHERE customer_name LIKE "%a";
```

### Findings
- Logistics: By sorting by floors, we can prioritize ground floor deliveries for faster turnover.
- Data Quality: Identified specific instances where the system failed to log timestamps, highlighting a need for a backend fix.
- Geographic Reach: Determined the specific pincodes currently active, allowing for better driver allocation in those zones.

### Conclusion
This project serves as a comprehensive introduction to SQL for data analysts, covering table creation, logical filtering and operational sorting. These skills are essential for making data driven decisions in any fast paced logisticsn or e-commerce environment. 

# Online-Retail-Sales-Database-Design
This project is a part of 1 month SQL developer internship.

---

## Project Objectives

- Model real-world online retail database structure
- Use SQL to retrieve and analyze business data
- Apply best practices in database normalization
- Demonstrate advanced SQL concepts: joins, views, stored routine

---

## Schema Overview (ER Diagram)

**Entities:**
- Customers
- Categories
- Products
- Orders
- Order_Items
- Payments

**Key Relationships:**
- Customers → Orders (1:M)
- Orders → Order_Items (1:M)
- Products → Order_Items (1:M)
- Orders → Payments (1:1)
- Products → Categories (M:1)

*ER Diagram created using [dbdiagram.io](https://dbdiagram.io)*

---

## Core SQL Features Used

### ->DDL & Schema Design
- `CREATE TABLE`, `PRIMARY KEY`, `FOREIGN KEY`, `AUTO_INCREMENT`, `NOT NULL`, `UNIQUE`

### ->DML & Sample Data
- `INSERT INTO` for realistic categories, products, customers, orders, and payments

### ->Joins & Queries
- `INNER JOIN`, `LEFT JOIN`
- `GROUP BY`, `ORDER BY`, `LIMIT`, `COALESCE`

### ->Views
- `view_sales_summary`
- `View_Customer_Order_History`
- `View_Pending_Payments`

### ->Stored Routine
- `GetTotalSpentByCustomer()` — returns total money spent by a customer

---

## How to Run

1. Import `schema.sql` in MySQL Workbench to create the database
2. Run `sample_data.sql` to insert test data
3. Execute `queries.sql` to explore the data
4. Use `views_and_function.sql` to create stored routines

---

## Project Outcomes

- Built a real-world e-commerce SQL schema  
- Applied advanced SQL techniques with functions and views  
- Gained end-to-end experience in designing and querying a relational database

---

## Tools Used

- MySQL Workbench 8.0
- dbdiagram.io
- Mockaroo (for dummy data)
- GitHub for version control

---

## #Created by

**Dikshant Kumar Singh**  
SQL Developer Internship Project – Day 30  
July 2025

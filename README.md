# bank-management-system
Advanced SQL query optimization, database automation, and schema design for a modern banking infrastructure.
# Core Banking & Audit Log Management System (SQL)
### Developed by: Ghafoori

Welcome to my advanced SQL repository! This project demonstrates a production-ready database schema for a modern banking institution, featuring high-performance query optimization, data analytics, dynamic JSON parsing, and automation.

---

## 📊 Comprehensive Breakdown of the 9 Database Scenarios

### 🔹 SCENARIO 1: Multi-Table Relational Data Extraction (INNER JOIN)
* **Technical Focus:** Data Integration & `INNER JOIN`
* **Description:** Extracts the customer's full name (using `CONCAT`), account type, current balance, and branch name by successfully linking three distinct relational tables: `Customers`, `Accounts`, and `Branches`.

### 🔹 SCENARIO 2: Hierarchical Network Analysis (Self-Join)
* **Technical Focus:** Unary Relationships & `Self-Join`
* **Description:** Maps the bank's referral network by joining the `Customers` table onto itself. It dynamically matches newly joined clients with the specific existing customer who referred them (`ReferredByCustomerID`).

### 🔹 SCENARIO 3: Targeted Financial Audit Log Parsing (JSON)
* **Technical Focus:** Semi-Structured Data Parsing (`->>'$.Key'`)
* **Description:** Queries the `audit_logs` system to dynamically extract only the specific `"Balance"` key value from raw JSON text blocks (`NewValue`), filtering exclusively for accounts that underwent an active `UPDATE` operation.

### 🔹 SCENARIO 4: Cross-Branch Performance Metrics (AGGREGATE FUNCTIONS)
* **Technical Focus:** Data Aggregation & `AVG()`
* **Description:** Conducts a performance and liquidity analysis across the banking infrastructure by calculating and comparing the average account balance globally versus individual branch-specific metrics using `BranchID` filtering.

### 🔹 SCENARIO 5: Transaction Failure Auditing (DATA FILTERING)
* **Technical Focus:** Security & Risk Management
* **Description:** Extracts a comprehensive, real-time audit trail of all financial transactions flagged with a `"failed"` status, capturing critical details such as source/destination accounts, card numbers, and transfer types for fraud analysis.

### 🔹 SCENARIO 6: Temporal Cohort Filtering (LIKE Operator)
* **Technical Focus:** Pattern Matching on Temporal Data
* **Description:** Filters and isolates a specific cohort of bank customers whose dates of birth are after the year 2000, using the `LIKE "2%"` operator on string-formatted date columns.

### 🔹 SCENARIO 7: Automatic Daily State Reset (DATABASE EVENTS)
* **Technical Focus:** Database Automation & Scheduled Events
* **Description:** Implements a background automation mechanism using a scheduled `CREATE EVENT` that runs every 24 hours at midnight to automatically reset the `DailyWithdrawnAmount` column to zero for all issued bank cards.

### 🔹 SCENARIO 8: Dynamic Maturity & Risk Assessment (DATEDIFF)
* **Technical Focus:** Time-Series Analytics & `HAVING` Clause
* **Description:** Generates a critical risk report displaying customer details and account numbers for all active loans with a maturity window or next due date falling strictly within the next 30 days, utilizing `DATEDIFF()` and `CURDATE()`.

### 🔹 SCENARIO 9: Internal vs. External Transaction Routing (CTE)
* **Technical Focus:** Common Table Expressions (`WITH` Clause) & Optimization
* **Description:** Optimizes heavy query execution by utilizing dual Common Table Expressions (`same_trans` and `diff_trans`) to isolate and report on transactions conducted within the exact same branch versus funds routed between different branches.

---

## 🚀 Technical Core Competencies
* **Advanced Querying:** Deep understanding of CTEs, Subqueries, and Complex Joins.
* **Database Automation:** Experience with Event Schedulers and state management.
* **Modern Data Formats:** Native handling of JSON columns and semi-structured text inside relational databases.

---
*Maintained with passion for data engineering, structural optimization, and clean code.*

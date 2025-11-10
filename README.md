## 🏦 Banking Management System (MySQL Project)

### 📘 Project Overview

The **Banking Management System** is a simple SQL-based project built using **MySQL**.
It manages **customer accounts** and **transactions**, allowing basic operations such as deposits and withdrawals.
The project demonstrates the use of **database creation**, **table relationships**, **foreign keys**, and **SQL queries**.

---

### ⚙️ Technologies Used

* **Database:** MySQL
* **Interface:** MySQL Command Line / Workbench
* **Language:** SQL

---

### 🗄️ Database Structure

#### 1️⃣ Database Creation

```sql
 create database banking_system;
use banking_system;
```
---

#### 2️⃣ Account Table

```sql
 create table account (
    account_no int primary key auto_increment,
    customer_name varchar(50),
    gender enum('male','female','other') not null,
    account_type enum('saving','current') not null,
    current_balance decimal(10,2)
);
```
---

#### 3️⃣ Transaction Table

```sql
 create table transaction (
    trans_id int primary key auto_increment,
    account_no INT,
    trans_type enum('deposit', 'withdraw') not null,
    amount decimal(10,2) not null,
    trans_date timestamp default current_timestamp,
    foreign key (account_no) references account(account_no)
);
```
---

### 💾 Sample Data

#### Insert Account Records:

```sql
 insert into account (account_no,customer_name, gender, account_type, current_balance)
values
(100001,'Aman Singh', 'male', 'saving', 25000.00),
(100002,'Neha Verma', 'female', 'current', 45000.00),
(100003,'Ravi Kumar', 'male', 'saving', 18000.50),
(100004,'Pooja Sharma', 'female', 'saving', 52000.75),
(100005,'Harsh Patel', 'male', 'current', 60000.00),
(100006,'Simran Kaur', 'female', 'saving', 30000.00),
(100007,'Vikas Mehra', 'male', 'saving', 15000.00),
(100008,'Ananya Joshi', 'female', 'current', 80000.00),
(100009,'Deepak Sahu', 'male', 'saving', 27000.00),
(100010,'Meena Roy', 'female', 'saving', 40000.00);
```

#### Insert Transaction Records:

```sql
 insert into transaction (account_no, trans_type, amount)
values
(100001, 'deposit', 5000.00),
(100001, 'withdraw', 2000.00),
(100002, 'deposit', 10000.00),
(100003, 'withdraw', 3000.00),
(100004, 'deposit', 7000.00),
(100005, 'withdraw', 10000.00),
(100006, 'deposit', 8000.00),
(100007, 'deposit', 2500.00),
(100008, 'withdraw', 5000.00),
(100009, 'deposit', 4000.00);
```
---

### 📈 Key SQL Concepts Used

* `PRIMARY KEY` and `FOREIGN KEY` constraints
* `AUTO_INCREMENT`
* `ENUM` data type
* `JOIN` operations
* `GROUP BY`, `ORDER BY`, and `CASE` statements
* Window functions (can be extended for analysis)

---

### 🧠 Future Enhancements

* Add triggers to auto-update account balances after transactions
* Create views for monthly statements
* Implement stored procedures for deposits/withdrawals
* Add user authentication for multi-user banking access

---

## 📬 Author

**Aman Singh Parihar**
📧 Email: amansinghparihar2002@gmail.com
💻 GitHub: https://www.linkedin.com/in/singh-aman-parihar2002/ 

---

create database banking_system;
use banking_system;

create table account (
    account_no int primary key auto_increment,
    customer_name varchar(50),
    gender enum('male','female','other') not null,
    account_type enum('saving','current') not null,
    current_balance decimal(10,2)
);

mysql> desc account;
+-----------------+-------------------------------+------+-----+---------+----------------+
| Field           | Type                          | Null | Key | Default | Extra          |
+-----------------+-------------------------------+------+-----+---------+----------------+
| account_no      | int                           | NO   | PRI | NULL    | auto_increment |
| customer_name   | varchar(50)                   | YES  |     | NULL    |                |
| gender          | enum('male','female','other') | NO   |     | NULL    |                |
| account_type    | enum('saving','current')      | NO   |     | NULL    |                |
| current_balance | decimal(10,2)                 | YES  |     | NULL    |                |
+-----------------+-------------------------------+------+-----+---------+----------------+

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

 select * from account;
+------------+---------------+--------+--------------+-----------------+
| account_no | customer_name | gender | account_type | current_balance |
+------------+---------------+--------+--------------+-----------------+
|     100001 | Aman Singh    | male   | saving       |        25000.00 |
|     100002 | Neha Verma    | female | current      |        45000.00 |
|     100003 | Ravi Kumar    | male   | saving       |        18000.50 |
|     100004 | Pooja Sharma  | female | saving       |        52000.75 |
|     100005 | Harsh Patel   | male   | current      |        60000.00 |
|     100006 | Simran Kaur   | female | saving       |        30000.00 |
|     100007 | Vikas Mehra   | male   | saving       |        15000.00 |
|     100008 | Ananya Joshi  | female | current      |        80000.00 |
|     100009 | Deepak Sahu   | male   | saving       |        27000.00 |
|     100010 | Meena Roy     | female | saving       |        40000.00 |
+------------+---------------+--------+--------------+-----------------+

create table transaction (
    trans_id int primary key auto_increment,
    account_no INT,
    trans_type enum('deposit', 'withdraw') not null,
    amount decimal(10,2) not null,
    trans_date timestamp default current_timestamp,
    foreign key (account_no) references account(account_no)
);

 desc transaction;
+------------+----------------------------+------+-----+-------------------+-------------------+
| Field      | Type                       | Null | Key | Default           | Extra             |
+------------+----------------------------+------+-----+-------------------+-------------------+
| trans_id   | int                        | NO   | PRI | NULL              | auto_increment    |
| account_no | int                        | YES  | MUL | NULL              |                   |
| trans_type | enum('deposit','withdraw') | NO   |     | NULL              |                   |
| amount     | decimal(10,2)              | NO   |     | NULL              |                   |
| trans_date | timestamp                  | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+----------------------------+------+-----+-------------------+-------------------+

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

 select * from transaction;
+----------+------------+------------+----------+---------------------+
| trans_id | account_no | trans_type | amount   | trans_date          |
+----------+------------+------------+----------+---------------------+
|        1 |     100001 | deposit    |  5000.00 | 2025-11-05 12:03:14 |
|        2 |     100001 | withdraw   |  2000.00 | 2025-11-05 12:03:14 |
|        3 |     100002 | deposit    | 10000.00 | 2025-11-05 12:03:14 |
|        4 |     100003 | withdraw   |  3000.00 | 2025-11-05 12:03:14 |
|        5 |     100004 | deposit    |  7000.00 | 2025-11-05 12:03:14 |
|        6 |     100005 | withdraw   | 10000.00 | 2025-11-05 12:03:14 |
|        7 |     100006 | deposit    |  8000.00 | 2025-11-05 12:03:14 |
|        8 |     100007 | deposit    |  2500.00 | 2025-11-05 12:03:14 |
|        9 |     100008 | withdraw   |  5000.00 | 2025-11-05 12:03:14 |
|       10 |     100009 | deposit    |  4000.00 | 2025-11-05 12:03:14 |
+----------+------------+------------+----------+---------------------+

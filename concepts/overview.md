# Important Concepts to Know

SQL interviews tend to mirror the way people actually learn the language.

Early on, it's about vocabulary and grammar, like knowing what a join is, how SELECT works, and the difference between DDL and DML.

As you become more familiar, the focus shifts from "can you write a query" to "can you write the right query." You start to understand when an index helps, why normalization matters, and how subtly different commands like DELETE and TRUNCATE behave under the hood.

At the senior end, syntax is assumed, and the real test is problem-solving: handling duplicates, NULLs, ties, and ranking logic with window functions and CTEs, and reasoning about transactions, concurrency, and performance. 

For intermediate practitioners
Functions in SQL. You should know about aggregate and scalar functions, as well as built-in and user-defined functions.

Advanced commands. Questions may cover topics like joins, primary and foreign keys, indexes, and SQL relationships.

Database design. Expect questions on normalization, denormalization, and the differences between various SQL statements like DELETE, TRUNCATE, and DROP.

Advanced queries. You may be asked about subqueries, both nested and correlated, as well as how to perform specific tasks like finding the nth highest value in a column.


## Common Qs

1. What is SQL?
It stands for Structured Query Language, and it's a programming language used for interaction with relational database management systems (RDBMS). This includes fetching, updating, inserting, and removing data from tables.

2. What are SQL dialects? Give some examples.
The various versions of SQL, both free and paid, are also called SQL dialects. All the dialects of SQL have a very similar syntax and vary insignificantly only in additional functionality. Some examples are Microsoft SQL Server, PostgreSQL, MySQL, SQLite, T-SQL, and Oracle.

3. What are the main applications of SQL?
Using SQL, we can:

create, delete, and update tables in a database
access, manipulate, and modify data in a table
retrieve and summarize the necessary information from a table or several tables
add or remove certain rows or columns from a table
SQL Interview Questions for Beginners 
Your interviewer may get the ball rolling by starting with the easier questions:

4. What is an SQL statement?
Also known as an SQL command. It's a string of characters interpreted by the SQL engine as a legal command and executed accordingly. Some examples of SQL statements are SELECT, CREATE, DELETE, DROP, REVOKE, and so on.

5. What is an SQL query?
A query is a piece of code written in SQL to access or modify data from a database.

There are two types of SQL queries: queries for data retrieval and data modification. The first ones are used to retrieve the necessary data (this also includes limiting, grouping, ordering the data, extracting the data from multiple tables, etc.), while the second ones are used to create, add, delete, update, and rename the data.

6. What is an SQL subquery?
Also called an inner query, a query placed inside another query, or an outer query. A subquery may occur in the clauses such as SELECT, FROM, WHERE, UPDATE, etc. It's also possible to have a subquery inside another subquery. The innermost subquery is run first, and its result is passed to the containing query (or subquery).

7. What is an SQL join?
A clause used to combine and retrieve records from two or multiple tables. SQL tables can be joined based on the relationship between the columns of those tables. Check out our SQL joins tutorial for more context, plus our dedicated guide to SQL joins interview questions. 

8. What is an SQL comment?
A human-readable clarification of what a particular piece of code does. SQL code comments can be single-line (preceded by a double dash --) or span over multiple lines (as follows: /*comment_text*/). When the SQL engine runs, it ignores code comments. The purpose of adding SQL code comments is to make the code more comprehensive for those people who will read it in the future.

9. What is an SQL alias?
A temporary name given to a table (or a column in a table) while executing a certain SQL query. Aliases are used to improve the code readability and make the code more compact. An alias is introduced with the AS keyword:

SELECT col_1 AS column
FROM table_name;

Powered By 
Technical SQL Interview Questions
Now, let's move on to the technical SQL interview questions and some potential answers to them.

When answering technical questions, the best strategy is to give as precise answers as possible. It may look like an attempt to deviate from the main topic. In addition, it may provoke additional questions about which you can feel less confident.

All in all, SQL allows querying a database in multiple ways. In addition, SQL easily integrates with other programming languages, such as Python or R, so we can use their combined power.

10. What types of SQL commands do you know?
Data Definition Language (DDL) – to define and modify the structure of a database.
Data Manipulation Language (DML) – to access, manipulate, and modify data in a database.
Data Control Language (DCL) – to control user access to the data in the database and give or revoke privileges to a specific user or a group of users.
Transaction Control Language (TCL) – to control transactions in a database.
Data Query Language (DQL) – to perform queries on the data in a database to retrieve the necessary information from it.
11. Give some examples of common SQL commands.
DDL: CREATE, ALTER TABLE, DROP, TRUNCATE, and ADD COLUMN

DML: UPDATE, DELETE, and INSERT

DCL: GRANT and REVOKE

TCL: COMMIT, SET TRANSACTION, ROLLBACK, and SAVEPOINT

DQL: – SELECT

12. What is DBMS, and what types of DBMS do you know?
It stands for Database Management System, a software package used to perform various operations on the data stored in a database, such as accessing, updating, wrangling, inserting, and removing data. There are various types of DBMS, such as relational, hierarchical, network, graph, or object-oriented. These types are based on the way the data is organized, structured, and stored in the system.

13. What is RDBMS? Give some examples of RDBMS.
It stands for Relational Database Management System. It's the most common type of DBMS used for working with data stored in multiple tables related to each other by means of shared keys. The SQL programming language is designed to interact with RDBMS. Some examples of RDBMS are MySQL, PostgreSQL, Oracle, MariaDB, etc.

14. What are tables and fields in SQL?
A table is an organized set of related data stored in a tabular form, i.e., in rows and columns. A field is another term for a column of a table.

15. What types of SQL subqueries do you know?
Single-row – returns at most one row.
Multi-row – returns at least two rows.
Multi-column – returns at least two columns.
Correlated – a subquery related to the information from the outer query.
Nested – a subquery inside another subquery.
16. What is a constraint, and why use constraints?
A set of conditions defining the type of data that can be input into each column of a table. Constraints ensure data integrity in a table and block undesired actions.

17. What SQL constraints do you know?
DEFAULT – provides a default value for a column.

UNIQUE – allows only unique values.

NOT NULL – allows only non-null values.

PRIMARY KEY – allows only unique and strictly non-null values (NOT NULL and UNIQUE).

FOREIGN KEY – provides shared keys between two or more tables.

18. What types of joins do you know?
(INNER) JOIN – returns only those records that satisfy a defined join condition in both (or all) tables. It's a default SQL join.

LEFT (OUTER) JOIN – returns all records from the left table and those records from the right table that satisfy a defined join condition.

RIGHT (OUTER) JOIN – returns all records from the right table and those records from the left table that satisfy a defined join condition.

FULL (OUTER) JOIN – returns all records from both (or all) tables. It can be considered as a combination of left and right joins.

Note: FULL OUTER JOIN is supported by PostgreSQL, SQL Server, Oracle, and MySQL 8.0 and above, but MySQL only allows it through UNION patterns; meanwhile, SQLite does not support RIGHT JOIN, which can be emulated using LEFT JOIN in combination with UNION.

19. What is a primary key in SQL?
A column (or multiple columns) of a table to which the PRIMARY KEY constraint was imposed to ensure unique and non-null values in that column. In other words, a primary key is a combination of the NOT NULL and UNIQUE constraints.The primary key uniquely identifies each record of the table.

Related concept — Surrogate key: A surrogate key is an artificially generated identifier (typically a sequential integer or UUID) assigned to each record, independent of the actual data values. Unlike natural keys (e.g., an email address), surrogate keys remain stable when business data changes, making them a popular choice for primary keys in production databases.

 Each table can define at most one PRIMARY KEY (which may be composite). A PRIMARY KEY  is strongly recommended but not strictly required by all engines.

20. What is a unique key in SQL?
A column (or multiple columns) of a table to which the UNIQUE constraint was imposed to ensure unique values in that column, including a possible NULL value (the only one).

Note: 

SQL Server: Only one NULL allowed unless you use a filtered index.
PostgreSQL / Oracle / MySQL: Multiple NULLs allowed because NULL <> NULL.
21. What is a foreign key in SQL? 
A column (or multiple columns) of a table to which the FOREIGN KEY (or UNIQUE key) constraint was imposed to link this column to the primary key in another table (or several tables).The purpose of foreign keys is to keep connected various tables of a database.

22. What is an SQL index?
A special data structure related to a database table and used for storing its important parts and enabling faster data search and retrieval. Indexes are especially efficient for large databases, where they significantly enhance query performance.

23. What types of indexes do you know?
Unique index – doesn't allow duplicates in a table column and hence helps maintain data integrity.
Clustered index – defines the physical order of records of a database table and performs data searching based on the key values. A table can have only one clustered index.
Non-clustered index – keeps the order of the table records that don't match the physical order of the actual data on the disk. It means that the data is stored in one place and a non-clustered index – in another one. A table can have multiple non-clustered indexes.
24. What is a schema?
A collection of database structural elements such as tables, stored procedures, indexes, functions, and triggers. It shows the overall database architecture, specifies the relationships between various objects of a database, and defines different access permissions for them. Read our database schema guide for a deeper understanding.

25. What is a SQL operator?
A reserved character, a combination of characters, or a keyword used in SQL queries to perform a specific operation. SQL operators are commonly used with the WHERE clause to set a condition (or conditions) for filtering the data.

26. What types of SQL operators do you know?
Arithmetic (+, -, *, /, etc.)

Comparison (>, <, =, >=, etc.)

Compound (+=, -=, *=, /=, etc.)

Logical (AND, OR, NOT, BETWEEN, etc.)

String (%, _, +, ^, etc.)

Set (UNION, UNION ALL, INTERSECT, and MINUS (or EXCEPT))

27. What is a clause?
A condition imposed on a SQL query to filter the data to obtain the desired result. Some examples are WHERE, LIMIT, HAVING, LIKE, AND, OR, ORDER BY, etc.

28. What are some common statements used with the SELECT query?
The most common ones are FROM, GROUP BY, JOIN, WHERE, ORDER BY, LIMIT, and HAVING.

29. How do you create a table in SQL?
Using theCREATE TABLE statement. For example, to create a table with three columns of predefined datatypes, we apply the following syntax:

```sql
CREATE TABLE table_name (col_1 datatype,
                         col_2 datatype,
                         col_3 datatype);
```

30. How to update a table?
Using the UPDATE statement. The syntax is:

```
UPDATE table_name
SET col_1 = value_1, col_2 = value_2
WHERE condition;
```

31. How to delete a table from a database?
Using the DROP TABLE statement. The syntax is: DROP TABLE table_name;.

32. How to get the count of records in a table?
Using the COUNT() aggregate function with the asterisk passed as its argument: SELECT COUNT(*) FROM table_name;.

33. How to sort records in a table?
Using the ORDER BY statement:

```sql
SELECT * FROM table_name
ORDER BY col_1;
```

We can specify that we need a descending order using the DESC keyword; otherwise, the order will be ascending by default. Also, we can sort by more than one column and specify for each one, ascending or descending order separately. For example:

```sql
SELECT * FROM table_name
ORDER BY col_1 DESC, col_3, col_6 DESC;
```

34. How to select all columns from a table?
Using the asterisk * with the SELECT statement. The syntax is: SELECT * FROM table_name;.

35. How to select common records from two tables?
Using the INTERSECT statement:

```sql
SELECT col1, col2 FROM table_1
INTERSECT
SELECT col1, col2 FROM table_2;
```
Note: INTERSECT requires the same number of columns and compatible types.

36. What is the DISTINCT statement, and how do you use it?
This statement is used with the SELECT statement to filter out duplicates and return only unique values from a column of a table. The syntax is:

```sql
SELECT DISTINCT col_1
FROM table_name;
```

37. What are relationships? Give some examples.
Relationships are the connections and correlations between entities, basically meaning how two or more tables of a database are related to one another. For example, we can find an ID of the same client in a table on sales data and in a customer table.

38. What is a NULL value? How is it different from zero or a blank space?
A NULL value indicates the absence of data for a certain cell of a table. Instead, zero is a valid numeric value, and an empty string is a legal string of zero length.

39. What is the difference between SQL and NoSQL?
SQL databases are relational, structured, and use tables with predefined schemas, while NoSQL databases are non-relational, schema-less, and designed to handle unstructured or semi-structured data.

40. What are some common challenges when working with SQL databases?
Challenges include performance tuning for large datasets, managing indexing strategies, ensuring data integrity with constraints, handling concurrent transactions, and optimizing query execution.

## Intermediate SQL Questions

41. What is a Common Table Expression (CTE)?
A Common Table Expression (CTE) is a temporary named result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement. CTEs improve query readability and allow you to break complex queries into simpler, reusable parts. The syntax uses the WITH keyword:

```sql
WITH sales_summary AS (
  SELECT product_id, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id
)
SELECT p.product_name, s.total_sales
FROM products p
JOIN sales_summary s ON p.id = s.product_id
WHERE s.total_sales > 10000;
```
CTEs are particularly useful for recursive queries (hierarchical data like org charts) and when you need to reference the same subquery multiple times.

42. What are window functions, and how do they differ from aggregate functions?
Window functions perform calculations across a set of rows related to the current row, without collapsing the result into a single output row like aggregate functions do. They use the OVER() clause to define the window of rows.

Key window functions include:

ROW_NUMBER() – assigns a unique sequential number to each row
RANK() – assigns a rank with gaps for ties
DENSE_RANK() – assigns a rank without gaps for ties
LAG() / LEAD() – access data from previous/next rows
SUM() OVER(), AVG() OVER() – running or cumulative calculations
Example: Calculate running total of sales

```sql
SELECT 
  order_date,
  amount,
  SUM(amount) OVER (ORDER BY order_date) AS running_total
FROM orders;
```

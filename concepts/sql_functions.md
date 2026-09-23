# SQL Functions & Query Guide

A practical reference for commonly used SQL clauses, functions, and query techniques for data analysis.

This guide covers:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `JOIN`
- `CASE WHEN`
- CTEs
- Subqueries
- Aggregate Functions
- Date Functions

Examples use **MySQL syntax**.

---

## Table of Contents

1. [SQL Query Execution Order](#sql-query-execution-order)
2. [Comparison Chart](#comparison-chart)
3. [SELECT](#select)
4. [WHERE](#where)
5. [GROUP BY](#group-by)
6. [HAVING](#having)
7. [ORDER BY](#order-by)
8. [JOIN](#join)
9. [CASE WHEN](#case-when)
10. [CTEs](#common-table-expressions-ctes)
11. [Subqueries](#subqueries)
12. [Aggregate Functions](#aggregate-functions)
13. [Date Functions](#date-functions)
14. [Putting Everything Together](#putting-everything-together)

---

# SQL Query Execution Order

Although SQL is written in a particular order, the database generally processes the query conceptually in this order:

```text
FROM
  ↓
JOIN
  ↓
WHERE
  ↓
GROUP BY
  ↓
HAVING
  ↓
SELECT
  ↓
ORDER BY
  ↓
LIMIT

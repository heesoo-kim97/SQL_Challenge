Scenario:

A company wants to understand which suppliers represent the largest portion of its purchasing spend.

```
purchases
+-------------+-------------+----------+-------------+
| purchase_id | supplier_id | quantity | unit_cost   |
+-------------+-------------+----------+-------------+
| 1           | S001        | 100      | 20.00       |
| 2           | S002        | 200      | 15.00       |
| 3           | S001        | 150      | 20.00       |
| 4           | S003        | 100      | 30.00       |
| 5           | S002        | 100      | 15.00       |
+-------------+-------------+----------+-------------+
```

Business Question:
Calculate total purchase spend for each supplier and identify the supplier with the highest spend.

```SQL
SELECT
  supplier_id,
  SUM(quantity * unit_cost) AS total_spend
FROM purchases
GROUP BY supplier_id
LIMIT 1;
```

Result:

```
supplier_id | total_spend
-------------+------------
S001         | 5000.00
```

Business Interpretation:
S001 represents the company's largest purchasing spend. This could maek S001 a prioity for supplier negotiations, contract review, or cost-reducrtion initatives.

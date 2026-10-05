# Find Products with Declining Sales

Business Scenario:
A company wants to identify priducts whose sales decreased from September to October so the supply chain team can investigate whether deamand is changing.

```
sales
+------------+------------+----------+
| product_id | month      | quantity |
+------------+------------+----------+
| 101        | September  | 500      |
| 101        | October    | 350      |
| 102        | September  | 200      |
| 102        | October    | 250      |
| 103        | September  | 400      |
| 103        | October    | 300      |
+------------+------------+----------+
```

Business Question:
Find products where October sales were lower than September sales.

```SQL
SELECT product_id,
       Sum(CASE WHEN month = 'September' THEN quantity ELSE 0 END) AS september_sales,
       Sum(CASE WHEN month = 'October' THEN quantity ELSE 0 END) AS october_sales
FROM sales
GROUP BY product_id
HAVING
  SUM(CASE WHEN month = 'October' THEN quantity ELSE 0 END)
  <
  SUM(CASE WHEN month = 'September' THEN quantity ELSE 0 END)
```

Result:
```
product_id | september_sales | october_sales
-----------+-----------------+--------------
101        | 500             | 350
103        | 400             | 300
```

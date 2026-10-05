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


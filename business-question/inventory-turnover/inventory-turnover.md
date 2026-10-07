# Calculate Inventory Turnover

Business Scenario: Management wants to know which products are moving efficiently through inventory.

```
inventory
+------------+-----------------+---------------+
| product_id | avg_inventory   | annual_sales  |
+------------+-----------------+---------------+
| 101        | 500             | 5000          |
| 102        | 1000            | 4000          |
| 103        | 200             | 3000          |
+------------+-----------------+---------------+
```

Business Question: Calculate the inventory turnover ratio for each product.

```SQL
SELECT
    product_id,
    annual_sales,
    avg_inventory,
    ROUND(annual_sales / avg_inventory, 2) AS inventory_turnover
FROM inventory
ORDER BY inventory_turnover DESC;
```

Result:
```
product_id | annual_sales | avg_inventory | inventory_turnover
-----------+--------------+---------------+-------------------
103        | 3000         | 200           | 15.00
101        | 5000         | 500           | 10.00
102        | 4000         | 1000          | 4.00
```

Business Interpretation: 

Product 103 has the highest inventory turnover at 15x, meaning the company sells an amount equivalent to its average inventory roughly 15 times per year. Product 102, on the other hand, only turns over 4x, which could indicate that the company is carrying relatively high inventory compared with its sales.

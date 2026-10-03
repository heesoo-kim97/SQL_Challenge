# Find the Warehouse with the Most Inventory

Database:

```
inventory
+-------------+------------+-----------+
| warehouse_id| product_id | quantity  |
+-------------+------------+-----------+
| W001        | 101        | 500       |
| W001        | 102        | 300       |
| W002        | 101        | 200       |
| W002        | 102        | 600       |
| W003        | 101        | 150       |
+-------------+------------+-----------+
```

Business Question: Which warehouse currently holds the most total inventory?

```SQL
SELECT
    warehouse_id,
    SUM(quantity) AS total_inventory
FROM inventory
GROUP BY warehouse_id
ORDER BY total_inventory DESC
LIMIT 1;
```

Result:
```
warehouse_id | total_inventory
-------------+----------------
W001         | 800
```

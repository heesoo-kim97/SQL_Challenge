# Find Products That Have Never Been Sold

Business Scenario: A company has hundreds of SKUs, and management wants to identify products sitting in the catalog that have never had a sale. These products may be obsolete, poorly marketed, or unnecessary inventory.

```
products
+------------+--------------+
| product_id | product_name |
+------------+--------------+
| 101        | Energy Drink |
| 102        | Protein Bar  |
| 103        | Sports Water |
| 104        | Granola Bar  |
+------------+--------------+

sales
+------------+----------+
| product_id | quantity |
+------------+----------+
| 101        | 500      |
| 102        | 300      |
| 101        | 200      |
+------------+----------+
```

Business Question: Find all products that have never been sold.


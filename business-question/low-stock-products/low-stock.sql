
inventory
+------------+-------------+------------+----------------+
| product_id | product_name| stock_qty  | reorder_point  |
+------------+-------------+------------+----------------+
| 101        | Energy Drink | 120        | 150            |
| 102        | Protein Bar  | 300        | 200            |
| 103        | Water        | 80         | 100            |
+------------+-------------+------------+----------------+
/*
Business question:
Find all products where current inventory is below the reorder point

*/

SELECT
  product_id, product_name, stock_qty, reorder_point
FROM inventory
WHERE stock_qty < reorder_point;


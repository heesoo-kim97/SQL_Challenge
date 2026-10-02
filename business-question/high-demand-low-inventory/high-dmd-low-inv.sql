sales
+------------+------------+----------+
| product_id | sale_date  | quantity |
+------------+------------+----------+
| 101        | 2026-09-01 | 40       |
| 101        | 2026-09-02 | 35       |
| 102        | 2026-09-01 | 10       |
| 102        | 2026-09-02 | 15       |
| 103        | 2026-09-01 | 50       |
| 103        | 2026-09-02 | 45       |

inventory
+------------+-----------+
| product_id | stock_qty |
+------------+-----------+
| 101        | 100       |
| 102        | 200       |
| 103        | 80        |

/*
Business Question: Find products where total sales are greater than 50 units and current inventory is less than 100 units.
*/

SELECT 
  s.product_id,
  SUM(s.quantity) AS total_sales,
  i.stock_qty
FROM sales s
JOIN inventroy i
  ON s.product_id = i.product_id
GROUP BY
  s.product_id,
  i.stock_qty
HAVING
  SUM(s.quantity) > 50
  AND i.stock_qty < 100;


/* result */
product_id | total_sales | stock_qty
-----------+-------------+----------
103        | 95          | 80

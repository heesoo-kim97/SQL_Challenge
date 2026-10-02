shipments
+-------------+-------------+--------------+--------------+
| shipment_id | supplier_id | promised_date| delivery_date|
+-------------+-------------+--------------+--------------+
| 1           | S001        | 2026-09-01   | 2026-09-03   |
| 2           | S002        | 2026-09-02   | 2026-09-02   |
| 3           | S001        | 2026-09-05   | 2026-09-08   |
| 4           | S003        | 2026-09-04   | 2026-09-05   |

/*
Business Question: Calculate the number of late shipments for each supplier.
*/

SELECT
  suplier_id,
  COUNT(*) AS late_shipments
FROM shipments
WHERE delivery_date > promised_date
GROUP BY supplier_id
ORDER BY late_shipments DESC;

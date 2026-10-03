shipments
+-------------+-------------+---------------+---------------+
| shipment_id | supplier_id | promised_date | delivery_date |
+-------------+-------------+---------------+---------------+
| 1           | S001        | 2026-09-01    | 2026-09-01    |
| 2           | S001        | 2026-09-03    | 2026-09-05    |
| 3           | S002        | 2026-09-02    | 2026-09-02    |
| 4           | S002        | 2026-09-04    | 2026-09-06    |
+-------------+-------------+---------------+---------------+

/*
Business Question: Calculate the on-time delivery percentage for each supplier
*/

SELECT
    supplier_id,
    COUNT(*) AS total_shipments,
    SUM(
        CASE
            WHEN delivery_date <= promised_date THEN 1
            ELSE 0
        END
    ) AS on_time_shipments,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN delivery_date <= promised_date THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS on_time_rate
FROM shipments
GROUP BY supplier_id;


Result:
supplier_id | total_shipments | on_time_shipments | on_time_rate
------------+-----------------+-------------------+--------------
S001        | 2               | 1                 | 50.00%
S002        | 2               | 1                 | 50.00%

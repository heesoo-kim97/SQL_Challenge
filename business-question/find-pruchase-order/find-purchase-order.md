# Find Purchase Order 

Business Scenario: Your company orders raw materials from several suppliers. The procurement team wants to identify which purchase orders arrived late and how many days late they were.

Table: `purchase_orders`

| po_id |	supplier_id |	promised_date |	received_date |
| --- | --- | --- | --- |
| 1001 | S001 | 2026-10-05 | 2026-10-08 |
| 1002 | S002 |	2026-10-06 | 2026-10-06 |
| 1003 | S001 |	2026-10-10 | 2026-10-15 |
| 1004 | S003 |	2026-10-12 | 2026-10-11 |
| 1005 | S002 |	2026-10-14 | 2026-10-18 |

Business Problem: Identify every purchase order received after its promised date and calculate the number of days late.

Result
```sql
SELECT
    po_id,
    supplier_id,
    DATEDIFF(received_date, promised_date) AS days_late
FROM purchase_orders
WHERE received_date > promised_date;
```

Expected Result:
| po_id |	supplier_id | days_late |
| --- | --- | --- |
| 1001 |	S001 |	3 |
| 1003 |	S001 |	5 |
| 1005 |	S002 |	4 |

Business Interpretation: Supplier S001 has two late purchase orders, with delays of 3 and 5 days. The procurement team could investigate recurring delays and assess whether safety stock or alternative suppliers are needed.

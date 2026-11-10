# Evaluate International Price Requests

## Business Scenario

The international merchandising team receives pricing requests from distributors in different countries.

Before approving a requested price, the analyst needs to determine whether the proposed price maintains the company's minimum gross profit margin of 35%.

Two tables:

Table: `price_request`

| request_id | sku | market | requested_price |
| --- | --- | --- | --- |
| 1001 | SK101 | Japan | 85 |
| 1002 | SK102 | Korea | 95 |
| 1003 | SK103 | France | 110 |
| 1004 | SK104 | Japan | 75 |
| 1005 | SK105 | Korea | 120 |

Table: `product_costs`

| sku |	unit_cost |
| --- | --- |
| SK101 |	50 |
| SK102 |	65 |
| SK103 |	60 |
| SK104 |	55 |
| SK105 |	90 |

Business Problem

The pricing team wants to identify which price requests meet the minimum 35% gross margin requirement.

Gross Margin Formula: (Requested price - Unite cost) / Request price x 100

my task:

Write a SQL query returning:
- Request ID
- SKU
- Market
- Requested price
- Unit cost
- Gross margin percentage
- Approval status (Approved or Rejected)
A request is approved if its gross margin is greater than or equal to 35%.

Answer:

```sql
SELECT
    p.request_id,
    p.sku,
    p.market,
    p.requested_price,
    c.unit_cost,
    ROUND(
        100.0 * (p.requested_price - c.unit_cost)
        / p.requested_price,
        2
    ) AS gross_margin,
    CASE
        WHEN (p.requested_price - c.unit_cost)
             / p.requested_price >= 0.35
        THEN 'Approved'
        ELSE 'Rejected'
    END AS approval_status
FROM price_requests p
JOIN product_costs c
    ON p.sku = c.sku;
```



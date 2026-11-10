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

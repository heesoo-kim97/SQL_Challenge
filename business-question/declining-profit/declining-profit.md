# Identify products with Declining Profit Margin

Business Scenario:
The international merchandising team wants to evaluate product profitability across different markets.
Some products are generating strong sales but have declining profit margins.

Table `product_sale`

| sku |	market |	units_sold |	selling_price |	unit_cost |
| --- | --- | --- | --- | --- |
| SK101 |	Japan |	500 |	80 |	40 |
| SK102 |	Japan |	300 |	100 |	70 |
| SK103 |	Korea |	400 |	90 |	45 |
| SK104 |	Korea |	200 |	120 |	100 |
| SK105 |	Japan |	600 |	75 |	30 |

Business Problem: Management wants to identify products with a gross profit margin below 30%.

Gross profit margin:
( Revenue-Cost / Revenue ) x 100

Where:
- Revenue = Units Sold × Selling Price
- Cost = Units Sold × Unit Cost
Your task:

Write a SQL query that returns:
- SKU
- Market
- Total revenue
- Total cost
- Gross profit margin (%)
  
Only return products with a gross profit margin below 30%.



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


Answer:

```sql

SELECT
    sku,
    market,
    SUM(units_sold * selling_price) AS revenue,
    SUM(units_sold * unit_cost) AS total_cost,
    ROUND(
        100.0 * SUM(units_sold * (selling_price - unit_cost))
        / SUM(units_sold * selling_price),
        2
    ) AS gross_margin
FROM product_sales
GROUP BY sku, market
HAVING
    100.0 * SUM(units_sold * (selling_price - unit_cost))
    / SUM(units_sold * selling_price) < 30;

```

Expected result:
| SKU |	Market |	Revenue |	Cost |	Margin |
| --- | --- | --- | --- | --- |
| SK102 |	Japan |	30,000 |	21,000 |	30.00% |
| SK104 |	Korea |	24,000 |	20,000 |	16.67% |

Correction to the filter: 
Because the question specifies below 30%, SK102 is exactly 30% and should not appear. The correct expected result is:
| SKU |	Market |	Revenue |	Cost |	Margin |
| --- | --- | --- | --- | --- |
| SK104 |	Korea |	24,000 |	20,000 |	16.67% |

Business interpretation: 
SK104 has a relatively low gross margin. The merchandising team could investigate supplier costs, pricing strategy, or promotional discounts.

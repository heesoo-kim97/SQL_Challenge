# Identify Top-Performing Products by Market

Business Scenario

The international merchandising team wants to understand which products generate the most revenue in each market.

Management wants a report showing the top two products by revenue in each country to help guide product assortment and merchandising decisions.

you have two tables:

Table: `sales`

| sale_id | sku   | market | units_sold |
| ------- | ----- | ------ | ---------- |
| 1       | SK101 | Japan  | 500        |
| 2       | SK102 | Japan  | 300        |
| 3       | SK103 | Japan  | 700        |
| 4       | SK101 | Korea  | 400        |
| 5       | SK102 | Korea  | 600        |
| 6       | SK103 | Korea  | 200        |
| 7       | SK104 | France | 800        |
| 8       | SK105 | France | 400        |

Table: `products`

| sku   | product_name   | unit_price |
| ----- | -------------- | ---------- |
| SK101 | Running Shoes  | 100        |
| SK102 | Training Shoes | 80         |
| SK103 | Casual Shoes   | 60         |
| SK104 | Walking Shoes  | 90         |
| SK105 | Sandals        | 50         |

Business problem

Management wants to identify the two highest-revenue products in every market.

Revenue formula:

\\[ Revenue = Units\ Sold \times Unit\ Price \\]

Your task:

Write a SQL query returning:

- Market
- SKU
- Product name
- Total revenue
- Revenue ranking within each market

Only return the top two products per market.


# Compare Actual Sales Against Forecast

Business Scneario: A beverage distributor forecasts demand to plan inventory purchases and warehouse capacity. At the end of each month, the supply chain team compares forecasted demand with actual sales.

Table: `monthly_demnad`

| product_id |	month |	forecast_qty |	actual_sales |
| --- | --- | --- | --- |
| P101 |	September |	1000 |	1200 |
| P102 |	September |	800 |	700 |
| P103 |	September |	1500 |	1800 |
| P101 |	October |	1100 |	1000 |
| P102 |	October |	900 |	1050 |

Business Problem: Calculate the forecast error for each product and month.

```sql
SELECT
    product_id,
    month,
    forecast_qty,
    actual_sales,
    actual_sales - forecast_qty AS forecast_error,
    ROUND(
        100.0 * (actual_sales - forecast_qty) / forecast_qty,
        2
    ) AS error_percentage
FROM monthly_demand;
```

Expected Result:

| Product |	Month |	Error |	Error % |
| --- | --- | --- | --- |
| P101 | September | 200 | 20.00% |
| P102 | September | -100 | -12.50% |
| P103 | September | 300 | 20.00% |
| P101 | October | -100 |	-9.09% |
| P102 | October | 150 | 16.67% |


Business interpretation:
- Positive error: Actual demand exceeded the forecast, which may indicate a risk of stockouts if inventory was planned around the forecast.
- Negative error: Actual demand was below the forecast, which may indicate excess inventory risk.
- P103 had the largest positive forecast error in September, at 20%, so the team should review its demand assumptions and replenishment plan.


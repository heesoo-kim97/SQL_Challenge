# Calcuate Sales Performance Against Monthly Targets

Business Scenario:

The international merchanidsing team sets monthly sales targets for each market. At the end of the month, management wants to know which markets achieved their targets.

You have two tables.

Table: `monthly_sales`
| market |	month |	actual_sales |
| --- | --- | --- |
| Japan |	September |	150000 |
| Korea |	September |	120000 |
| France |	September | 90000 |
| Japan |	October |	180000 |
| Korea |	October |	100000 |
| France |	October |	110000 |

Table: `sales_target`
| market |	month |	sales_target |
| --- | --- | --- |
| Japan |	September |	140000 |
| Korea |	September |	130000 |
| France |	September | 100000 |
| Japan |	October |	170000 |
| Korea |	October |	110000 |
| France |	October |	100000 |

Business Problem:

Management wants to compare actual sales against targets and classigy each market as either:
- Target Acheived - actual sales are greater than or equal to target.
- Target Missed - actual sales are below target.

Your task:

Write a SQL query returning:
- Market
- Month
- Actual sales
- Sales target
- Sales variance (actual sales minus target)
- Target status

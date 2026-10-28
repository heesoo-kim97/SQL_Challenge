# Validate International Distributor Sales Data

Business Scenario:
Company X collects sales reports from international distributors. 
Before the data is loaded into a reporting system, the analytics team needs to identify duplicate records that could inflate reported sales.


table `distributor_sales`

| report_id |	distributor_id |	sku |	report_month |	units_sold |
| --- | --_ | --- | --- | --- |
| 1001 |	D01 |	SK101 |	2026-09 |	500 |
| 1002 |	D01 |	SK102 |	2026-09 |	300 |
| 1003 |	D01 |	SK101 |	2026-09 |	500 |
| 1004 |	D02 |	SK101 |	2026-09 |	250 |
| 1005 |	D02 |	SK103 |	2026-09 |	400 |
| 1006 |	D01 |	SK102 |	2026-09 |	300 |


Business Problem: The same distributor may report sales for multiple SKUs each month, but each distributor-SKU-month combination should appear only once. Write a SQL query to identify duplicate combinations of distributor_id, sku, and report_month. Return those three fields and the number of records for each combination.

Task: Write a query that returns only combinations appearing more than once.


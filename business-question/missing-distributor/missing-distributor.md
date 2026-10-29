# Find Missing Distributor Reports Before a Dashboard Refresh

Business Scenario:
Company Y expects every active international distributor to submit a monthly sales report. 
Before the monthly Power BI dashboard refresh, the analytics team needs to check whether any reports are missing.

Tables:
`distributors`
distributor_id	distributor_name	active
D01	Japan Distributor	1
D02	Korea Distributor	1
D03	France Distributor	1
D04	UK Distributor	0

`monthly_reports`
distributor_id	report_month	total_units
D01	2026-09	12000
D02	2026-09	8500
D04	2026-09	6000

Business Problem: 
The September report is missing for at least one active distributor. If the dashboard refreshes without that report, management may see incomplete international sales figures.

Your task: 
Write a SQL query to identify all active distributors that have not submitted a report for September 2026.
Return the distributor ID and distributor name.

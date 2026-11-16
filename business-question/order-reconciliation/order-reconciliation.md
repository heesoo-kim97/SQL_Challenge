# Service Order Reconciliation

## **Business scenario**

Company C is integrating its legacy service management system with Salesforce. During testing, the IT team discovers that some service orders appear in one system but not the other.

You have been asked to compare the two systems and identify service orders that have not successfully transferred into Salesforce.

### **Table 1:&#x20;**`Legacy_Service_Orders`

| order_id | customer_id | service_type | order_amount |
| -------- | ----------- | ------------ | ------------ |
| 1001     | 201         | Residential  | 85           |
| 1002     | 202         | Commercial   | 250          |
| 1003     | 203         | Industrial   | 500          |
| 1004     | 204         | Residential  | 95           |
| 1005     | 205         | Commercial   | 300          |
| 1006     | 206         | Residential  | 75           |
| 1007     | 207         | Industrial   | 650          |

### **Table 2:&#x20;**`Salesforce_Service_Orders`

| salesforce_order_id | order_id | migration_status |
| ------------------- | -------- | ---------------- |
| SF001               | 1001     | Completed        |
| SF002               | 1002     | Completed        |
| SF003               | 1003     | Completed        |
| SF004               | 1005     | Completed        |
| SF005               | 1006     | Failed           |
| SF006               | 1008     | Completed        |

## **The task**

Write a SQL query to identify all legacy service orders that have **not successfully migrated into Salesforce**.

For this exercise, consider an order unsuccessful if:

1. It does not exist in the Salesforce table.
2. It exists in Salesforce, but its `migration_status` is not `'Completed'`.

## **SQL Solution**

```sql

SELECT
    l.order_id,
    l.customer_id,
    l.service_type,
    l.order_amount,
    s.migration_status
FROM Legacy_Service_Orders l
LEFT JOIN Salesforce_Service_Orders s
    ON l.order_id = s.order_id
WHERE s.order_id IS NULL
   OR s.migration_status <> 'Completed'
ORDER BY l.order_id;

```

## **Expected output:**

| order_id | customer_id | service_type | order_amount | migration_status |
|---|---:|---|---:|---|
| 1004 | 204 | Residential | 95 | NULL |
| 1005 | 205 | Commercial | 300 | NULL |
| 1006 | 206 | Residential | 75 | Failed |

## **Business interpretation**
- Order 1004 is missing from Salesforce.
- Order 1005 is missing from Salesforce.
- Order 1006 exists in Salesforce but failed migration.
The IT Business Analyst should investigate these records, determine whether the failures are caused by mapping issues, validation errors, or integration problems, and coordinate retesting before deployment.




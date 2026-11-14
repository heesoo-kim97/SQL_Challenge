# Customer Data Migration Validation

Business Scenario

CR&R is preparing to migrate customer records from its legacy customer management system into Salesforce.

Before migration, the IT team needs to identify customers whose records may be incomplete or inconsistent. You have been asked to analyze the legacy customer database and flag records that need to be reviewed before migration.

### **Table:&#x20;**`Customers`

| customer_id | customer_name | email            | phone      | service_type |
| ----------- | ------------- | ---------------- | ---------- | ------------ |
| 101         | John Smith    | john\@email.com  | 9095551234 | Residential  |
| 102         | Maria Lopez   | maria\@email.com | NULL       | Commercial   |
| 103         | David Chen    | NULL             | 9095555678 | Residential  |
| 104         | Sarah Johnson | sarah\@email.com | 9095559876 | Commercial   |
| 105         | Robert Kim    | NULL             | NULL       | Residential  |
| 106         | Emily Davis   | emily\@email.com | 9095554321 | Industrial   |
| 107         | James Wilson  | james\@email.com | NULL       | Commercial   |
| 108         | Lisa Brown    | lisa\@email.com  | 9095558765 | Residential  |

## **task**

Write a SQL query that identifies the number of customers with incomplete contact information for each service type.

A customer is considered to have incomplete contact information if either their email or phone number is missing.

## SQL Solution:

```
SELECT
    service_type,
    COUNT(*) AS incomplete_customers
FROM Customers
WHERE email IS NULL
   OR phone IS NULL
GROUP BY service_type
ORDER BY service_type;
```

**Expected result:**

| service_type | incomplete_customers |
| ------------ | -------------------- |
| Commercial   | 2                    |
| Residential  | 2                    |


**Business interpretation**

Four customer records have incomplete contact information:

- 2 Residential customers
- 2 Commercial customers
- 0 Industrial customers

The IT team should flag these records for review before migrating them into Salesforce. Missing contact information could affect customer communication, service notifications, and the accuracy of the new CRM database.



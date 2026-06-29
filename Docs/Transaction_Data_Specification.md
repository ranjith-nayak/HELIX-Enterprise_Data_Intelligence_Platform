# Transaction Data Specification

**Document Version:** 0.1
**Status:** Draft
**Project:** HELIX - Enterprise Data Intelligence Platform
**Document Type:** Transaction Data Specification
**Author:** Ranjith A R
**Last Updated:** 26 June 2026

---

# 1. Introduction

Transaction Data represents day-to-day business activities performed across AstraNova Global.

Unlike Master Data, transactional records are continuously generated as business operations occur.

These transactions become the primary source for analytics, reporting, forecasting, and executive decision-making within HELIX.

---

# 2. Transaction Domains

HELIX captures transactions from the following business domains:

* Sales
* Inventory
* Procurement
* Finance
* Marketing
* Customer Support
* Logistics
* Human Resources

---

# 3. Sales Transactions

Generated whenever a customer purchases one or more products.

Examples:

* Order Created
* Order Updated
* Order Cancelled
* Order Completed

Captured Information:

* Order ID
* Customer ID
* Product ID
* Quantity
* Unit Price
* Discount
* Tax
* Revenue
* Profit
* Order Date

---

# 4. Payment Transactions

Generated whenever a payment is processed.

Captured Information:

* Payment ID
* Order ID
* Payment Method
* Payment Status
* Transaction Amount
* Payment Date

---

# 5. Inventory Transactions

Generated whenever inventory changes.

Examples:

* Stock In
* Stock Out
* Transfer
* Adjustment

Captured Information:

* Product
* Warehouse
* Quantity
* Transaction Type
* Date

---

# 6. Procurement Transactions

Generated when purchasing inventory from suppliers.

Examples:

* Purchase Order
* Goods Received
* Supplier Invoice

Captured Information:

* Purchase Order ID
* Supplier
* Product
* Quantity
* Purchase Cost
* Delivery Date

---

# 7. Shipment Transactions

Generated when customer orders are shipped.

Captured Information:

* Shipment ID
* Warehouse
* Courier
* Shipping Cost
* Delivery Status
* Delivery Date

---

# 8. Return Transactions

Generated whenever customers return products.

Captured Information:

* Return ID
* Product
* Return Reason
* Refund Amount
* Return Status

---

# 9. Customer Support Transactions

Generated when customers contact support.

Captured Information:

* Ticket ID
* Customer
* Product
* Issue Category
* Priority
* Resolution Time
* Satisfaction Rating

---

# 10. Marketing Transactions

Generated during campaign execution.

Captured Information:

* Campaign
* Channel
* Budget
* Impressions
* Clicks
* Conversions
* Revenue Generated

---

# 11. HR Transactions

Generated during workforce activities.

Examples:

* New Hire
* Promotion
* Transfer
* Resignation
* Training

Captured Information:

* Employee
* Department
* Event Type
* Effective Date

---

# 12. Finance Transactions

Generated for financial operations.

Examples:

* Revenue
* Expense
* Refund
* Vendor Payment
* Payroll

Captured Information:

* Transaction ID
* Category
* Amount
* Department
* Transaction Date

---

# 13. Purpose

Transaction Data enables:

* KPI Calculations
* Trend Analysis
* Executive Reporting
* Forecasting
* Machine Learning
* AI Insights
* Operational Monitoring

---

**End of Document**

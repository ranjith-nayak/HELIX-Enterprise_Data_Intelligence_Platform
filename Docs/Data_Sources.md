# Data Sources

**Document Version:** 0.1
**Status:** Draft
**Project:** HELIX - Enterprise Data Intelligence Platform
**Document Type:** Data Source Specification
**Author:** Ranjith A R
**Last Updated:** 26 June 2026

---

# 1. Introduction

HELIX integrates data from multiple enterprise systems across AstraNova Global.

Each source system represents a business function and provides data that is transformed into trusted analytical datasets within the Enterprise Data Warehouse.

---

# 2. Source Systems

| Source System | Department | Data Type | Refresh Frequency |
|--------------|------------|-----------|-------------------|
| ERP | Finance & Operations | Transactions | Daily |
| CRM | Sales | Customers & Orders | Hourly |
| HRMS | Human Resources | Employees | Daily |
| WMS | Warehouses | Inventory | Hourly |
| Procurement System | Purchasing | Suppliers | Daily |
| Marketing Platform | Marketing | Campaigns | Daily |
| Customer Support | Service | Tickets | Hourly |
| Product Catalog | Product Team | Products | Weekly |

---

# 3. Source Files

The following datasets will be used during development.

## Customers

Contains customer master information.

---

## Products

Contains product catalog.

---

## Orders

Contains sales transactions.

---

## Employees

Contains workforce data.

---

## Inventory

Contains warehouse stock.

---

## Suppliers

Contains supplier information.

---

## Procurement

Contains purchase orders.

---

## Shipments

Contains logistics movement.

---

## Marketing

Contains campaign performance.

---

## Finance

Contains accounting transactions.

---

## Support Tickets

Contains customer service requests.

---

# 4. Data Formats

HELIX supports:

- CSV
- Excel
- SQL Database
- REST API
- JSON

---

# 5. Data Refresh Strategy

| Source | Refresh |
|---------|----------|
| CRM | Hourly |
| ERP | Daily |
| HRMS | Daily |
| WMS | Hourly |
| Marketing | Daily |
| Finance | Daily |

---

# 6. Data Quality Expectations

Every source will be validated for:

- Missing values
- Duplicate records
- Invalid data types
- Invalid relationships
- Business rule violations

---

# 7. ETL Ownership

| Stage | Owner |
|--------|-------|
| Extraction | Python |
| Validation | Data Quality Engine |
| Transformation | ETL Pipeline |
| Loading | Warehouse |
| Reporting | Power BI |
| Intelligence | AI Engine |

---

**End of Document**
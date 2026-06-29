# Database Design

**Document Version:** 0.1
**Status:** Draft
**Project:** HELIX - Enterprise Data Intelligence Platform
**Document Type:** Database Design
**Author:** Ranjith A R
**Last Updated:** 26 June 2026

---

# 1. Introduction

The HELIX Enterprise Data Warehouse is designed using a dimensional modeling approach to support enterprise analytics, reporting, and business intelligence.

The warehouse integrates data from multiple operational domains while maintaining scalability, consistency, and analytical performance.

---

# 2. Warehouse Architecture

HELIX follows a layered architecture.

Raw Data Layer

↓

Staging Layer

↓

Transformation Layer

↓

Enterprise Warehouse

↓

Analytics Layer

↓

Power BI Semantic Model

---

# 3. Database Schema

The warehouse consists of four categories of tables:

## Dimension Tables

Stores descriptive business information.

Examples:

- DimCustomer
- DimProduct
- DimEmployee
- DimSupplier
- DimWarehouse
- DimDate
- DimDepartment
- DimCampaign
- DimRegion
- DimChannel
- DimPaymentMethod

---

## Fact Tables

Stores measurable business events.

Examples:

- FactSales
- FactInventory
- FactFinance
- FactMarketing
- FactSupport
- FactHR
- FactShipment
- FactProcurement
- FactReturns

---

## Bridge Tables

Handles many-to-many relationships.

Examples:

- BridgeCustomerProduct
- BridgeEmployeeManager
- BridgeSupplierProduct

---

## Reference Tables

Stores standardized lookup values.

Examples:

- Countries
- Cities
- Currency
- ExchangeRates
- HolidayCalendar

---

# 4. Primary Keys

Every table shall contain:

- Surrogate Primary Key
- Business Key (where applicable)

Example

CustomerKey

CustomerID

---

# 5. Foreign Keys

Fact tables reference dimension tables through surrogate keys.

Example

FactSales

CustomerKey

ProductKey

DateKey

WarehouseKey

EmployeeKey

---

# 6. Data Standards

All tables follow:

- Singular naming
- PascalCase
- Standard prefixes
- Audit columns
- UTC timestamps

---

# 7. Audit Columns

Each warehouse table contains:

CreatedDate

UpdatedDate

SourceSystem

LoadBatchID

IsCurrent

---

# 8. Future Scalability

The design supports:

- Slowly Changing Dimensions
- Incremental Loading
- Historical Tracking
- Multi-region Operations
- Multiple Source Systems

---

**End of Document**
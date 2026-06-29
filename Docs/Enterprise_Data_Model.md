# Enterprise Data Model

**Document Version:** 0.1  
**Status:** Draft  
**Project:** HELIX - Enterprise Data Intelligence Platform  
**Document Type:** Enterprise Data Model  
**Author:** Ranjith A R  
**Last Updated:** 26 June 2026

---

# 1. Introduction

The Enterprise Data Model defines the core business entities managed by AstraNova Global.

These entities represent real-world business objects and establish the foundation for database design, dimensional modeling, ETL development, analytics, and business intelligence.

---

# 2. Business Domains

HELIX organizes enterprise data into the following business domains:

- Sales
- Customers
- Products
- Inventory
- Warehouses
- Suppliers
- Procurement
- Employees
- Finance
- Marketing
- Customer Support
- Geography
- Time

---

# 3. Core Business Entities

## Customer

Represents individuals or organizations purchasing AstraNova products.

Key Information

- Customer ID
- Customer Name
- Segment
- Email
- Phone
- Country
- City
- Registration Date

---

## Product

Represents every product sold by AstraNova.

Key Information

- Product ID
- Product Name
- Category
- Brand
- Launch Date
- Standard Cost
- Selling Price

---

## Sales Order

Represents completed customer purchases.

Key Information

- Order ID
- Order Date
- Customer
- Product
- Quantity
- Revenue
- Discount
- Profit

---

## Employee

Represents employees across all departments.

Key Information

- Employee ID
- Name
- Department
- Manager
- Salary
- Joining Date
- Employment Status

---

## Supplier

Represents vendors supplying products and materials.

Key Information

- Supplier ID
- Supplier Name
- Country
- Rating
- Lead Time

---

## Warehouse

Represents inventory storage locations.

Key Information

- Warehouse ID
- Warehouse Name
- Region
- Capacity
- Manager

---

## Inventory

Represents current stock levels.

Key Information

- Product
- Warehouse
- Quantity
- Reorder Level
- Safety Stock
- Last Updated

---

## Marketing Campaign

Represents promotional campaigns.

Key Information

- Campaign ID
- Campaign Name
- Budget
- Channel
- Start Date
- End Date

---

## Support Ticket

Represents customer support interactions.

Key Information

- Ticket ID
- Customer
- Product
- Priority
- Status
- Resolution Time

---

## Finance Transaction

Represents financial activity.

Key Information

- Transaction ID
- Department
- Category
- Amount
- Date
- Transaction Type

---

# 4. Supporting Dimensions

The following shared dimensions will be reused throughout HELIX.

- Date
- Geography
- Department
- Product Category
- Customer Segment
- Sales Channel
- Payment Method

---

# 5. Data Relationships

Examples of business relationships include:

- One Customer can place many Sales Orders.
- One Product can appear in many Orders.
- One Warehouse stores many Products.
- One Supplier supplies many Products.
- One Employee belongs to one Department.
- One Marketing Campaign influences many Orders.
- One Customer may raise multiple Support Tickets.

---

# 6. Purpose

This enterprise model serves as the blueprint for:

- Database Design
- Entity Relationship Diagram (ERD)
- Star Schema Design
- ETL Pipelines
- Power BI Data Model
- KPI Calculations
- AI Intelligence Engine

---

**End of Document**
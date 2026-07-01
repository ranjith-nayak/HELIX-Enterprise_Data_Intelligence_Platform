USE AstraNova_OLTP;

-- ============================================
-- TOTAL REVENUE
-- ============================================

SELECT
    ROUND(
        SUM(
            Quantity *
            UnitPrice *
            (1 - DiscountPercent / 100)
        ),
        2
    ) AS TotalRevenue
FROM Orders;

-- ============================================
-- TOTAL ORDERS
-- ============================================

SELECT
    COUNT(*) AS TotalOrders
FROM Orders;

-- ============================================
-- UNIQUE CUSTOMERS
-- ============================================

SELECT
    COUNT(DISTINCT CustomerID)
    AS TotalCustomers
FROM Orders;


-- ============================================
-- AVERAGE ORDER VALUE
-- ============================================

SELECT
ROUND(
AVG(
Quantity *
UnitPrice *
(1-DiscountPercent/100)
),
2
)
AS AverageOrderValue
FROM Orders;


-- ============================================
-- INVENTORY VALUE
-- ============================================

SELECT
ROUND(
SUM(
QuantityInStock *
UnitCost
),
2
)
AS InventoryValue
FROM Inventory;
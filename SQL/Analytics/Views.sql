USE AstraNova_OLTP;

CREATE OR REPLACE VIEW vw_OrderDetails AS

SELECT

o.OrderID,

o.OrderDate,

o.DeliveryDate,

o.OrderStatus,

c.CustomerID,

CONCAT(
c.FirstName,
' ',
c.LastName
)
AS CustomerName,

p.ProductID,

p.ProductName,

p.Brand,

p.CategoryID,

o.Quantity,

o.UnitPrice,

o.DiscountPercent,

ROUND(

o.Quantity *

o.UnitPrice *

(1-o.DiscountPercent/100),

2

)

AS Revenue

FROM Orders o

JOIN Customer c

ON o.CustomerID=c.CustomerID

JOIN Product p

ON o.ProductID=p.ProductID;

SELECT *
FROM vw_OrderDetails
LIMIT 10;




CREATE OR REPLACE VIEW vw_InventoryDetails AS

SELECT

i.InventoryID,

p.ProductName,

p.Brand,

s.SupplierName,

i.QuantityInStock,

i.ReorderPoint,

i.MaximumStockLevel,

i.UnitCost,

ROUND(

i.QuantityInStock *

i.UnitCost,

2

)

AS InventoryValue,

i.Status

FROM Inventory i

JOIN Product p

ON i.ProductID=p.ProductID

JOIN Supplier s

ON i.SupplierID=s.SupplierID;

SELECT *
FROM vw_InventoryDetails
LIMIT 10;
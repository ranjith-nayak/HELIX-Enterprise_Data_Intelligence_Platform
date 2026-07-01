USE AstraNova_OLTP;

DROP TABLE IF EXISTS FactSales;

CREATE TABLE FactSales AS

SELECT

OrderID,

CustomerID,

ProductID,

Quantity,

UnitPrice,

DiscountPercent,

OrderDate,

DeliveryDate,

OrderStatus,

ROUND(

Quantity *

UnitPrice *

(1-DiscountPercent/100),

2

)

AS Revenue

FROM Orders;

DESCRIBE Inventory;
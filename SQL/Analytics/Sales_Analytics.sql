USE AstraNova_OLTP;

SELECT

DATE_FORMAT(OrderDate,'%Y-%m') AS Month,

ROUND(
SUM(
Quantity *
UnitPrice *
(1-DiscountPercent/100)
),
2
)
AS Revenue

FROM Orders

GROUP BY Month

ORDER BY Month;



SELECT

DATE_FORMAT(OrderDate,'%Y-%m') AS Month,

COUNT(*) AS TotalOrders

FROM Orders

GROUP BY Month

ORDER BY Month;



SELECT

p.ProductName,

ROUND(
SUM(
o.Quantity *
o.UnitPrice *
(1-o.DiscountPercent/100)
),
2
)
AS Revenue

FROM Orders o

JOIN Product p

ON o.ProductID=p.ProductID

GROUP BY p.ProductName

ORDER BY Revenue DESC;



SELECT

p.ProductName,

SUM(o.Quantity) AS UnitsSold

FROM Orders o

JOIN Product p

ON o.ProductID=p.ProductID

GROUP BY p.ProductName

ORDER BY UnitsSold DESC

LIMIT 10;



SELECT

p.Brand,

ROUND(
SUM(
o.Quantity *
o.UnitPrice *
(1-o.DiscountPercent/100)
),
2
)
AS Revenue

FROM Orders o

JOIN Product p

ON o.ProductID=p.ProductID

GROUP BY p.Brand

ORDER BY Revenue DESC;



SELECT

p.CategoryID,

ROUND(
SUM(
o.Quantity *
o.UnitPrice *
(1-o.DiscountPercent/100)
),
2
)
AS Revenue

FROM Orders o

JOIN Product p

ON o.ProductID=p.ProductID

GROUP BY p.CategoryID

ORDER BY Revenue DESC;



SELECT

ROUND(
AVG(DiscountPercent),
2
)
AS AverageDiscount

FROM Orders;



SELECT

OrderStatus,

COUNT(*) AS Orders

FROM Orders

GROUP BY OrderStatus;



SELECT

ROUND(
AVG(
DATEDIFF(
DeliveryDate,
OrderDate
)
),
2
)
AS AvgDeliveryDays

FROM Orders

WHERE DeliveryDate IS NOT NULL;



SELECT

OrderDate,

ROUND(
SUM(
Quantity *
UnitPrice *
(1-DiscountPercent/100)
),
2
)
AS Revenue

FROM Orders

GROUP BY OrderDate

ORDER BY OrderDate;
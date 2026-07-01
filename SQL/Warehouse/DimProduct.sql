USE AstraNova_OLTP;

DROP TABLE IF EXISTS DimProduct;

CREATE TABLE DimProduct AS

SELECT

ProductID,

ProductName,

Brand,

CategoryID,

SellingPrice,

CostPrice,

ProductStatus

FROM Product;
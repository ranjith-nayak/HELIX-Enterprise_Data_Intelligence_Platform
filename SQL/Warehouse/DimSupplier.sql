USE AstraNova_OLTP;

DROP TABLE IF EXISTS DimSupplier;

CREATE TABLE DimSupplier AS

SELECT

SupplierID,

SupplierName,

City,

State,

Country,

SupplierRating,

LeadTimeDays

FROM Supplier;
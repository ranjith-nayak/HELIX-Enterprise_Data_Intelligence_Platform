USE AstraNova_OLTP;

DROP TABLE IF EXISTS DimCustomer;

CREATE TABLE DimCustomer AS

SELECT

CustomerID,

FirstName,

LastName,

Gender,

SegmentID,

RegistrationDate,

Status

FROM Customer;
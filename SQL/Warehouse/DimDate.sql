USE AstraNova_OLTP;

DROP TABLE IF EXISTS DimDate;

CREATE TABLE DimDate
(
    DateKey INT PRIMARY KEY,

    FullDate DATE,

    DayNumber INT,

    DayName VARCHAR(20),

    MonthNumber INT,

    MonthName VARCHAR(20),

    QuarterNumber INT,

    YearNumber INT,

    WeekNumber INT
);

SELECT *

FROM DimDate

LIMIT 10;

DELETE FROM DimDate;

COMMIT;
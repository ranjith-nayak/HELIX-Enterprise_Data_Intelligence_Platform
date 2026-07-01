USE AstraNova_OLTP;

SELECT *
FROM CustomerSegment;

SELECT COUNT(*) AS TotalSegments
FROM CustomerSegment;

SELECT *
FROM CustomerSegment
WHERE IsActive = TRUE;
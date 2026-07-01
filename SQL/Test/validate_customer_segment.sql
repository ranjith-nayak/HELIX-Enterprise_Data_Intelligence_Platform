USE AstraNova_OLTP;

-- Total Records
SELECT COUNT(*) AS TotalSegments
FROM CustomerSegment;

-- Check for Duplicate Segment Names
SELECT SegmentName, COUNT(*) AS Occurrences
FROM CustomerSegment
GROUP BY SegmentName
HAVING COUNT(*) > 1;

-- Check Active Segments
SELECT *
FROM CustomerSegment
WHERE IsActive = TRUE;

-- Verify Lifetime Value Ranges
SELECT *
FROM CustomerSegment
WHERE MinLifetimeValue IS NOT NULL
  AND MaxLifetimeValue IS NOT NULL
  AND MinLifetimeValue > MaxLifetimeValue;
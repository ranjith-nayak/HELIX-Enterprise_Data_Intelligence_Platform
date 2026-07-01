/*
===============================================================================
Script Name : 07_test_customer.sql
Project     : HELIX - Enterprise Data Intelligence Platform
Database    : AstraNova_OLTP
Module      : Customer Domain
Purpose     : Test Customer table with sample records.
Author      : Ranjith A R
===============================================================================
*/

USE AstraNova_OLTP;

-- ============================================================================
-- Test Record 1
-- ============================================================================

INSERT INTO Customer
(
    CustomerID,
    SegmentID,
    FirstName,
    LastName,
    Email,
    Phone,
    DateOfBirth,
    Gender,
    RegistrationDate,
    Status
)
VALUES
(
    'CUS000001',
    'SEG001',
    'Rahul',
    'Sharma',
    'rahul.sharma@astranova.com',
    '9876543210',
    '1998-05-15',
    'Male',
    '2026-06-27',
    'Prospect'
);

-- ============================================================================
-- Verify Data
-- ============================================================================

SELECT *
FROM Customer;

-- ============================================================================
-- Record Count
-- ============================================================================

SELECT COUNT(*) AS TotalCustomers
FROM Customer;

SELECT * FROM Customer;
SELECT * FROM CustomerSegment;

USE AstraNova_OLTP;

INSERT INTO Customer
(
    CustomerID,
    SegmentID,
    FirstName,
    LastName,
    Email,
    Phone,
    DateOfBirth,
    Gender,
    RegistrationDate,
    Status
)
VALUES
(
    'CUS000001',
    'SEG001',
    'Rahul',
    'Sharma',
    'rahul.sharma@astranova.com',
    '9876543210',
    '1998-05-15',
    'Male',
    '2026-06-27',
    'Prospect'
);

SELECT *
FROM Customer;
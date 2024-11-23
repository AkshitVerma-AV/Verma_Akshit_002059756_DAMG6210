​​-- Additions to the Tourism Management System (SQL Server)

USE STMS
GO

-- 1. Stored Procedures

-- Insert new tourist

CREATE PROCEDURE AddTourist
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Nationality NVARCHAR(50),
    @DateOfBirth DATE,
    @Email NVARCHAR(100),
    @PreferredLanguage NVARCHAR(50),
    @SustainabilityPreference NVARCHAR(100),
    @CarbonOffsetParticipation BIT
AS
BEGIN
    INSERT INTO Tourist (FirstName, LastName, Nationality, DateOfBirth, Email, PreferredLanguage, SustainabilityPreference, CarbonOffsetParticipation)
    VALUES (@FirstName, @LastName, @Nationality, @DateOfBirth, @Email, @PreferredLanguage, @SustainabilityPreference, @CarbonOffsetParticipation);
END;

EXEC AddTourist 
    @FirstName = 'Chris',
    @LastName = 'Paul',
    @Nationality = 'American',
    @DateOfBirth = '1990-05-15',
    @Email = 'chris.paul@example.com',
    @PreferredLanguage = 'English',
    @SustainabilityPreference = 'Eco-friendly accommodations',
    @CarbonOffsetParticipation = 1; -- 1 for TRUE, 0 for FALSE

SELECT * 
FROM Tourist
WHERE Email = 'chris.paul@example.com';


-- Update accommodation sustainability rating

CREATE PROCEDURE UpdateAccommodationRating
    @AccommodationID INT,
    @NewRating DECIMAL(5, 2)
AS
BEGIN
    UPDATE Accommodation
    SET SustainabilityRating = @NewRating
    WHERE AccommodationID = @AccommodationID;
END;

EXEC UpdateAccommodationRating 
    @AccommodationID = 6, -- Replace with the actual AccommodationID
    @NewRating = 87.50; -- Replace with the desired new sustainability rating

SELECT * FROM Accommodation WHERE AccommodationID = 5;

-- Fetch destinations by sustainability score

CREATE PROCEDURE GetDestinationsBySustainability
    @MinScore DECIMAL(5, 2)
AS
BEGIN
    SELECT *
    FROM Destination
    WHERE SustainabilityScore >= @MinScore;
END;
EXEC GetDestinationsBySustainability 
    @MinScore = 80.00; -- Replace with the desired minimum sustainability score

SELECT *
FROM Destination
WHERE SustainabilityScore >= 80.00;

-- Procedure to retrieve attractions by type

CREATE PROCEDURE GetAttractionsByType
    @AttractionType NVARCHAR(50)
AS
BEGIN
    SELECT AttractionName, DestinationID, Capacity, AccessibilityFeatures
    FROM Attraction
    WHERE AttType = @AttractionType;
END;

EXEC GetAttractionsByType @AttractionType = 'Historical Site';

SELECT AttractionName, DestinationID, Capacity, AccessibilityFeatures
FROM Attraction
WHERE AttType = 'Historical Site';

-- Procedure to add a new tour operator

CREATE PROCEDURE AddTourOperator
    @OperatorName NVARCHAR(100),
    @Headquarters NVARCHAR(100),
    @SustainabilityCertification NVARCHAR(100),
    @LocalPartnershipPercentage DECIMAL(5, 2),
    @CarbonOffsetProgram NVARCHAR(100),
    @SustainablePackagesOffered INT
AS
BEGIN
    -- Insert a new record into the Tour_Operator table
    INSERT INTO Tour_Operator (
        OperatorName, 
        Headquarters, 
        SustainabilityCertification, 
        LocalPartnershipPercentage, 
        CarbonOffsetProgram, 
        SustainablePackagesOffered
    )
    VALUES (
        @OperatorName, 
        @Headquarters, 
        @SustainabilityCertification, 
        @LocalPartnershipPercentage, 
        @CarbonOffsetProgram, 
        @SustainablePackagesOffered
    );
END;

EXEC AddTourOperator 
    @OperatorName = 'Eco Adventures',
    @Headquarters = 'Sydney, Australia',
    @SustainabilityCertification = 'EarthCheck',
    @LocalPartnershipPercentage = 80.5,
    @CarbonOffsetProgram = 'Carbon Fund',
    @SustainablePackagesOffered = 25;

SELECT * 
FROM Tour_Operator
WHERE CarbonOffsetProgram = 'Carbon Fund';

-- Drop procedure queries

-- Drop procedure for adding a new tourist
DROP PROCEDURE IF EXISTS AddTourist;

-- Drop procedure for updating accommodation sustainability rating
DROP PROCEDURE IF EXISTS UpdateAccommodationRating;

-- Drop procedure for fetching destinations by sustainability score
DROP PROCEDURE IF EXISTS GetDestinationsBySustainability;

-- Drop procedure for retrieving attractions by type
DROP PROCEDURE IF EXISTS GetAttractionsByType;

-- Drop procedure for adding a new tour operator
DROP PROCEDURE IF EXISTS AddTourOperator;



-- Views

-- High sustainability destinations
CREATE VIEW HighSustainabilityDestinations AS
SELECT DestinationName, Country, Region, SustainabilityScore
FROM Destination
WHERE SustainabilityScore > 80;

SELECT *
FROM HighSustainabilityDestinations;

-- Revenue analytics
CREATE VIEW RevenueAnalytics AS
SELECT DestinationName, SUM(TourismRevenue) AS TotalRevenue
FROM Destination
JOIN Economic_Impact ON Destination.DestinationID = Economic_Impact.DestinationID
GROUP BY DestinationName;

SELECT * 
FROM RevenueAnalytics
WHERE DestinationName = 'Mount Fuji';

SELECT * 
FROM RevenueAnalytics
ORDER BY TotalRevenue DESC;

-- Visitor Capacity Analysis

CREATE VIEW v_VisitorCapacityAnalysis AS
SELECT 
    DestinationName,
    Country,
    AverageAnnualVisitors,
    CarryingCapacity,
    CASE 
        WHEN AverageAnnualVisitors <= CarryingCapacity THEN 'Within Capacity'
        ELSE 'Over Capacity'
    END AS CapacityStatus
FROM Destination;

SELECT *
FROM v_VisitorCapacityAnalysis
ORDER BY CapacityStatus, DestinationName;

-- Accomodation Efficiency Analysis

CREATE VIEW v_AccommodationEfficiencyAnalysis AS
SELECT 
    AccommodationName,
    DestinationName,
    SustainabilityRating,
    EnergyEfficiencyScore,
    WaterConservationScore,
    WasteManagementScore,
    CAST(ROUND((EnergyEfficiencyScore + WaterConservationScore + WasteManagementScore) / 3.0, 2) AS DECIMAL(10, 2)) AS AverageEfficiencyScore
FROM 
    Accommodation A
JOIN 
    Destination D ON A.DestinationID = D.DestinationID
WHERE 
    SustainabilityRating IS NOT NULL;


SELECT * 
FROM v_AccommodationEfficiencyAnalysis
WHERE AverageEfficiencyScore > 80;

-- Regional Visitor Stats

CREATE VIEW v_RegionalVisitorStats AS
SELECT 
    Region,
    Climate,
    COUNT(DestinationID) AS TotalDestinations,
    SUM(AverageAnnualVisitors) AS TotalVisitors,
    ROUND(CAST(AVG(CAST(SustainabilityScore AS FLOAT)) AS DECIMAL(10, 2)), 2) AS AverageSustainabilityScore
FROM 
    Destination
GROUP BY 
    Region, Climate;


SELECT * 
FROM v_RegionalVisitorStats;

-- Drop view queries

-- Drop view for High Sustainability Destinations
DROP VIEW IF EXISTS HighSustainabilityDestinations;

-- Drop view for Revenue Analytics
DROP VIEW IF EXISTS RevenueAnalytics;

-- Drop view for Visitor Capacity Analysis
DROP VIEW IF EXISTS v_VisitorCapacityAnalysis;

-- Drop view for Accommodation Efficiency Analysis
DROP VIEW IF EXISTS v_AccommodationEfficiencyAnalysis;

-- Drop view for Regional Visitor Stats
DROP VIEW IF EXISTS v_RegionalVisitorStats;


-- User Defined Functions

-- Calculate Average Visitor Capacity

CREATE FUNCTION AvgVisitorCapacity()
RETURNS DECIMAL(10, 2)
AS
BEGIN
    RETURN (
        SELECT AVG(CarryingCapacity)
        FROM Destination
    );
END;

SELECT dbo.AvgVisitorCapacity() AS AverageVisitorCapacity;

-- Calculate Sustainability Score Ratio

CREATE FUNCTION SustainabilityScoreRatio(@Score DECIMAL(5, 2))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN (
        CASE
            WHEN @Score >= 90 THEN 'Excellent'
            WHEN @Score >= 70 THEN 'Good'
            ELSE 'Average'
        END
    );
END;

SELECT 
    DestinationName,
    SustainabilityScore,
    dbo.SustainabilityScoreRatio(SustainabilityScore) AS SustainabilityRating
FROM 
    Destination;


-- Get total tourists for a destination

CREATE FUNCTION TotalTourists(@DestinationID INT)
RETURNS INT
AS
BEGIN
    RETURN (
        SELECT COUNT(*)
        FROM Visits
        WHERE DestinationID = @DestinationID
    );
END;

SELECT 
    D.DestinationName,
    dbo.TotalTourists(D.DestinationID) AS TotalTourists
FROM 
    Destination D;


-- Get Destination Sustainability Category

CREATE FUNCTION fn_GetDestinationSustainabilityCategory (@SustainabilityScore DECIMAL(5, 2))
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @Category NVARCHAR(50);

    IF @SustainabilityScore >= 80
        SET @Category = 'High';
    ELSE 
        IF @SustainabilityScore >= 50
            SET @Category = 'Medium';
        ELSE
            SET @Category = 'Low';

    RETURN @Category;
END;


SELECT 
    DestinationName,
    Country,
    dbo.fn_GetDestinationSustainabilityCategory(SustainabilityScore) AS SustainabilityCategory
FROM 
    Destination;

-- Calculate Average Efficiency Score

CREATE FUNCTION fn_CalculateAverageEfficiencyScore ()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        AccommodationID,
        AccommodationName,
        DestinationID,
        CAST((EnergyEfficiencyScore + WaterConservationScore + WasteManagementScore) / 3.0 AS DECIMAL(10, 2)) AS AverageEfficiencyScore
    FROM 
        Accommodation
    WHERE 
        EnergyEfficiencyScore IS NOT NULL AND 
        WaterConservationScore IS NOT NULL AND 
        WasteManagementScore IS NOT NULL
);


SELECT * 
FROM dbo.fn_CalculateAverageEfficiencyScore();

-- Drop UDF queries

-- Drop function for calculating average visitor capacity
DROP FUNCTION IF EXISTS AvgVisitorCapacity;

-- Drop function for calculating sustainability score ratio
DROP FUNCTION IF EXISTS SustainabilityScoreRatio;

-- Drop function for getting total tourists for a destination
DROP FUNCTION IF EXISTS TotalTourists;

-- Drop function for getting destination sustainability category
DROP FUNCTION IF EXISTS fn_GetDestinationSustainabilityCategory;

-- Drop function for calculating average efficiency score
DROP FUNCTION IF EXISTS fn_CalculateAverageEfficiencyScore;


-- Trigger

--Prevent Overcapacity Visitors
CREATE TRIGGER trg_PreventOverCapacity
ON Destination
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE AverageAnnualVisitors > CarryingCapacity
    )
    BEGIN
        ROLLBACK TRANSACTION;
        THROW 50001, 'Visitor count exceeds carrying capacity!', 1;
    END
END;

-- Trigger Validation on Insert query 

INSERT INTO Destination (DestinationName, Country, Region, AverageAnnualVisitors, CarryingCapacity, SustainabilityScore)
VALUES ('Test Destination', 'Test Country', 'Test Region', 1000001, 1000000, 85.50);

-- Trigger Validation on Update query

UPDATE Destination
SET AverageAnnualVisitors = 5000000
WHERE DestinationID = 1; -- Assuming DestinationID = 1 is a valid record and its CarryingCapacity is less than 5000000


-- Auto-Update Accommodation Efficiency Ratings

CREATE TRIGGER trg_UpdateSustainabilityRating
ON Accommodation
AFTER UPDATE
AS
BEGIN
    UPDATE A
    SET SustainabilityRating = E.AverageEfficiencyScore
    FROM Accommodation A
    CROSS APPLY dbo.fn_CalculateAverageEfficiencyScore() E
    WHERE A.AccommodationID = E.AccommodationID;
END;

-- Trigger validation for Update query:

UPDATE Accommodation
SET 
    EnergyEfficiencyScore = 87.00, 
    WaterConservationScore = 90.00, 
    WasteManagementScore = 80.00
WHERE AccommodationID = 1; -- Assuming AccommodationID = 1 exists.


SELECT 
    AccommodationID,
    AccommodationName,
    EnergyEfficiencyScore,
    WaterConservationScore,
    WasteManagementScore,
    SustainabilityRating
FROM Accommodation
WHERE AccommodationID = 1;

-- Drop Trigger Queries:

-- Drop trigger for preventing overcapacity visitors
DROP TRIGGER IF EXISTS trg_PreventOverCapacity;

-- Drop trigger for auto-updating accommodation efficiency ratings
DROP TRIGGER IF EXISTS trg_UpdateSustainabilityRating;





















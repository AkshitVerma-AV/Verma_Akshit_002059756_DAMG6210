
DROP DATABASE STMS
GO


-- DDL Script


CREATE DATABASE STMS;
GO


USE STMS


-- 1. Destination Table
CREATE TABLE Destination (
   DestinationID INT PRIMARY KEY IDENTITY,
   DestinationName NVARCHAR(100) NOT NULL,
   Country NVARCHAR(50),
   Region NVARCHAR(50),
   Climate NVARCHAR(50),
   PeakSeason NVARCHAR(50),
   OffSeason NVARCHAR(50),
   AverageAnnualVisitors INT,
   SustainabilityScore DECIMAL(5, 2),
   CarryingCapacity INT,
   CONSTRAINT CHK_SustainabilityScore CHECK (SustainabilityScore >= 0 AND SustainabilityScore <= 100)
);


-- 2. Accommodation Table
CREATE TABLE Accommodation (
   AccommodationID INT PRIMARY KEY IDENTITY,
   DestinationID INT FOREIGN KEY REFERENCES Destination(DestinationID),
   AccommodationName NVARCHAR(100) NOT NULL,
   AccType NVARCHAR(50),
   Capacity INT,
   SustainabilityRating DECIMAL(5, 2),
   EnergyEfficiencyScore DECIMAL(5, 2),
   WaterConservationScore DECIMAL(5, 2),
   WasteManagementScore DECIMAL(5, 2),
   LocalEmploymentPercentage DECIMAL(5, 2),
   CONSTRAINT CHK_Scores CHECK (EnergyEfficiencyScore >= 0 AND EnergyEfficiencyScore <= 100
                                AND WaterConservationScore >= 0 AND WaterConservationScore <= 100
                                AND WasteManagementScore >= 0 AND WasteManagementScore <= 100)
);


-- 3. Tourist Table
CREATE TABLE Tourist (
   TouristID INT PRIMARY KEY IDENTITY,
   FirstName NVARCHAR(50),
   LastName NVARCHAR(50),
   Nationality NVARCHAR(50),
   DateOfBirth DATE,
   Email NVARCHAR(100),
   PreferredLanguage NVARCHAR(50),
   SustainabilityPreference NVARCHAR(100),
   CarbonOffsetParticipation BIT
);


-- 4. Tour_Operator Table
CREATE TABLE Tour_Operator (
   OperatorID INT PRIMARY KEY IDENTITY,
   OperatorName NVARCHAR(100) NOT NULL,
   Headquarters NVARCHAR(100),
   SustainabilityCertification NVARCHAR(100),
   LocalPartnershipPercentage DECIMAL(5, 2),
   CarbonOffsetProgram NVARCHAR(100),
   SustainablePackagesOffered INT
);


-- 5. Attraction Table
CREATE TABLE Attraction (
   AttractionID INT PRIMARY KEY IDENTITY,
   DestinationID INT FOREIGN KEY REFERENCES Destination(DestinationID),
   AttractionName NVARCHAR(100) NOT NULL,
   AttType NVARCHAR(50),
   Capacity INT,
   AverageVisitDuration DECIMAL(5, 2),
   PeakHours NVARCHAR(50),
   SustainabilityMeasures NVARCHAR(200),
   AccessibilityFeatures BIT
);


-- 6. Transportation_Provider Table
CREATE TABLE Transportation_Provider (
   ProviderID INT PRIMARY KEY IDENTITY,
   ProviderName NVARCHAR(100) NOT NULL,
   TpType NVARCHAR(50),
   TP_SustainabilityScore DECIMAL(5, 2),
   EmissionsPerPassengerKm DECIMAL(5, 2),
   RenewableEnergyPercentage DECIMAL(5, 2),
   TP_AccessibilityFeatures BIT
);


-- 7. Local_Business Table
CREATE TABLE Local_Business (
   BusinessID INT PRIMARY KEY IDENTITY,
   DestinationID INT FOREIGN KEY REFERENCES Destination(DestinationID),
   BusinessName NVARCHAR(100) NOT NULL,
   LcoBType NVARCHAR(50),
   OwnershipType NVARCHAR(50),
   EmployeeCount INT,
   SustainabilityPractices NVARCHAR(200),
   LocalSourcedProductPercentage DECIMAL(5, 2)
);


-- 8. Sustainability_Certification Table
CREATE TABLE Sustainability_Certification (
   CertificationID INT PRIMARY KEY IDENTITY,
   CertificateName NVARCHAR(100),
   IssuingBody NVARCHAR(100),
   ValidityPeriod DATE,
   CriteriaDescription NVARCHAR(200),
   AuditFrequency NVARCHAR(50)
);


-- 9. Environmental_Impact Table
CREATE TABLE Environmental_Impact (
   EVTImpactID INT PRIMARY KEY IDENTITY,
   AccommodationID INT FOREIGN KEY REFERENCES Accommodation(AccommodationID),
   EnvImp_Date DATE,
   CarbonEmissions DECIMAL(10, 2),
   WaterConsumption DECIMAL(10, 2),
   WasteGenerated DECIMAL(10, 2),
   RecyclingRate DECIMAL(5, 2),
   BiodiversityIndex DECIMAL(5, 2)
);


-- 10. Economic_Impact Table
CREATE TABLE Economic_Impact (
   ECOImpactID INT PRIMARY KEY IDENTITY,
   DestinationID INT FOREIGN KEY REFERENCES Destination(DestinationID),
   EcoImp_Year INT,
   TourismRevenue DECIMAL(15, 2),
   LocalEmploymentRate DECIMAL(5, 2),
   AverageWageInTourism DECIMAL(10, 2),
   LocalBusinessGrowthRate DECIMAL(5, 2),
   EconomicLeakagePercentage DECIMAL(5, 2)
);


-- 11. Cultural_Heritage_Site Table
CREATE TABLE Cultural_Heritage_Site (
   SiteID INT PRIMARY KEY IDENTITY,
   AttractionID INT UNIQUE FOREIGN KEY REFERENCES Attraction(AttractionID),
   SiteName NVARCHAR(100) NOT NULL,
   SiteType NVARCHAR(50),
   YearEstablished INT,
   ProtectionStatus NVARCHAR(50),
   CulturalSignificance NVARCHAR(200)
);


-- 12. Visitor_Review Table
CREATE TABLE Visitor_Review (
   ReviewID INT PRIMARY KEY IDENTITY,
   TouristID INT FOREIGN KEY REFERENCES Tourist(TouristID),
   EntityReviewed NVARCHAR(100),
   Rating INT CHECK (Rating BETWEEN 1 AND 5),
   Comment NVARCHAR(500),
   SustainabilityFeedback NVARCHAR(200),
   DatePosted DATE
);


-- 13. Sustainability_Metric Table
CREATE TABLE Sustainability_Metric (
   MetricID INT PRIMARY KEY IDENTITY,
   MetricName NVARCHAR(100),
   SusMet_Description NVARCHAR(200),
   Unit NVARCHAR(50),
   BenchmarkValue DECIMAL(10, 2),
   DataCollectionMethod NVARCHAR(100),
   FrequencyOfMeasurement NVARCHAR(50)
);


-- 14. Educational_Content Table
CREATE TABLE Educational_Content (
   ContentID INT PRIMARY KEY IDENTITY,
   Title NVARCHAR(100),
   EduType NVARCHAR(50),
   Topic NVARCHAR(100),
   Edu_Language NVARCHAR(50),
   TargetAudience NVARCHAR(50),
   EngagementRate DECIMAL(5, 2),
   LastUpdated DATE
);


-- 15. Carrying_Capacity_Alert Table
CREATE TABLE Carrying_Capacity_Alert (
   AlertID INT PRIMARY KEY IDENTITY,
   DestinationID INT FOREIGN KEY REFERENCES Destination(DestinationID),
   CCA_Date DATE,
   CurrentVisitorCount INT,
   ThresholdPercentage DECIMAL(5, 2),
   AlertLevel NVARCHAR(50),
   RecommendedActions NVARCHAR(200)
);






-- Associative entities


-- 1. Visits Table
CREATE TABLE Visits (
   TouristID INT FOREIGN KEY REFERENCES Tourist(TouristID),
   DestinationID INT FOREIGN KEY REFERENCES Destination(DestinationID),
   Visit_Timestamp DATETIME,
   PRIMARY KEY (TouristID, DestinationID)
);


-- 2. Stays_At Table
CREATE TABLE Stays_At (
   TouristID INT FOREIGN KEY REFERENCES Tourist(TouristID),
   AccommodationID INT FOREIGN KEY REFERENCES Accommodation(AccommodationID),
   Stay_Period NVARCHAR(50),
   PRIMARY KEY (TouristID, AccommodationID)
);


-- 3. Uses Table
CREATE TABLE Uses (
   TouristID INT FOREIGN KEY REFERENCES Tourist(TouristID),
   ProviderID INT FOREIGN KEY REFERENCES Transportation_Provider(ProviderID),
   Transportation_Duration INT,
   PRIMARY KEY (TouristID, ProviderID),
   CONSTRAINT CHK_Transportation_Duration CHECK (Transportation_Duration > 0)
);


-- 4. Engages_With Table
CREATE TABLE Engages_With (
   TouristID INT FOREIGN KEY REFERENCES Tourist(TouristID),
   ContentID INT FOREIGN KEY REFERENCES Educational_Content(ContentID),
   Education_Domain NVARCHAR(100),
   PRIMARY KEY (TouristID, ContentID)
);


-- 5. Organizes Table
CREATE TABLE Organizes (
   OperatorID INT FOREIGN KEY REFERENCES Tour_Operator(OperatorID),
   DestinationID INT FOREIGN KEY REFERENCES Destination(DestinationID),
   Number_of_Tourists INT,
   PRIMARY KEY (OperatorID, DestinationID),
   CONSTRAINT CHK_Number_of_Tourists CHECK (Number_of_Tourists > 0)
);


-- 6. Partners_With Table
CREATE TABLE Partners_With (
   OperatorID INT FOREIGN KEY REFERENCES Tour_Operator(OperatorID),
   AccommodationID INT FOREIGN KEY REFERENCES Accommodation(AccommodationID),
   Partnership_StartDate DATE,
   Partnership_EndDate DATE,
   PRIMARY KEY (OperatorID, AccommodationID),
   CONSTRAINT CHK_Partnership_Dates CHECK (Partnership_EndDate IS NULL OR Partnership_EndDate >= Partnership_StartDate)
);


-- 7. Collaborates_With Table
CREATE TABLE Collaborates_With (
   OperatorID INT FOREIGN KEY REFERENCES Tour_Operator(OperatorID),
   ProviderID INT FOREIGN KEY REFERENCES Transportation_Provider(ProviderID),
   Collaboration_StartDate DATE,
   Collaboration_EndDate DATE,
   PRIMARY KEY (OperatorID, ProviderID)
);


-- 8. Visits_Attraction Table
CREATE TABLE Visits_Attraction (
   TouristID INT FOREIGN KEY REFERENCES Tourist(TouristID),
   AttractionID INT FOREIGN KEY REFERENCES Attraction(AttractionID),
   Days_of_Visit NVARCHAR(50),
   PRIMARY KEY (TouristID, AttractionID)
);


-- 9. Business_Impact Table
CREATE TABLE Business_Impact (
   BusinessID INT FOREIGN KEY REFERENCES Local_Business(BusinessID),
   ImpactID INT FOREIGN KEY REFERENCES Economic_Impact(ECOImpactID),
   Revenue_Generated DECIMAL(15, 2),
   PRIMARY KEY (BusinessID, ImpactID)
);


-- 10. Economic_Metric Table
CREATE TABLE Economic_Metric (
   Eco_ImpactID INT FOREIGN KEY REFERENCES Economic_Impact(ECOImpactID),
   MetricID INT FOREIGN KEY REFERENCES Sustainability_Metric(MetricID),
   Eco_Metric_Timestamp DATETIME,
   PRIMARY KEY (Eco_ImpactID, MetricID)
);


-- 11. Environmental_Metric Table
CREATE TABLE Environmental_Metric (
   Evt_ImpactID INT FOREIGN KEY REFERENCES Environmental_Impact(EVTImpactID),
   MetricID INT FOREIGN KEY REFERENCES Sustainability_Metric(MetricID),
   EVT_Metric_Timestamp DATETIME,
   PRIMARY KEY (Evt_ImpactID, MetricID)
);


-- 12. Certificate_Metric Table
CREATE TABLE Certificate_Metric (
   CertificateID INT FOREIGN KEY REFERENCES Sustainability_Certification(CertificationID),
   MetricID INT FOREIGN KEY REFERENCES Sustainability_Metric(MetricID),
   Compliance_Rating DECIMAL(5, 2),
   PRIMARY KEY (CertificateID, MetricID)
);


-- 13. Accommodation_Certification Table
CREATE TABLE Accommodation_Certification (
   AccommodationID INT FOREIGN KEY REFERENCES Accommodation(AccommodationID),
   CertificateID INT FOREIGN KEY REFERENCES Sustainability_Certification(CertificationID),
   Certification_Grade NVARCHAR(10),
   PRIMARY KEY (AccommodationID, CertificateID)
);


-- Drop original tables
DROP TABLE IF EXISTS Carrying_Capacity_Alert;
DROP TABLE IF EXISTS Educational_Content;
DROP TABLE IF EXISTS Sustainability_Metric;
DROP TABLE IF EXISTS Visitor_Review;
DROP TABLE IF EXISTS Cultural_Heritage_Site;
DROP TABLE IF EXISTS Economic_Impact;
DROP TABLE IF EXISTS Environmental_Impact;
DROP TABLE IF EXISTS Sustainability_Certification;
DROP TABLE IF EXISTS Local_Business;
DROP TABLE IF EXISTS Transportation_Provider;
DROP TABLE IF EXISTS Attraction;
DROP TABLE IF EXISTS Tour_Operator;
DROP TABLE IF EXISTS Tourist;
DROP TABLE IF EXISTS Accommodation;
DROP TABLE IF EXISTS Destination;

-- Drop associative entity tables
DROP TABLE IF EXISTS Accommodation_Certification;
DROP TABLE IF EXISTS Certificate_Metric;
DROP TABLE IF EXISTS Environmental_Metric;
DROP TABLE IF EXISTS Economic_Metric;
DROP TABLE IF EXISTS Business_Impact;
DROP TABLE IF EXISTS Visits_Attraction;
DROP TABLE IF EXISTS Collaborates_With;
DROP TABLE IF EXISTS Partners_With;
DROP TABLE IF EXISTS Organizes;
DROP TABLE IF EXISTS Engages_With;
DROP TABLE IF EXISTS Uses;
DROP TABLE IF EXISTS Stays_At;
DROP TABLE IF EXISTS Visits;
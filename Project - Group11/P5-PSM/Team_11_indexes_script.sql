-- INDEX script STMS

USE STMS
GO


-- Index on DestinationName
CREATE NONCLUSTERED INDEX idx_DestinationName
ON Destination (DestinationName);

-- Index on TouristID
CREATE NONCLUSTERED INDEX idx_TouristID
ON Tourist (TouristID);

-- Index on SustainabilityScore
CREATE NONCLUSTERED INDEX idx_SustainabilityScore
ON Destination (SustainabilityScore);

-- Index on Accommodation
CREATE NONCLUSTERED INDEX IX_Accommodation_DestinationID ON Accommodation (DestinationID);

-- Index on Transportation Provider
CREATE NONCLUSTERED INDEX IX_TransportProvider_ProviderName ON Transportation_Provider (ProviderName);


-- DROP Index Queries:

-- Drop Index on DestinationName
DROP INDEX idx_DestinationName ON Destination;

-- Drop Index on TouristID
DROP INDEX idx_TouristID ON Tourist;

-- Drop Index on SustainabilityScore
DROP INDEX idx_SustainabilityScore ON Destination;

-- Drop Index on Accommodation
DROP INDEX IX_Accommodation_DestinationID ON Accommodation;

-- Drop Index on Transportation Provider
DROP INDEX IX_TransportProvider_ProviderName ON Transportation_Provider;


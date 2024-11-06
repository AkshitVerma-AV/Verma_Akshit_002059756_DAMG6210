-- DML Script: INSERT statements
--DESTINATION
INSERT INTO Destination (DestinationName, Country, Region, Climate, PeakSeason, OffSeason, AverageAnnualVisitors, SustainabilityScore, CarryingCapacity)
VALUES
  ('Grand Canyon', 'USA', 'Arizona', 'Desert', 'Spring', 'Winter', 6000000, 85.50, 700000),
  ('Great Barrier Reef', 'Australia', 'Queensland', 'Tropical', 'Winter', 'Summer', 2000000, 90.75, 500000),
  ('Machu Picchu', 'Peru', 'Cusco', 'Mountain', 'Spring', 'Fall', 1500000, 78.20, 400000),
  ('Yellowstone National Park', 'USA', 'Wyoming', 'Temperate', 'Summer', 'Winter', 4000000, 88.10, 600000),
  ('Santorini', 'Greece', 'Cyclades', 'Mediterranean', 'Summer', 'Winter', 2000000, 70.25, 150000),
  ('Banff National Park', 'Canada', 'Alberta', 'Mountain', 'Summer', 'Winter', 4000000, 82.50, 800000),
  ('Eiffel Tower', 'France', 'Île-de-France', 'Temperate', 'Spring', 'Winter', 7000000, 65.30, 300000),
  ('Mount Fuji', 'Japan', 'Honshu', 'Mountain', 'Spring', 'Winter', 4000000, 75.40, 500000),
  ('Serengeti National Park', 'Tanzania', 'Mara', 'Savannah', 'Summer', 'Winter', 350000, 92.60, 100000),
  ('Galapagos Islands', 'Ecuador', 'Pacific', 'Tropical', 'Winter', 'Summer', 200000, 95.00, 50000);


--ACCOMODATION–


INSERT INTO Accommodation (DestinationID, AccommodationName, AccType, Capacity, SustainabilityRating, EnergyEfficiencyScore, WaterConservationScore, WasteManagementScore, LocalEmploymentPercentage)
VALUES
  (1, 'Grand Canyon Lodge', 'Hotel', 200, 85.20, 90.00, 80.50, 75.30, 65.00),
  (2, 'Reef View Hotel', 'Resort', 150, 88.40, 92.20, 78.50, 70.10, 60.00),
  (3, 'Inca Trail Hostel', 'Hostel', 50, 70.50, 65.30, 80.00, 60.50, 55.00),
  (4, 'Yellowstone Cabin', 'Cabin', 100, 82.00, 85.20, 75.00, 68.40, 72.00),
  (5, 'Santorini Sunset Villas', 'Villa', 120, 78.90, 73.60, 65.80, 70.00, 58.00),
  (6, 'Banff Mountain Lodge', 'Lodge', 250, 90.20, 88.10, 90.00, 85.30, 80.00),
  (7, 'Parisian Boutique', 'Boutique Hotel', 75, 66.50, 68.00, 72.00, 65.20, 50.00),
  (8, 'Fuji View Inn', 'Inn', 60, 74.30, 72.50, 75.60, 68.90, 57.00),
  (9, 'Serengeti Eco Camp', 'Camp', 40, 92.80, 94.00, 88.50, 90.00, 85.00),
  (10, 'Galapagos Green Resort', 'Eco-Resort', 100, 95.60, 98.20, 92.40, 93.00, 90.00);








--TOURIST–


INSERT INTO Tourist (FirstName, LastName, Nationality, DateOfBirth, Email, PreferredLanguage, SustainabilityPreference, CarbonOffsetParticipation)
VALUES
  ('John', 'Doe', 'USA', '1985-05-10', 'john.doe@example.com', 'English', 'Eco-friendly accommodations', 1),
  ('Maria', 'Garcia', 'Spain', '1990-08-23', 'maria.garcia@example.es', 'Spanish', 'Low-emission transport', 1),
  ('Liam', 'Brown', 'Canada', '1982-11-15', 'liam.brown@example.ca', 'English', 'Local food sourcing', 0),
  ('Emma', 'Wilson', 'UK', '1995-01-20', 'emma.wilson@example.co.uk', 'English', 'Plastic-free initiatives', 1),
  ('Noah', 'Chen', 'China', '1988-07-12', 'noah.chen@example.cn', 'Mandarin', 'Carbon-neutral travel', 1),
  ('Olivia', 'Martin', 'France', '1993-04-09', 'olivia.martin@example.fr', 'French', 'Eco-friendly accommodations', 0),
  ('William', 'Singh', 'India', '1987-03-25', 'william.singh@example.in', 'Hindi', 'Water conservation efforts', 1),
  ('Sophia', 'Kim', 'South Korea', '1992-06-30', 'sophia.kim@example.kr', 'Korean', 'Recycling programs', 1),
  ('James', 'Nguyen', 'Vietnam', '1996-02-14', 'james.nguyen@example.vn', 'Vietnamese', 'Eco-tourism activities', 0),
  ('Mia', 'Lopez', 'Mexico', '1984-12-05', 'mia.lopez@example.mx', 'Spanish', 'Support local communities', 1);




--TOUR_OPERATOR–


INSERT INTO Tour_Operator (OperatorName, Headquarters, SustainabilityCertification, LocalPartnershipPercentage, CarbonOffsetProgram, SustainablePackagesOffered)
VALUES
  ('Eco Adventures', 'San Francisco, USA', 'Green Globe', 85.50, 'Climate Neutral Now', 12),
  ('Green Travels', 'Berlin, Germany', 'EarthCheck', 90.00, 'Carbon Fund', 8),
  ('Sustainable Journeys', 'Sydney, Australia', 'Travelife', 78.25, 'Offsetters', 10),
  ('Nature Expeditions', 'Cape Town, South Africa', 'Biosphere', 70.80, 'MyClimate', 15),
  ('Planet Protectors', 'London, UK', 'Green Key', 88.40, 'Carbon Trust', 7),
  ('Eco Escapes', 'Toronto, Canada', 'EcoLabel', 82.60, 'Gold Standard', 6),
  ('Adventure Conserve', 'Auckland, New Zealand', 'Green Tourism', 95.20, 'Carbon Neutral', 9),
  ('Wilderness Safaris', 'Nairobi, Kenya', 'Eco-Certified', 87.00, 'Cool Effect', 11),
  ('Responsible Travels', 'Stockholm, Sweden', 'Travelife', 77.40, 'COTAP', 14),
  ('Pure Earth Tours', 'Lima, Peru', 'Green Seal', 80.50, 'Climate Action Reserve', 5);




--ATTRACTION –


INSERT INTO Attraction (DestinationID, AttractionName, AttType, Capacity, AverageVisitDuration, PeakHours, SustainabilityMeasures, AccessibilityFeatures)
VALUES
  (1, 'Bright Angel Trail', 'Hiking Trail', 300, 2.50, 'Morning', 'Waste bins along trail, solar lighting', 1),
  (2, 'Great Barrier Reef Marine Park', 'Marine Reserve', 500, 4.00, 'Afternoon', 'Coral regeneration projects, limited access zones', 0),
  (3, 'Machu Picchu Historic Sanctuary', 'Historical Site', 250, 3.00, 'Early Morning', 'Controlled entry, waste management programs', 1),
  (4, 'Old Faithful Geyser', 'Natural Wonder', 400, 1.50, 'Noon', 'Visitor guidelines, geothermal protection', 1),
  (5, 'Santorini Caldera', 'Volcanic Site', 200, 2.00, 'Sunset', 'Recycling stations, eco-friendly tours', 0),
  (6, 'Lake Louise', 'Scenic Lake', 300, 3.00, 'Afternoon', 'Boating restrictions, wildlife conservation zones', 1),
  (7, 'Eiffel Tower', 'Monument', 1000, 2.00, 'Evening', 'Recycling facilities, LED lighting', 1),
  (8, 'Mount Fuji Hiking Trails', 'Mountain', 350, 5.00, 'Morning', 'Litter collection points, eco-friendly signage', 1),
  (9, 'Serengeti Wildlife Safari', 'National Park', 150, 6.00, 'Morning', 'Vehicle limits, guided tours only', 0),
  (10, 'Charles Darwin Research Station', 'Research Center', 100, 2.50, 'Afternoon', 'Conservation programs, educational displays', 1);


--TRANSPORTATION_PROVIDER–


INSERT INTO Transportation_Provider (ProviderName, TpType, TP_SustainabilityScore, EmissionsPerPassengerKm, RenewableEnergyPercentage, TP_AccessibilityFeatures)
VALUES
  ('EcoTrans', 'Electric Bus', 90.50, 0.02, 100.00, 1),
  ('GreenAir', 'Airline', 78.40, 0.15, 45.00, 1),
  ('SolarExpress', 'Train', 85.20, 0.05, 80.00, 1),
  ('BioRide', 'Hybrid Taxi', 72.30, 0.10, 55.00, 0),
  ('ZeroEmission Cruises', 'Cruise', 88.75, 0.08, 65.00, 1),
  ('NatureBus', 'Shuttle', 92.10, 0.03, 90.00, 1),
  ('EcoWheels', 'Bike Rental', 95.00, 0.00, 100.00, 0),
  ('HybridFly', 'Airline', 69.80, 0.20, 30.00, 1),
  ('GreenCab', 'Electric Taxi', 80.60, 0.07, 85.00, 1),
  ('SunPower Rail', 'Solar Train', 93.50, 0.01, 95.00, 1);








--LOCAL_BUSINESS–


INSERT INTO Local_Business (DestinationID, BusinessName, LcoBType, OwnershipType, EmployeeCount, SustainabilityPractices, LocalSourcedProductPercentage)
VALUES
  (1, 'Grand Canyon Coffee Co.', 'Cafe', 'Locally Owned', 12, 'Recyclable cups, composting program', 85.00),
  (2, 'Reef Market', 'Souvenir Shop', 'Family Owned', 8, 'Biodegradable packaging, local crafts', 90.00),
  (3, 'Machu Picchu Restaurant', 'Restaurant', 'Franchise', 20, 'Locally sourced ingredients, water conservation', 75.00),
  (4, 'Yellowstone Outfitters', 'Outdoor Gear Store', 'Partnership', 15, 'Recycled products, eco-friendly packaging', 80.00),
  (5, 'Santorini Sun Rentals', 'Bike Rental', 'Private', 5, 'Electric bikes, paperless receipts', 65.00),
  (6, 'Banff Artisan Gallery', 'Art Gallery', 'Locally Owned', 7, 'Local artist support, minimal packaging', 95.00),
  (7, 'Parisian Bistro', 'Restaurant', 'Franchise', 18, 'Organic ingredients, sustainable seafood', 70.00),
  (8, 'Fuji Mountain Gifts', 'Gift Shop', 'Family Owned', 10, 'Reusable bags, eco-friendly souvenirs', 85.00),
  (9, 'Serengeti Safari Supply', 'Outdoor Gear Store', 'Private', 6, 'Biodegradable packaging, local crafts', 88.00),
  (10, 'Galapagos Eco Tours', 'Tour Operator', 'Locally Owned', 25, 'Solar-powered vehicles, no single-use plastics', 92.00);




--SUSTAINABILITY_CERTIFICATION–


INSERT INTO Sustainability_Certification (CertificateName, IssuingBody, ValidityPeriod, CriteriaDescription, AuditFrequency)
VALUES
  ('Green Globe Certification', 'Green Globe', '2026-12-31', 'Environmental, social, and economic sustainability standards', 'Annually'),
  ('LEED Certification', 'U.S. Green Building Council', '2025-06-30', 'Energy efficiency, water conservation, and eco-friendly design', 'Every 3 years'),
  ('ISO 14001', 'International Organization for Standardization', '2027-09-15', 'Environmental management system requirements', 'Every 2 years'),
  ('Travelife Partner', 'Travelife', '2026-03-10', 'Sustainability and social responsibility in tourism', 'Annually'),
  ('EarthCheck', 'EarthCheck', '2024-11-25', 'Sustainable tourism benchmarks and certification', 'Every 2 years'),
  ('BREEAM Certification', 'BRE Global', '2025-05-20', 'Environmental performance assessment for buildings', 'Every 3 years'),
  ('Green Seal Certification', 'Green Seal', '2027-02-28', 'Environmental health and safety standards', 'Annually'),
  ('EcoLabel', 'European Union', '2026-07-15', 'Eco-friendly products and services across sectors', 'Every 2 years'),
  ('Rainforest Alliance Certified', 'Rainforest Alliance', '2025-10-31', 'Biodiversity conservation and sustainable livelihoods', 'Annually'),
  ('Carbon Trust Standard', 'Carbon Trust', '2027-08-05', 'Carbon, water, and waste footprint reductions', 'Every 3 years');


--ENVIRONMENTAL_IMPACT –


INSERT INTO Environmental_Impact (AccommodationID, EnvImp_Date, CarbonEmissions, WaterConsumption, WasteGenerated, RecyclingRate, BiodiversityIndex)
VALUES
  (1, '2024-01-15', 1500.25, 1200.50, 300.75, 85.50, 72.30),
  (2, '2024-02-10', 980.40, 800.60, 200.45, 78.40, 68.20),
  (3, '2024-03-12', 1250.75, 1100.20, 250.90, 80.00, 70.55),
  (4, '2024-04-05', 1025.80, 950.40, 275.35, 82.00, 71.20),
  (5, '2024-05-18', 1150.95, 1050.30, 290.50, 79.25, 69.85),
  (6, '2024-06-21', 1400.30, 1150.70, 310.85, 83.75, 73.10),
  (7, '2024-07-08', 1325.65, 1075.45, 285.75, 77.30, 68.90),
  (8, '2024-08-03', 1450.50, 1125.35, 295.20, 84.50, 72.80),
  (9, '2024-09-15', 990.60, 900.50, 250.00, 79.80, 70.00),
  (10, '2024-10-10', 1050.20, 950.75, 260.35, 81.25, 71.90);


--ECONOMIC_IMPACT –


INSERT INTO Economic_Impact (DestinationID, EcoImp_Year, TourismRevenue, LocalEmploymentRate, AverageWageInTourism, LocalBusinessGrowthRate, EconomicLeakagePercentage)
VALUES
  (1, 2023, 15000000.00, 72.50, 28000.50, 5.20, 12.50),
  (2, 2023, 18000000.00, 68.20, 30000.75, 6.00, 15.80),
  (3, 2023, 12000000.00, 75.00, 25000.60, 4.80, 11.40),
  (4, 2023, 14000000.00, 70.10, 26500.25, 5.50, 13.00),
  (5, 2023, 10000000.00, 65.50, 22000.80, 3.90, 14.20),
  (6, 2023, 20000000.00, 77.00, 31000.90, 6.30, 10.50),
  (7, 2023, 9000000.00, 60.80, 21000.00, 3.50, 15.00),
  (8, 2023, 17000000.00, 72.90, 29500.20, 5.10, 12.00),
  (9, 2023, 11000000.00, 67.40, 23500.65, 4.70, 13.80),
  (10, 2023, 16000000.00, 74.00, 27500.30, 5.60, 11.20);






--CULTURAL_HERITAGE_SITE


INSERT INTO Cultural_Heritage_Site (AttractionID, SiteName, SiteType, YearEstablished, ProtectionStatus, CulturalSignificance)
VALUES
  (1, 'Bright Angel Trail', 'Natural Site', 1919, 'Protected', 'Part of Grand Canyon National Park, significant for natural beauty and geological history.'),
  (2, 'Great Barrier Reef', 'Marine Site', 1981, 'UNESCO World Heritage', 'One of the largest coral reef systems in the world, crucial for marine biodiversity.'),
  (3, 'Machu Picchu', 'Archaeological Site', 1450, 'Protected', 'Ancient Incan city, a symbol of the Incan Empire and a UNESCO World Heritage site.'),
  (4, 'Old Faithful Geyser', 'Natural Monument', 1872, 'Protected', 'World-famous geyser in Yellowstone, known for its reliable eruptions.'),
  (5, 'Santorini Caldera', 'Volcanic Site', 1645, 'Protected', 'Formed by a massive volcanic eruption, significant for geological history.'),
  (6, 'Lake Louise', 'Natural Site', 1890, 'National Historic Site', 'Famous glacier lake in Canada, known for its scenic beauty and cultural value.'),
  (7, 'Eiffel Tower', 'Architectural Monument', 1889, 'Protected', 'Iconic French monument and symbol of Paris, significant for engineering and design.'),
  (8, 'Mount Fuji', 'Cultural Landscape', 2013, 'UNESCO World Heritage', 'Sacred mountain and symbol of Japan, important for religious and cultural significance.'),
  (9, 'Serengeti National Park', 'Natural Site', 1951, 'UNESCO World Heritage', 'Renowned for its biodiversity, particularly the migration of wildebeest and other species.'),
  (10, 'Charles Darwin Research Station', 'Research Center', 1964, 'Protected', 'Center for conservation and scientific research in the Galapagos Islands.');


--Visitors _review


INSERT INTO Visitor_Review (TouristID, EntityReviewed, Rating, Comment, SustainabilityFeedback, DatePosted)
VALUES
  (1, 'Eco Lodge', 5, 'Amazing stay with great views and sustainable practices.', 'Encourages water conservation', '2024-01-15'),
  (2, 'Mountain Cabin', 4, 'Cozy and peaceful, but limited sustainable options.', 'Could improve recycling efforts', '2024-02-20'),
  (3, 'City Hotel', 3, 'Convenient location but needs more eco-friendly practices.', 'Minimal energy-saving initiatives', '2024-03-12'),
  (4, 'Beach Resort', 5, 'Perfect for a relaxing vacation with eco-friendly measures.', 'Focus on reducing plastic usage', '2024-04-25'),
  (5, 'Safari Lodge', 4, 'Great experience, but could improve on waste management.', 'Focus on wildlife protection', '2024-05-08'),
  (6, 'Boutique Inn', 2, 'Disappointed with the lack of sustainable practices.', 'Minimal sustainability initiatives', '2024-06-18'),
  (7, 'Forest Cabin', 5, 'Lovely place with eco-friendly efforts all around.', 'Uses solar power for electricity', '2024-07-10'),
  (8, 'Lake House', 4, 'Scenic views but needs more eco-friendly policies.', 'Encourages local food sourcing', '2024-08-14'),
  (9, 'Desert Camp', 3, 'Unique experience but could improve sustainability.', 'Limited water-saving practices', '2024-09-05'),
  (10, 'Island Villa', 5, 'Luxurious and eco-conscious.', 'Uses renewable energy sources', '2024-10-20');


-- Sustainability_Metric Table


INSERT INTO Sustainability_Metric (MetricName, SusMet_Description, Unit, BenchmarkValue, DataCollectionMethod, FrequencyOfMeasurement)
VALUES
('Carbon Footprint', 'Measures total greenhouse gas emissions', 'Metric Tons CO2e', 1000.00, 'GHG Protocol', 'Annually'),
('Water Usage', 'Total water consumption', 'Cubic Meters', 5000.00, 'Water Meters', 'Monthly'),
('Energy Efficiency', 'Energy used per unit of production', 'kWh/Unit', 50.00, 'Energy Audits', 'Quarterly'),
('Waste Reduction', 'Percentage of waste diverted from landfill', 'Percentage', 75.00, 'Waste Audits', 'Monthly'),
('Renewable Energy Usage', 'Percentage of energy from renewable sources', 'Percentage', 30.00, 'Energy Bills', 'Annually'),
('Employee Diversity', 'Percentage of diverse employees', 'Percentage', 40.00, 'HR Records', 'Bi-annually'),
('Supplier Sustainability', 'Percentage of suppliers meeting sustainability criteria', 'Percentage', 80.00, 'Supplier Assessments', 'Annually'),
('Product Recyclability', 'Percentage of product that can be recycled', 'Percentage', 90.00, 'Product Analysis', 'Per Product Launch'),
('Community Investment', 'Amount invested in community projects', 'USD', 100000.00, 'Financial Records', 'Annually'),
('Biodiversity Impact', 'Net Positive Impact on biodiversity', 'Hectares', 500.00, 'Environmental Surveys', 'Bi-annually');


-- Educational_Content Table


INSERT INTO Educational_Content (Title, EduType, Topic, Edu_Language, TargetAudience, EngagementRate, LastUpdated)
VALUES
('Sustainable Tourism 101', 'Online Course', 'Sustainability Basics', 'English', 'Tourists', 85.5, '2023-05-15'),
('Eco-Friendly Travel Tips', 'Video', 'Travel', 'Spanish', 'Backpackers', 92.3, '2023-06-01'),
('Local Culture Preservation', 'Webinar', 'Cultural Heritage', 'French', 'Tour Operators', 78.9, '2023-04-22'),
('Reducing Carbon Footprint', 'Podcast', 'Climate Change', 'German', 'Eco-Conscious Travelers', 88.7, '2023-07-10'),
('Sustainable Accommodations', 'E-book', 'Hospitality', 'Italian', 'Hotel Managers', 76.2, '2023-03-30'),
('Wildlife Conservation', 'Interactive Module', 'Biodiversity', 'English', 'Nature Enthusiasts', 91.5, '2023-06-18'),
('Responsible Diving Practices', 'Video Series', 'Marine Conservation', 'Thai', 'Divers', 87.8, '2023-05-05'),
('Sustainable Food Tourism', 'Blog Posts', 'Culinary Travel', 'Japanese', 'Foodies', 82.1, '2023-07-01'),
('Eco-Volunteering Guide', 'PDF Guide', 'Voluntourism', 'Portuguese', 'Gap Year Students', 79.4, '2023-04-12'),
('Green Transportation Options', 'Infographic', 'Sustainable Mobility', 'Chinese', 'Urban Travelers', 86.9, '2023-06-25');




-- Carrying_Capacity_Alert Table


INSERT INTO Carrying_Capacity_Alert (DestinationID, CCA_Date, CurrentVisitorCount, ThresholdPercentage, AlertLevel, RecommendedActions)
VALUES
(1, '2023-07-15', 5000, 90.5, 'High', 'Implement visitor quota'),
(2, '2023-07-16', 3000, 75.0, 'Medium', 'Increase monitoring'),
(3, '2023-07-17', 8000, 95.2, 'Critical', 'Temporary closure recommended'),
(4, '2023-07-18', 2000, 50.0, 'Low', 'Continue normal operations'),
(5, '2023-07-19', 6000, 85.7, 'High', 'Limit new bookings'),
(6, '2023-07-20', 4000, 80.0, 'Medium', 'Prepare for potential restrictions'),
(7, '2023-07-21', 7000, 93.3, 'Critical', 'Immediate action required'),
(8, '2023-07-22', 1000, 25.0, 'Low', 'No action needed'),
(9, '2023-07-23', 5500, 91.7, 'High', 'Implement crowd management'),
(10, '2023-07-24', 3500, 70.0, 'Medium', 'Increase staff presence');







-- INSERT STATEMENTS for ASSOCIATIVE ENTITIES:

--1. Visits Table


INSERT INTO Visits (TouristID, DestinationID, Visit_Timestamp)
VALUES
  (1, 1, '2024-01-10 10:30:00'),
  (2, 2, '2024-02-15 12:45:00'),
  (3, 3, '2024-03-20 09:15:00'),
  (4, 4, '2024-04-05 14:30:00'),
  (5, 5, '2024-05-08 16:00:00'),
  (6, 6, '2024-06-18 11:20:00'),
  (7, 7, '2024-07-10 13:45:00'),
  (8, 8, '2024-08-14 10:00:00'),
  (9, 9, '2024-09-05 17:30:00'),
  (10, 10, '2024-10-20 08:00:00'),
  (1, 3, '2024-02-28 15:10:00'),
  (2, 4, '2024-03-15 10:50:00'),
  (3, 1, '2024-04-12 09:40:00'),
  (4, 2, '2024-05-30 12:00:00'),
  (5, 10, '2024-06-22 14:25:00'),
  (6, 9, '2024-07-18 15:35:00'),
  (7, 8, '2024-08-24 11:55:00'),
  (8, 7, '2024-09-16 08:15:00'),
  (9, 6, '2024-10-12 10:05:00'),
  (10, 5, '2024-11-01 16:20:00');








--2. Stays_At Table


INSERT INTO Stays_At (TouristID, AccommodationID, Stay_Period)
VALUES
 (1, 1, '2024-01-05 to 2024-01-10'),
 (2, 2, '2024-02-10 to 2024-02-15'),
 (3, 3, '2024-03-15 to 2024-03-20'),
 (4, 4, '2024-04-01 to 2024-04-05'),
 (5, 5, '2024-05-05 to 2024-05-08'),
 (6, 6, '2024-06-12 to 2024-06-18'),
 (7, 7, '2024-07-05 to 2024-07-10'),
 (8, 8, '2024-08-10 to 2024-08-14'),
 (9, 9, '2024-09-01 to 2024-09-05'),
 (10, 10, '2024-10-15 to 2024-10-20'),
 (1, 3, '2024-02-20 to 2024-02-28'),
 (2, 4, '2024-03-10 to 2024-03-15'),
 (3, 1, '2024-04-08 to 2024-04-12'),
 (4, 2, '2024-05-20 to 2024-05-30'),
 (5, 10, '2024-06-15 to 2024-06-22'),
 (6, 9, '2024-07-10 to 2024-07-18'),
 (7, 8, '2024-08-18 to 2024-08-24'),
 (8, 7, '2024-09-08 to 2024-09-16'),
 (9, 6, '2024-10-05 to 2024-10-12'),
 (10, 5, '2024-10-25 to 2024-11-01');




















--3. Uses Table


INSERT INTO Uses (TouristID, ProviderID, Transportation_Duration)
VALUES
 (1, 1, 120),
 (2, 2, 180),
 (3, 3, 240),
 (4, 4, 90),
 (5, 5, 300),
 (6, 6, 150),
 (7, 7, 60),
 (8, 8, 220),
 (9, 9, 110),
 (10, 10, 130),
 (1, 2, 180),
 (2, 3, 210),
 (3, 1, 100),
 (4, 5, 275),
 (5, 6, 160),
 (6, 4, 125),
 (7, 9, 85),
 (8, 10, 140),
 (9, 8, 200),
 (10, 7, 95);








--4. Engages_With Table


INSERT INTO Engages_With (TouristID, ContentID, Education_Domain)
VALUES
  (1, 1, 'Sustainable Tourism'),
  (2, 2, 'Eco-Friendly Travel'),
  (3, 3, 'Cultural Heritage'),
  (4, 4, 'Climate Change'),
  (5, 5, 'Hospitality'),
  (6, 6, 'Biodiversity'),
  (7, 7, 'Marine Conservation'),
  (8, 8, 'Culinary Travel'),
  (9, 9, 'Voluntourism'),
  (10, 10, 'Sustainable Mobility'),
  (1, 3, 'Cultural Heritage'),
  (2, 5, 'Hospitality'),
  (3, 7, 'Marine Conservation'),
  (4, 9, 'Voluntourism'),
  (5, 10, 'Sustainable Mobility'),
  (6, 2, 'Eco-Friendly Travel'),
  (7, 4, 'Climate Change'),
  (8, 6, 'Biodiversity'),
  (9, 1, 'Sustainable Tourism'),
  (10, 8, 'Culinary Travel');








--5. Organizes Table


INSERT INTO Organizes (OperatorID, DestinationID, Number_of_Tourists) VALUES
(1, 1, 20),
(2, 2, 25),
(3, 3, 30),
(4, 4, 15),
(5, 5, 18),
(6, 6, 22),
(7, 7, 24),
(8, 8, 16),
(9, 9, 28),
(10, 10, 20);




--6. Partners_With Table


INSERT INTO Partners_With (OperatorID, AccommodationID, Partnership_StartDate, Partnership_EndDate)
VALUES
  (1, 1, '2023-01-01', '2024-01-01'),
  (2, 2, '2023-02-01', NULL),
  (3, 3, '2023-03-15', '2024-03-15'),
  (4, 4, '2023-04-10', '2025-04-10'),
  (5, 5, '2023-05-20', '2024-05-20'),
  (6, 6, '2023-06-15', NULL),
  (7, 7, '2023-07-18', '2024-07-18'),
  (8, 8, '2023-08-10', '2025-08-10'),
  (9, 9, '2023-09-05', NULL),
  (10, 10, '2023-10-01', '2024-10-01');








--7. Collaborates_With Table


INSERT INTO Collaborates_With (OperatorID, ProviderID, Collaboration_StartDate, Collaboration_EndDate)
VALUES
  (1, 1, '2022-01-01', NULL),
  (2, 2, '2023-01-01', '2024-01-01'),
  (3, 3, '2023-03-01', NULL),
  (4, 4, '2023-04-15', '2024-04-15'),
  (5, 5, '2023-05-01', NULL),
  (6, 6, '2023-06-10', '2025-06-10'),
  (7, 7, '2023-07-15', NULL),
  (8, 8, '2023-08-20', '2024-08-20'),
  (9, 9, '2023-09-01', NULL),
  (10, 10, '2023-10-01', '2024-10-01');








--8. Visits_Attraction Table


INSERT INTO Visits_Attraction (TouristID, AttractionID, Days_of_Visit)
VALUES
  (1, 1, '2024-01-05 to 2024-01-06'),
  (2, 2, '2024-02-10 to 2024-02-11'),
  (3, 3, '2024-03-15 to 2024-03-16'),
  (4, 4, '2024-04-01 to 2024-04-02'),
  (5, 5, '2024-05-05 to 2024-05-06'),
  (6, 6, '2024-06-12 to 2024-06-13'),
  (7, 7, '2024-07-05 to 2024-07-06'),
  (8, 8, '2024-08-10 to 2024-08-11'),
  (9, 9, '2024-09-01 to 2024-09-02'),
  (10, 10, '2024-10-15 to 2024-10-16');








--9. Business_Impact Table


INSERT INTO Business_Impact (BusinessID, ImpactID, Revenue_Generated)
VALUES
  (1, 1, 15000.00),
  (2, 2, 25000.00),
  (3, 3, 18000.00),
  (4, 4, 22000.00),
  (5, 5, 30000.00),
  (6, 6, 27500.00),
  (7, 7, 20000.00),
  (8, 8, 32000.00),
  (9, 9, 29000.00),
  (10, 10, 15000.00);








--10. Economic_Metric Table


INSERT INTO Economic_Metric (Eco_ImpactID, MetricID, Eco_Metric_Timestamp)
VALUES
  (1, 1, '2024-01-10 12:00:00'),
  (2, 2, '2024-02-15 14:30:00'),
  (3, 3, '2024-03-20 10:00:00'),
  (4, 4, '2024-04-05 11:45:00'),
  (5, 5, '2024-05-08 16:15:00'),
  (6, 6, '2024-06-18 09:50:00'),
  (7, 7, '2024-07-10 13:20:00'),
  (8, 8, '2024-08-14 10:05:00'),
  (9, 9, '2024-09-05 17:30:00'),
  (10, 10, '2024-10-20 08:00:00');








--11. Environmental_Metric Table


INSERT INTO Environmental_Metric (Evt_ImpactID, MetricID, EVT_Metric_Timestamp)
VALUES
  (1, 1, '2024-01-15 09:15:00'),
  (2, 2, '2024-02-10 14:20:00'),
  (3, 3, '2024-03-12 11:45:00'),
  (4, 4, '2024-04-05 13:10:00'),
  (5, 5, '2024-05-18 12:00:00'),
  (6, 6, '2024-06-21 15:30:00'),
  (7, 7, '2024-07-08 10:45:00'),
  (8, 8, '2024-08-03 14:50:00'),
  (9, 9, '2024-09-15 08:20:00'),
  (10, 10, '2024-10-10 12:40:00');




(10, 10, '2024-01-10 17:00:00');




--12. Certificate_Metric Table
INSERT INTO Certificate_Metric (CertificateID, MetricID, Compliance_Rating)
VALUES
  (1, 1, 95.50),
  (2, 2, 90.75),
  (3, 3, 85.20),
  (4, 4, 88.10),
  (5, 5, 87.25),
  (6, 6, 92.50),
  (7, 7, 80.60),
  (8, 8, 78.40),
  (9, 9, 82.10),
  (10, 10, 89.00);








--13. Accommodation_Certification Table
INSERT INTO Accommodation_Certification (AccommodationID, CertificateID, Certification_Grade)
VALUES
  (1, 1, 'A+'),
  (2, 2, 'A'),
  (3, 3, 'B+'),
  (4, 4, 'A-'),
  (5, 5, 'B'),
  (6, 6, 'A+'),
  (7, 7, 'B+'),
  (8, 8, 'B-'),
  (9, 9, 'A'),
  (10, 10, 'A');







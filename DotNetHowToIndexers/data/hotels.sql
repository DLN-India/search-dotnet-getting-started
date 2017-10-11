CREATE TABLE Hotels (
    HotelId nvarchar(450) NOT NULL,
    BaseRate float NULL,
    Category nvarchar(max) NULL,
    Description nvarchar(max) NULL,
    description_fr nvarchar(max) NULL,
    HotelName nvarchar(max) NULL,
    Tags nvarchar(max) NULL,
    IsDeleted bit NOT NULL,
    LastRenovationDate datetimeoffset(7) NULL,
    ParkingIncluded bit NULL,
    Rating int NULL,
    SmokingAllowed bit NULL,
    Location geography NULL,
    RowVersion rowversion NOT NULL
)
GO

INSERT INTO Hotels (HotelId, BaseRate, Category, Description, description_fr, HotelName, Tags, IsDeleted, LastRenovationDate, ParkingIncluded, Rating, SmokingAllowed, Location)
VALUES (N'1', 199, N'Luxury', N'Best hotel in town', N'Meilleur hôtel en ville', N'Fancy Stay', N'["pool", "view", "wifi", "concierge"]', 0, CAST(N'2010-06-27T00:00:00.0000000+00:00' AS DateTimeOffset), 0, 5, 0, geography::Point(47.678581, -122.131577, 4326))

INSERT INTO Hotels (HotelId, BaseRate, Category, Description, description_fr, HotelName, Tags, IsDeleted, LastRenovationDate, ParkingIncluded, Rating, SmokingAllowed, Location)
VALUES (N'2', 79.99, N'Budget', N'Cheapest hotel in town', N'Hôtel le moins cher en ville', N'Roach Motel', N'["motel", "budget"]', 0, CAST(N'1982-04-28T00:00:00.0000000+00:00' AS DateTimeOffset), 1, 1, 1, geography::Point(49.678581, -122.131577, 4326))

INSERT INTO Hotels (HotelId, BaseRate, Category, Description, description_fr, HotelName, Tags, IsDeleted, LastRenovationDate, ParkingIncluded, Rating, SmokingAllowed, Location)
VALUES (N'3', 129.99, NULL, N'Close to town hall and the river', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
GO

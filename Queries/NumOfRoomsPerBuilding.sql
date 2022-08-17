SELECT
	B.BuildingCode,
	SUM(BR.BuildingRoomID) AS NumOfRooms
FROM 
	[QCClass].[BuildingLocation] AS B
	INNER JOIN [QCClass].[BuildingRoom] AS BR
	ON B.BuildingID = BR.BuildingRoomID
GROUP BY B.BuildingCode;
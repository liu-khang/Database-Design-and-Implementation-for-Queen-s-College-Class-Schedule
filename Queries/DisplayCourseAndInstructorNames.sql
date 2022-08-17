SELECT 
	C.CourseName,
	I.InstructorFullName AS InstructorNames
FROM 
	[QCClass].Course AS C
	INNER JOIN [QCClass].[Instructor] AS I
	ON C.CourseID = I.InstructorID
GROUP By C.CourseName, I.InstructorFullName;
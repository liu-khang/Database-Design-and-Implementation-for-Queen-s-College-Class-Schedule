SELECT
    C.CourseName,
    SUM(CAST(CL.Enrolled AS INT)) AS NumberOfStudents
FROM [QCClass].Course AS C
INNER JOIN
     [QCClass].[Class] AS CL
ON C.CourseID = CL.ClassID
AND C.ClassTime = '7:45'
GROUP BY (C.CourseName)
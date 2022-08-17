SELECT ClassName,
       CourseKey,
       COUNT(CourseKey) AS NumberOfClassesOffered,
       SUM(PARSE(Enrolled AS INT)) AS TotalEnrolled,
       SUM(PARSE(Limit AS INT)) AS Limit
FROM QCClass.Class
GROUP BY ClassName,
         CourseKey
ORDER BY ClassName;
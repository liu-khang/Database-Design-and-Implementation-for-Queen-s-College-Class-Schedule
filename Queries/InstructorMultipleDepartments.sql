SELECT CASE
           WHEN i.InstructorFullName = ',' THEN
               'No Instructor'
           ELSE
               i.InstructorFullName
       END AS [Instructor Name],
       COUNT(orig.Department) AS [Number of Departments]
FROM QCClass.Department AS orig
    JOIN QCClass.Instructor AS i
        ON orig.DepartmentID = i.InstructorID
GROUP BY i.InstructorFullName
HAVING COUNT(orig.Department) > 1
ORDER BY COUNT(orig.Department) ASC;
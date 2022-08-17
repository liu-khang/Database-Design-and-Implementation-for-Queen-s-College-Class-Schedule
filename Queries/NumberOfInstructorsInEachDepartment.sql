SELECT Department, 
	  COUNT(InstructorFullName) as NumOfInstructors 
FROM 
	[QCClass].InstructorDepartment AS ID
	INNER JOIN [QCClass].Instructor AS I
	ON ID.InstructorKey = I.InstructorID
	INNER JOIN [QCClass].Department AS D
	ON ID.DepartmentKey = D.DepartmentID
GROUP BY Department;
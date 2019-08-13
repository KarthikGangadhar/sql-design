#(iii)	Retrieve the PHDSTUDENT Id, FName, Lname, and the COURSE Name they are working on for all students who are GTAs.

SELECT p.StudentId, p.FName, p.LName, c.CName 
FROM phdstudent as p, gta as g, course as c, section as s 
where p.StudentId = g.StudentId and  g.SectionId = s.SectionId and s.CourseId = c.CourseId;

#(i)	Retrieve the PHDSTUDENT Id, FName, LName, and MILESTONE MName and PassDate for the milestones passed by each student.

SELECT p.StudentId, p.FName, p.LName, m.Mname, mp.PassDate
FROM phdstudent as p, milestone as m, milestonespassed as mp
where p.StudentId = mp.StudentId and mp.MId = m.MId;






#(ii)	Retrieve the PHDSTUDENT Id, FName, Lname, and the supporting GRANT Name for all students who are GRAs.

SELECT p.StudentId, p.FName, p.LName, gt.GrantTitle 
FROM phdstudent as p, gra as g, grants as gt
where p.StudentId = g.StudentId and g.Funding = gt.AccountNo;

#(iii)	Retrieve the PHDSTUDENT Id, FName, Lname, and the COURSE Name they are working on for all students who are GTAs.

SELECT p.StudentId, p.FName, p.LName, c.CName 
FROM phdstudent as p, gta as g, course as c, section as s 
where p.StudentId = g.StudentId and  g.SectionId = s.SectionId and s.CourseId = c.CourseId;

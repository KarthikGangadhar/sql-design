2.1
Here are the requirements for the database:

1.	We want to store and query information for the DOCTORAL database for the doctoral (PhD) students at UTA. Each PHD_STUDENT has a StudentId, Name (made up of the components FName, LName), StartSemester (semester when the student started – semester is made up of two components (Semester, Year))
2.	The DOCTORAL database will store information on each CSE Department INSTRUCTOR and research GRANT, as well as each doctoral MILESTONE. It will also include information about each COURSE and SECTION offered by the CSE department. 
3.	For each INSTRUCTOR, we shall keep track of the InstructorID (unique), Name (made up of (FName, LName), StartDate (when they started at the university), Degree (their highest degree achieved), and Rank (the title of the INSTRUCTOR – Prof, Asst Prof, Lecturer, etc.). INSTRUCTORs are of two main types: ADJUNCT and FULL_TIME, and the full-time instructors can be either TT (tenure track) or NTT (non-tenure track).
4.	PH_STUDENT has several main types – GRA (graduate research assistant), GTA (graduate teaching assistant), SCOLARSHIP (supported by a government scholarship or some other kind of scholarship), SELF_SUPPORT (student supports their studies – e.g. part-time PhD students who have a job or support their study by a loan or using their own means).
5.	The database shall keep information about each GRANT (research or educational grant), which has a GrantTitle. AccountNo (the grant Id), Source (the funding agency or company name providing the grant), Type (the type of grant - research, educational, gift, contract, other), StartDate, EndDate, StartAmount, and CurrBalance.
6.	The database will keep track of the current source of funding for each PhD student. For GRA this will be the GRANT that is funding the student and the monthly pay. For GTA this will be the current COURSE they are assigned for and the monthly pay. For SCHOLARSHIP this will be the Type of scholarship and the funding Source (organization or country).
7.	Each PHD_STUDENT must pass several MILESTONEs to reach their degree. Each milestone has a MName. When a student passes a milestone the date when the passed is recorded.
8.	Each PHD_STUDENT must have a PhD supervisor who must be a TT faculty, plus several additional TT faculty on the supervisory committee of the student.

2.2
Using the same DOCTORAL database:

INSTRUCTOR(InstructorId, FName, LName, StartDate, Degree, Rank, Type)
TT(InstructorId, NoOfPhDStudents)
PHDSTUDENT(StudentId, FName, LName, StSem, StYear, Supervisor)
GTA(SectionId, MonthlyPay, StudentId)
GRA(StudentId, Funding, MonthlyPay)
SELFSUPPORT(StudentId)
(* PHDSTUDENT table has 3 subtables – GTA, GRA, SELFSUPPORT  *)
COURSE(CourseID, CName)
COURSESTAUGHT(CourseID, InstructorId)
(* COURSESTAUGHT represents a relationship between INSTRUCTOR and COURSE *)
MILESTONE(MId, MName)
MILESTONESPASSED(StudentId, MId, PassDate)
(* MILESTONESPASSED represents a relationship between PHDSTUDENT and MILESTONE *)
GRANTS(AccountNo, Type, GrantTitle, Source, StDate, EndDate, StAmount, CurrBalance)
GRANTSASSOCIATED(AccountNo, InstructorID, PIType)
(* GRANTSASSOCIATED represents a relationship between TT and GRANT *)
PHDCOMMITTEE(StudentId, InstructorId)
(* PHDCOMMITTEE represents a relationship between PHDSTUDENT and TT *)
SCHOLARSHIPSUPPORT(StudentId, Type, Source)
SECTION(SectionId, CourseId)

Write the following queries and views on the database

1.	Create a view SUPERVISION_INFO(INSTRUCTOR.InstructorId, INSTRUCTOR.FName, INSTRUCTOR.LName, PHDSTUDENTS.StudentId, PHDSTUDENTS.FName, PHDSTUDENTS.LName, PHDSTUDENTS.StSem, PHDSTUDENTS.StYear) that retrieves the info about each PHD STUDENT and their SUPERVISOR Name. The view should have the attributes renamed as: (IId, IFName, ILName, SId, SFName, SLName, SStSem, SStYear).
2.	Write the following queries in the view you created:
A.	Retrieve for each instructor the IId, IFName, ILName, NoOfStudentsSupervised (the last is a COUNT aggregate function).
B.	Retrieve the student names (FName, LName) whose supervisor is FName=Ahmed and LName=Sarhan
C.	Retrieve the supervisor names (FName, LName) for the students whose names (FName, LName) are Ife,Jelani and Maya,Smith and Raymond,Wilson (include the student names in the result). 
3.	Write the following additional queries on the original database tables:
(i)	Retrieve the PHDSTUDENT Id, FName, LName, and MILESTONE MName and PassDate for the milestones passed by each student.
(ii)	Retrieve the PHDSTUDENT Id, FName, Lname, and the supporting GRANT Name for all students who are GRAs.
(iii)	Retrieve the PHDSTUDENT Id, FName, Lname, and the COURSE Name they are working on for all students who are GTAs.

use doctoraldb;

# Retrieve for each instructor the IId, IFName, ILName, NoOfStudentsSupervised (the last is a COUNT aggregate function).

-- SELECT	IId, IFName, ILName, count(SId) as NoOfStudentsSupervised
-- FROM  supervision_info
-- GROUP BY IId;



-- # Retrieve the student names (FName, LName) whose supervisor is FName=Ahmed and LName=Sarhan

-- SELECT	SFName, SLName
-- FROM  supervision_info
-- Where IFName="Ahmed" and ILName="Sarhan";

# Retrieve the supervisor names (FName, LName) for the students whose names (FName, LName) are Ife,Jelani and Maya,Smith and Raymond,Wilson (include the student names in the result). 

-- SELECT	SFName, SLName, IFName, ILName
-- FROM  supervision_info
-- Where (SFName="Ife" and SLName="Jelani") or (SFName="Maya" and SLName="Smith") or (SFName="Raymond" and SLName="Wilson");

-- SELECT * FROM SUPERVISION_INFO;

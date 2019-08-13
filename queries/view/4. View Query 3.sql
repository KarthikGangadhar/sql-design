use doctoraldb;

# Retrieve the supervisor names (FName, LName) for the students whose names (FName, LName) are Ife,Jelani and Maya,Smith and Raymond,Wilson (include the student names in the result). 

SELECT	SFName, SLName, IFName, ILName
FROM  supervision_info
Where (SFName="Ife" and SLName="Jelani") or (SFName="Maya" and SLName="Smith") or (SFName="Raymond" and SLName="Wilson");



-- SELECT * FROM SUPERVISION_INFO;

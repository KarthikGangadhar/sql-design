CREATE TABLE `doctoraldb`.`phdcommittee` (
  `StudentId` VARCHAR(45) NOT NULL,
  `InstructorId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`StudentId`,`InstructorId`),
  FOREIGN KEY (`StudentId`) REFERENCES `doctoraldb`.`phdstudent` (`StudentId`),
  FOREIGN KEY (`InstructorId`) REFERENCES `doctoraldb`.`tt` (`InstructorId`));

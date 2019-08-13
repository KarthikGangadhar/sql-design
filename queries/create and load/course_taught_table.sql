CREATE TABLE `doctoraldb`.`coursetaught` (
  `CourseId` VARCHAR(45) NOT NULL,
  `InstructorId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CourseId`,`InstructorId`),
  FOREIGN KEY (`CourseId`) REFERENCES `doctoraldb`.`course` (`CourseId`),
  FOREIGN KEY (`InstructorId`) REFERENCES `doctoraldb`.`instructor` (`InstructorId`));
CREATE TABLE `doctoraldb`.`grantassociated` (
  `AccountNo` VARCHAR(45) NOT NULL,
  `InstructorId` VARCHAR(45) NOT NULL,
  `InstrType` VARCHAR(45) NULL,
  PRIMARY KEY (`AccountNo`, `InstructorId`),
  FOREIGN KEY (`AccountNo`) REFERENCES `doctoraldb`.`grants` (`AccountNo`),
  FOREIGN KEY (`InstructorId`) REFERENCES `doctoraldb`.`tt` (`InstructorId`));
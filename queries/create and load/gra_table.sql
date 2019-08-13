CREATE TABLE `doctoraldb`.`gra` (
  `StudentId` VARCHAR(45) NOT NULL,
  `Funding` VARCHAR(45) ,
  `MonthlyPay` INT ,
  PRIMARY KEY (`StudentId`),
  FOREIGN KEY (`StudentId`) REFERENCES `doctoraldb`.`phdstudent` (`StudentId`),
  FOREIGN KEY (`Funding`) REFERENCES `doctoraldb`.`grants` (`AccountNo`));

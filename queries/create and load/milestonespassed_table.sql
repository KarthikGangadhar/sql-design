CREATE TABLE `doctoraldb`.`milestonespassed` (
  `StudentId` VARCHAR(45) NOT NULL,
  `MId` VARCHAR(45) NOT NULL,
  `PassDate` VARCHAR(45) NULL,
  PRIMARY KEY (`StudentId`,`MId`),
  FOREIGN KEY (`StudentId`) REFERENCES `doctoraldb`.`phdstudent` (`StudentId`),
  FOREIGN KEY (`MId`) REFERENCES `doctoraldb`.`milestone` (`MId`));

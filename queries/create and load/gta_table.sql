CREATE TABLE `doctoraldb`.`gta` (
  `SectionId` VARCHAR(45) NOT NULL,
  `MonthlyPay` INT NOT NULL,
  `StudentId` VARCHAR(45) NULL,
  PRIMARY KEY (`SectionId`),
  FOREIGN KEY (`SectionId`) REFERENCES `doctoraldb`.`section` (`SectionId`),
  FOREIGN KEY (`StudentId`) REFERENCES `doctoraldb`.`phdstudent` (`StudentId`));

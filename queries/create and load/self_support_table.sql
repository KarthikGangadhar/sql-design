CREATE TABLE `doctoraldb`.`selfsupport` (
  `StudentId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`StudentId`),
  FOREIGN KEY (`StudentId`) REFERENCES `doctoraldb`.`phdstudent` (`StudentId`));
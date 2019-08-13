CREATE TABLE `doctoraldb`.`scholarshipsupport` (
  `StudentId` VARCHAR(45) NOT NULL,
  `Type` VARCHAR(45) NULL,
  `Source` VARCHAR(45) NULL,
  PRIMARY KEY (`StudentId`),
  CONSTRAINT `StudentId`
    FOREIGN KEY (`StudentId`)
    REFERENCES `doctoraldb`.`phdstudent` (`StudentId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
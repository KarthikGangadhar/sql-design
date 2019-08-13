CREATE TABLE `doctoraldb`.`phdstudent` (
  `StudentId` VARCHAR(45) NOT NULL,
  `FName` VARCHAR(45) NULL,
  `LName` VARCHAR(45) NULL,
  `StSem` VARCHAR(15) NOT NULL,
  `StYear` INT NOT NULL,
  `Supervisor` VARCHAR(45) NULL,
  PRIMARY KEY (`StudentId`),
  CONSTRAINT `Supervisor`
    FOREIGN KEY (`Supervisor`)
    REFERENCES `doctoraldb`.`instructor` (`InstructorId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

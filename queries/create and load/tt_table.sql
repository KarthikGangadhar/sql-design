CREATE TABLE `doctoraldb`.`tt` (
  `InstructorId` VARCHAR(45) NOT NULL,
  `NoOfPhDStudents` INT NULL,
  PRIMARY KEY (`InstructorId`),
  CONSTRAINT `InstructorId`
    FOREIGN KEY (`InstructorId`)
    REFERENCES `doctoraldb`.`instructor` (`InstructorId`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);
    
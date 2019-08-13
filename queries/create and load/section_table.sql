CREATE TABLE `doctoraldb`.`section` (
  `SectionId` VARCHAR(45) NOT NULL,
  `CourseId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`SectionId`),
  CONSTRAINT `CourseId`
    FOREIGN KEY (`CourseId`)
    REFERENCES `doctoraldb`.`course` (`CourseId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
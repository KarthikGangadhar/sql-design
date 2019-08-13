CREATE TABLE `doctoraldb`.`grants` (
  `AccountNo` VARCHAR(45) NOT NULL,
  `Type` VARCHAR(45) NULL,
  `GrantTitle` VARCHAR(45) NULL,
  `Sourc` VARCHAR(45) NULL,
  `StDate` DATE NULL,
  `EndDate` DATE NULL,
  `StAmount` INT NULL,
  `CurrBalance` INT NULL,
  PRIMARY KEY (`AccountNo`));
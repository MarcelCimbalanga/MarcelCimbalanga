CREATE SCHEMA `african_countries` ;
CREATE TABLE `african_countries`.`countries list` (
  `country id` CHAR(3) NOT NULL,
  `country name` VARCHAR(45) NOT NULL,
  `population` INT NOT NULL,
  `official language` VARCHAR(45) NOT NULL,
  `area in km2` INT NOT NULL,
  `subregion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`country id`));

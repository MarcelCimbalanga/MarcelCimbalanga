-- Creating a new table called countries_stats in african_countries database
CREATE TABLE `african_countries`.`countries_stats` (
  `country id` CHAR(3) NOT NULL,
  `africa rank` INT NOT NULL,
  `world rank` INT NOT NULL,
  `water area` INT NOT NULL,
  `major religion` VARCHAR(45) NOT NULL,
  `currency` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`country id`));
  
  --Altering countries_list table
ALTER TABLE `african_countries`.`countries_list` 
CHANGE COLUMN `country id` `country_id` CHAR(3) NOT NULL ,
CHANGE COLUMN `country name` `country_name` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `official language` `official_ language` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `area in km2` `area_in_km2` INT NOT NULL ;

-- Altering countries_stats table
ALTER TABLE `african_countries`.`countries_stats` 
CHANGE COLUMN `country id` `country_id` CHAR(3) NOT NULL ,
CHANGE COLUMN `africa rank` `africa_rank` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `world rank` `world_rank` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `water area` `water_area` INT NOT NULL,
CHANGE COLUMN `major religion` `major_religion` INT NOT NULL,
 
 
--Inserting new records in table countries_stats
INSERT INTO `african_countries`.`countries_stats` (`country id`, `africa rank`, `world rank`, `water area`, `major religion`, `currency`) 
VALUES ('EGY', '12', '30', '6000	', 'islam', 'egyptian pound'),
	   ('GHA', '32', '82', '11000	', 'christianity', 'cedi'),
       ('LBY', '4', '17', '0', 'islam', 'libyan dinar'),
       ('MWI', '37', '100', '24404', 'christianity', 'malawian kwacha'),
       ('NAM', '15', '34', '1002', 'christianity', 'namibian dollar'),
       ('NER', '6', '22', '300	', 'islam', 'west african cfa franc'),
       ('TUN', '36', '93', '8250	', 'islam', 'tunisian dinar');
       ('UGA', '33', '81', '43938	', 'christianity', 'ugandian shilling'), 
       ('ZMB', '17', '39', '9220	', 'christianity', 'zambian kwacha'),
       ('ZWE', '26', '61', '3910	', 'christianity', 'zimbabwean dollar');

-- Showing table structure and data
explain countries_list;
select* from countries_list;

explain countries_stats;
select* from countries_stats;

-- Filtering data using comparison operators
select* from countries_list
where population between 20000000 and 60000000;

-- Running a simple query
select *
from countries_list;
select *
from countries_stats;


-- Running a complex query
select* from countries_list, countries_stats
where countries_list.country_id = countries_stats.country_id and countries_stats.major_religion = 'islam';



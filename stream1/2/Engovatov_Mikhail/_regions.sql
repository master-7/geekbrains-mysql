/*Модификация Енговатова Михаила*/
ALTER TABLE `geodata`.`_regions` 
DROP COLUMN `title_cz`,
DROP COLUMN `title_lv`,
DROP COLUMN `title_lt`,
DROP COLUMN `title_ja`,
DROP COLUMN `title_pl`,
DROP COLUMN `title_it`,
DROP COLUMN `title_fr`,
DROP COLUMN `title_de`,
DROP COLUMN `title_pt`,
DROP COLUMN `title_es`,
DROP COLUMN `title_en`,
DROP COLUMN `title_be`,
DROP COLUMN `title_ua`,
CHANGE COLUMN `region_id` `id` INT NOT NULL AUTO_INCREMENT COMMENT '' ,
CHANGE COLUMN `title_ru` `title` VARCHAR(150) NOT NULL COMMENT '' ,
ADD PRIMARY KEY (`id`)  COMMENT '',
ADD INDEX `_countries (id)_idx` (`country_id` ASC)  COMMENT '';
ALTER TABLE `geodata`.`_regions` 
ADD CONSTRAINT `_countries (id)`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
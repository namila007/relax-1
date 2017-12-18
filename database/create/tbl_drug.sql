CREATE TABLE IF NOT EXISTS `dental_db`.`tbl_drug` (
  `ID` CHAR(32) NOT NULL,
  `DRUG_CODE` CHAR(128) NULL,
  `GENERIC_NAME` CHAR(128) NULL,
  `CHEMICAL_NAME` CHAR(128) NULL,
  `BRAND_NAME` CHAR(128) NULL,
  `CATEGORY` CHAR(128) NULL,
  `COMMENT` CHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `STATUS` TINYINT(4) NULL DEFAULT '0',
  `SORT_ORDER` INT(6) NULL DEFAULT '1',
  `INSERT_USER_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `INSERT_DATETIME` DATETIME NULL DEFAULT NULL,
  `UPDATE_USER_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `UPDATE_DATETIME` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;
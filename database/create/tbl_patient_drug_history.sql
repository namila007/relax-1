CREATE TABLE IF NOT EXISTS `dental_db`.`tbl_patient_drug_history` (
  `ID` CHAR(32) NOT NULL,
  `PATIENT_ID` CHAR(32) NOT NULL,
  `DRUG_ID` CHAR(32) NOT NULL,
  `DOSE` CHAR(128) NULL DEFAULT NULL,
  `DURATION` CHAR(128) NULL DEFAULT NULL,
  `DATA_ADDED_BY` CHAR(32) NULL,
  `APPROVED_BY` CHAR(32) NULL DEFAULT NULL,
  `COMMENT` CHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `STATUS` TINYINT(4) NULL DEFAULT '0',
  `SORT_ORDER` INT(6) NULL DEFAULT '1',
  `INSERT_USER_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `INSERT_DATETIME` DATETIME NULL,
  `UPDATE_USER_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `UPDATE_DATETIME` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_tbl_patient_drug_history_tbl_drug_list1_idx` (`DRUG_ID` ASC),
  CONSTRAINT `fk_tbl_patient_drug_history_tbl_drug_list1`
    FOREIGN KEY (`DRUG_ID`)
    REFERENCES `dental_db`.`tbl_drug` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


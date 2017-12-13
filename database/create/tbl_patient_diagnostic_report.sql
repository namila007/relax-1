CREATE TABLE IF NOT EXISTS `dental_db`.`tbl_patient_diagnostic_report` (
  `ID` CHAR(32) NOT NULL,
  `PATIENT_ID` CHAR(32) NOT NULL,
  `PAST_DENTAL_HISTORY_ID` CHAR(32) NOT NULL,
  `MEDICAL_RECORD_ID` CHAR(32) NOT NULL,
  `PLAQUE_CONTROL_ID` CHAR(32) NOT NULL,
  `DIETARY_HISTORY_ID` CHAR(32) NOT NULL,
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
  INDEX `fk_tbl_patient_diagnostic_report_tbl_patient_past_dental_hi_idx` (`PAST_DENTAL_HISTORY_ID` ASC),
  INDEX `fk_tbl_patient_diagnostic_report_tbl_patient_medical_record_idx` (`MEDICAL_RECORD_ID` ASC),
  INDEX `fk_tbl_patient_diagnostic_report_tbl_patient_plaque_control_idx` (`PLAQUE_CONTROL_ID` ASC),
  INDEX `fk_tbl_patient_diagnostic_report_tbl_patient_dietary_histor_idx` (`DIETARY_HISTORY_ID` ASC),
  CONSTRAINT `fk_tbl_patient_diagnostic_report_tbl_patient_past_dental_hist1`
    FOREIGN KEY (`PAST_DENTAL_HISTORY_ID`)
    REFERENCES `dental_db`.`tbl_patient_past_dental_history` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_patient_diagnostic_report_tbl_patient_medical_record1`
    FOREIGN KEY (`MEDICAL_RECORD_ID`)
    REFERENCES `dental_db`.`tbl_patient_medical_record` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_patient_diagnostic_report_tbl_patient_plaque_control1`
    FOREIGN KEY (`PLAQUE_CONTROL_ID`)
    REFERENCES `dental_db`.`tbl_patient_plaque_control` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_patient_diagnostic_report_tbl_patient_dietary_history1`
    FOREIGN KEY (`DIETARY_HISTORY_ID`)
    REFERENCES `dental_db`.`tbl_patient_dietary_history` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

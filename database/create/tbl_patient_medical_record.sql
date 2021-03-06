CREATE TABLE IF NOT EXISTS `dental_db`.`tbl_patient_medical_record` (
  `ID` CHAR(32) NOT NULL,
  `ALLERGY_DRUG` CHAR(128) NULL DEFAULT NULL,
  `ALLERGY_FOOD` CHAR(128) NULL DEFAULT NULL,
  `ALLERGY_LATEX` CHAR(128) NULL DEFAULT NULL,
  `ALLERGY_OTHER` CHAR(128) NULL DEFAULT NULL,
  `ANAEMIA` TINYINT(6) NULL DEFAULT '0',
  `ASTHMA` TINYINT(6) NULL DEFAULT '0',
  `BLEEDING_DISORDER` CHAR(32) NULL DEFAULT NULL,
  `CARDIAC_DISORDERS` CHAR(128) NULL DEFAULT NULL,
  `DEVELOPMENTAL` CHAR(128) NULL DEFAULT NULL,
  `EPILEPSY` TINYINT(6) NULL DEFAULT NULL,
  `ENDOCRINE` CHAR(128) NULL DEFAULT NULL,
  `GASTRO_INTESTINAL` CHAR(128) NULL DEFAULT NULL,
  `HEPATITIS` CHAR(32) NULL DEFAULT NULL,
  `HIV` TINYINT(6) NULL DEFAULT '0',
  `HYPERTENSION` TINYINT(6) NULL DEFAULT '0',
  `LIVER_DISORDER` TINYINT(6) NULL DEFAULT '0',
  `MUSCULO_SKELETAL` CHAR(128) NULL DEFAULT NULL,
  `NEUROLOGICAL_DISORDER` CHAR(128) NULL DEFAULT NULL,
  `BEHAVIORAL_DISORDER` CHAR(128) NULL DEFAULT NULL,
  `TMD` CHAR(128) NULL DEFAULT NULL,
  `RENAL_DISORDER` CHAR(128) NULL DEFAULT NULL,
  `OTHER_DISORDERS` CHAR(128) NULL DEFAULT NULL,
  `PREGNANCY` CHAR(128) NULL DEFAULT NULL,
  `COMMENT` CHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `STATUS` TINYINT(4) NULL DEFAULT '0',
  `SORT_ORDER` INT(6) NULL DEFAULT '1',
  `INSERT_USER_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `INSERT_DATETIME` DATETIME NULL DEFAULT NULL,
  `UPDATE_USER_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `UPDATE_DATETIME` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

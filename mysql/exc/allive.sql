drop table infrCodeGroup;
drop table infrCode;
drop table infrMember;

CREATE TABLE IF NOT EXISTS `infrCodeGroup` (
  `ifcgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcgSeqAnother` VARCHAR(45) NULL,
  `ifcgName` VARCHAR(45) NULL,
  `ifcgUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcgDesc` VARCHAR(255) NULL,
  `ifcgDelNy` TINYINT NULL,
  `ifcgRegIp` VARCHAR(45) NULL,
  `ifcgRegSeq` BIGINT NULL,
  `ifcgRegDevice` TINYINT NULL,
  `ifcgRegDatetime` DATETIME NULL,
  `ifcgRegSvrDatetime` DATETIME NULL,
  `ifcgModIp` VARCHAR(45) NULL,
  `ifcgModDevice` TINYINT NULL,
  `ifcgModDatetime` DATETIME NULL,
  `ifcgModSvrDatetime` DATETIME NULL,
  PRIMARY KEY (`ifcgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

CREATE TABLE IF NOT EXISTS `infrCode` (
  `ifcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdSeqAnother` VARCHAR(45) NULL,
  `ifcdName` VARCHAR(45) NULL,
  `ifcdUseNy` TINYINT NULL,
  `ifcdOrder` TINYINT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NULL,
  `ifcdRegIp` VARCHAR(45) NULL,
  `ifcdRegSeq` BIGINT NULL,
  `ifcdRegDevice` TINYINT NULL,
  `ifcdRegDatetime` DATETIME NULL,
  `ifcdRegSvrDatetime` DATETIME NULL,
  `ifcdModIp` VARCHAR(45) NULL,
  `ifcdModDevice` TINYINT NULL,
  `ifcdModDatetime` DATETIME NULL,
  `ifcdModSvrDatetime` DATETIME NULL,
  `infrCodeGroup_ifcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdSeq`, `infrCodeGroup_ifcgSeq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`infrCodeGroup_ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup`
    FOREIGN KEY (`infrCodeGroup_ifcgSeq`)
    REFERENCES `infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

CREATE TABLE IF NOT EXISTS `infrMember` (
  `ifmmSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmmAdminNy` TINYINT NULL,
  `ifmmsleepyNy` TINYINT NULL,
  `ifmmId` VARCHAR(45) NULL,
  `ifmmPwd` VARCHAR(100) NULL,
  `ifmmPwdModDatetime` DATETIME NULL,
  `ifmmName` VARCHAR(45) NULL,
  `ifmmDob` DATE NULL,
  `ifmmGenderCd` TINYINT NULL,
  `ifmmPwdQeustionCd` TINYINT NULL,
  `ifmmPwdAnswer` VARCHAR(45) NULL,
  `ifmmRewardingCd` TINYINT NULL,
  `ifmmOccupation` VARCHAR(45) NULL,
  `ifmmHobbyCd` TINYINT NULL,
  `ifmmColor` VARCHAR(45) NULL,
  `ifmmMaritalStatusCd` TINYINT NULL,
  `ifmmAnniversary` DATE NULL,
  `ifmmChild` TINYINT NULL,
  `ifmmCoverLetter` VARCHAR(255) NULL,
  `ifmmPIVPCd` TINYINT NULL,
  `ifmmRegIp` VARCHAR(45) NULL,
  `ifmmRegSeq` VARCHAR(45) NULL,
  `ifmmRegDevice` TINYINT NULL,
  `ifmmRegDatetime` DATETIME NULL,
  `ifmmRegSrvDatetime` DATETIME NULL,
  `ifmmModIp` VARCHAR(45) NULL,
  `ifmmModSeq` VARCHAR(45) NULL,
  `ifmmModDevice` VARCHAR(45) NULL,
  `ifmmModDatetime` DATETIME NULL,
  `ifmmSmsConsentNy` TINYINT NULL,
  `ifmmModSrvDatetime` DATETIME NULL,
  `ifmmPushConsentNy` TINYINT NULL,
  `ifmmEmailConsentNy` TINYINT NULL,
  `ifmmModPushConsentNyDatetime` DATETIME NULL,
  `ifmmModSmsConsentNyDatetime` DATETIME NULL,
  `ifmmModEmailConsentNyDatetime` DATETIME NULL,
  PRIMARY KEY (`ifmmSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;
insert into infrCodeGroup (
ifcgSeq
,ifcgName
) values (
'10'
,'infrmembersnsinfrmembersnsinfrmembersnsinfrmemberprojectinfrmembercontactinfrmembersns'
);

select * from infrCodeGroup;

DELETE FROM infrCodeGroup WHERE ifcgSeq = 9;



insert into infrCode (
ifcdSeq
,ifcdName
,infrCodeGroup_ifcgSeq
) values (
'3'
,'기타'
,'1'
)
;
drop table ifmaMemberAddress;
CREATE TABLE IF NOT EXISTS `ifmaMemberAddress` (
  `ifmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmaDefaultNy` TINYINT NULL,
  `ifmaTypeCd` TINYINT NULL,
  `ifmaAddress1Cd` TINYINT NULL,
  `ifmaAddress2` VARCHAR(45) NULL,
  `ifmaRegIp` VARCHAR(45) NULL,
  `ifmaRegSeq` VARCHAR(45) NULL,
  `ifmaRegDevice` VARCHAR(45) NULL,
  `ifmaRegDatetime` DATETIME NULL,
  `ifmaRegSvrDatetime` DATETIME NULL,
  `ifmaModIp` VARCHAR(45) NULL,
  `ifmaModSeq` VARCHAR(45) NULL,
  `ifmaModDevice` VARCHAR(45) NULL,
  `ifmaModDatetime` DATETIME NULL,
  `ifmaModSvrDatetime` DATETIME NULL,
  `infrMember_ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmaSeq`),
  INDEX `fk_ifmaMemberAddress_infrMember1_idx` (`infrMember_ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ifmaMemberAddress_infrMember1`
    FOREIGN KEY (`infrMember_ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;
drop table infrMemberSns;
CREATE TABLE IF NOT EXISTS `infrMemberSns` (
  `ifmsSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmsUseNy` TINYINT NULL,
  `ifmsSnsCd` TINYINT NULL,
  `ifmsSnsUrl` VARCHAR(45) NULL,
  `ifmsRegIp` VARCHAR(45) NULL,
  `ifmsRegSeq` VARCHAR(45) NULL,
  `ifmsRegDevice` VARCHAR(45) NULL,
  `ifmsRegDatetime` DATETIME NULL,
  `ifmsRegSrvDatetime` DATETIME NULL,
  `ifmsModIp` VARCHAR(45) NULL,
  `ifmsModSeq` VARCHAR(45) NULL,
  `ifmsModDevice` VARCHAR(45) NULL,
  `ifmsModDatetime` DATETIME NULL,
  `ifmsModSrvDatetime` DATETIME NULL,
  `infrMember_ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmsSeq`),
  INDEX `fk_infrMemberSns_infrMember1_idx` (`infrMember_ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberSns_infrMember1`
    FOREIGN KEY (`infrMember_ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

drop table infrMemberProject;
CREATE TABLE IF NOT EXISTS `infrMemberProject` (
  `ifmpSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmpName` VARCHAR(45) NULL,
  `ifmpPeriodStart` DATE NULL,
  `ifmpPeriodEnd` DATE NULL,
  `ifmpRole` VARCHAR(45) NULL,
  `ifmpClient` VARCHAR(45) NULL,
  `ifmpRegIp` VARCHAR(45) NULL,
  `ifmpRegSeq` VARCHAR(45) NULL,
  `ifmpRegDevice` VARCHAR(45) NULL,
  `ifmpRegDatetime` DATETIME NULL,
  `ifmpRegSvrDatetime` DATETIME NULL,
  `ifmpModIp` VARCHAR(45) NULL,
  `ifmpModSeq` VARCHAR(45) NULL,
  `ifmpModDevice` VARCHAR(45) NULL,
  `ifmpModDatetime` DATETIME NULL,
  `ifmpModSvrDatetime` DATETIME NULL,
  `infrMember_ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmpSeq`),
  INDEX `fk_infrMemberProject_infrMember1_idx` (`infrMember_ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberProject_infrMember1`
    FOREIGN KEY (`infrMember_ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

drop table infrMemberNationality;
CREATE TABLE IF NOT EXISTS `infrMemberNationality` (
  `ifmnSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmnUseNy` INT NULL,
  `ifmnNationalityCd` INT NULL,
  `ifmnRegIp` VARCHAR(45) NULL,
  `ifmnRegSeq` VARCHAR(45) NULL,
  `ifmnRegDevice` VARCHAR(45) NULL,
  `ifmnRegDatetime` DATETIME NULL,
  `ifmnRegSvrDatetime` DATETIME NULL,
  `ifmnModIp` VARCHAR(45) NULL,
  `ifmnModSeq` VARCHAR(45) NULL,
  `ifmnModDevice` VARCHAR(45) NULL,
  `ifmnModDatetime` DATETIME NULL,
  `ifmnModSvrDatetime` DATETIME NULL,
  `infrMember_ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmnSeq`),
  INDEX `fk_infrMemberNationality_infrMember1_idx` (`infrMember_ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberNationality_infrMember1`
    FOREIGN KEY (`infrMember_ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

drop table infrMemberEmail;
CREATE TABLE IF NOT EXISTS `infrMemberEmail` (
  `ifmeSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmeDefaultNy` TINYINT NULL,
  `ifmeUseNy` TINYINT NULL,
  `ifmeEmailfull` VARCHAR(45) NULL,
  `ifmeEmailId` VARCHAR(45) NULL,
  `ifmeEmailDomainCd` TINYINT NULL,
  `ifmeRegIp` VARCHAR(45) NULL,
  `ifmeRegSeq` VARCHAR(45) NULL,
  `ifmeRegDevice` TINYINT NULL,
  `ifmeRegDatetime` DATETIME NULL,
  `ifmeRegSvrDatetime` DATETIME NULL,
  `ifmeModIp` VARCHAR(45) NULL,
  `ifmeModSeq` VARCHAR(45) NULL,
  `ifmeModDevice` VARCHAR(45) NULL,
  `ifmeModDatetime` DATETIME NULL,
  `ifmeModSrvDatetime` DATETIME NULL,
  `infrMember_ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmeSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`infrMember_ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember1`
    FOREIGN KEY (`infrMember_ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

drop table infrMemberContact;
CREATE TABLE IF NOT EXISTS `infrMemberContact` (
  `ifmcSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmcDefaultNy` TINYINT NULL,
  `ifmcUseNyCd` TINYINT NULL,
  `ifmcMobileCarrierCd` TINYINT NULL,
  `ifmcMobileNum` INT NULL,
  `ifmcFaxNum` INT NULL,
  `ifmcRegIp` VARCHAR(45) NULL,
  `ifmcRegSeq` VARCHAR(45) NULL,
  `ifmcRegDevice` VARCHAR(45) NULL,
  `ifmcRegDatetime` DATETIME NULL,
  `ifmcRegSrvDatetime` DATETIME NULL,
  `ifmcModIp` VARCHAR(45) NULL,
  `ifmcModSeq` VARCHAR(45) NULL,
  `ifmcModDevice` VARCHAR(45) NULL,
  `ifmcModDatetime` DATETIME NULL,
  `ifmcModSrvDatetime` DATETIME NULL,
  `infrMember_ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmcSeq`),
  INDEX `fk_infrMemberContact_infrMember1_idx` (`infrMember_ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberContact_infrMember1`
    FOREIGN KEY (`infrMember_ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

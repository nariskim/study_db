drop table infrmemberphone;

CREATE TABLE IF NOT EXISTS `infrMemberPhone` (
  `ifmpSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmpDefaultNy` TINYINT NOT NULL,
  `ifmpTypeCd` TINYINT NULL,
  `ifmpDeviceCd` TINYINT NULL,
  `ifmpTelecomCd` TINYINT NULL,
  `ifmpNumber` VARCHAR(50) NULL,
  `ifmpDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `ModIp` VARCHAR(100) NULL,
  `ModSeq` BIGINT NULL,
  `ModDevice` TINYINT NULL,
  `ModDateTime` DATETIME NULL,
  `ModDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmpSeq`),
  INDEX `fk_infrMemberPhone_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberPhone_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infrmemberphone`
(
`ifmpDefaultNy`,
`ifmpTypeCd`,
`ifmpDeviceCd`,
`ifmpTelecomCd`,
`ifmpNumber`,
`ifmpDelNy`,
`ifmmSeq`)
VALUES
(
1
,61
,21
,25
,01099999999
,0
,1
);


select * from infrmemberphone;


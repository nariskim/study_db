CREATE TABLE IF NOT EXISTS `infrMemberAddressOnline` (
  `ifaoSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifaoTypeCd` TINYINT NULL,
  `ifaoDefaultNy` TINYINT NOT NULL,
  `ifaoSnsTypeCd` TINYINT NULL,
  `ifaoUrl` VARCHAR(100) NULL,
  `ifaoTitle` VARCHAR(100) NULL,
  `ifaoDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifaoSeq`),
  INDEX `fk_infrMemberAddressOnline_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberAddressOnline_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;
INSERT INTO `nct`.`infrmemberaddressonline`
(
`ifaoTypeCd`,
`ifaoDefaultNy`,
`ifaoSnsTypeCd`,
`ifaoUrl`,
`ifaoTitle`,
`ifaoDelNy`,


`ifmmSeq`)
VALUES
(
29,
1,
30,
"https://ko-kr.facebook.com/",
"회사홍보",
0,


1);

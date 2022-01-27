use world;

CREATE TABLE IF NOT EXISTS `member` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `phoneNo` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` INT NULL,
  `member_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_gender_member1_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_gender_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * from member;
desc member;

insert into member (
name
) values (
'김나나'
);


insert into phoneNo (
number
,member_seq
) values (
01078945328
,1

);
drop table phoneNo;
select * from phoneNo;

select
a.number
,b.name
from phoneNo a
left join member b on a.member_seq = b.seq;
-- inner join member b on a.member_seq = a.seq;
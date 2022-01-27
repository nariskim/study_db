use world;

CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

drop table codeGroup;
drop table code;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`code`, `codeGroup_seq`),
  INDEX `fk_code_codeGroup_idx` (`codeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into codeGroup (
seq
,name
) values (
'infra001'
,'성별'
);

insert into code (
code
,name
,codeGroup_seq
) values (
'3'
,'여성'
,'infra001'
)
;

select * from codeGroup;


select
a.seq
,a.name
,b.code
,b.name
from codeGroup a
left join code b on b.codeGroup_seq = a.seq
-- left join b on b.
;

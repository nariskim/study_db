use world;
CREATE TABLE IF NOT EXISTS `book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

insert into book5 (
name
) values(
'이것은자바다'
);
insert into book5 (
name
) values(
'프로그래밍가이드북'
);
insert into book5 (
name
) values(
'안드로이드'
);
insert into book5 (
name
) values(
'4차산업혁명의미래'
);

select * from book5;

desc book5;

CREATE TABLE IF NOT EXISTS`review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review5_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review5_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * from review5;

desc review5;

insert into review5 (
comment
, book5_no
) values (
'재밌어요'
,5
);

-- 점선 : nonidentifying
-- 실선 : indentifying

select
a.name
,(select count(no) from review5 where book5_no = a.no) as count
from book5 a
;

select
a.comment
,b.name
from review5 a
left join book5 b on a.book5_no = b.no
-- inner join review5 b on b.book5_no = a.no
;

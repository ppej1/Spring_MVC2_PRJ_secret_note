
/* Drop Tables */

DROP TABLE Receipt CASCADE CONSTRAINTS;
DROP TABLE Account CASCADE CONSTRAINTS;
DROP TABLE Comments CASCADE CONSTRAINTS;
DROP TABLE CheckList CASCADE CONSTRAINTS;
DROP TABLE Disposal CASCADE CONSTRAINTS;
DROP TABLE Stock CASCADE CONSTRAINTS;
DROP TABLE Uses CASCADE CONSTRAINTS;
DROP TABLE Employee CASCADE CONSTRAINTS;
DROP TABLE NuturitionDB CASCADE CONSTRAINTS;
DROP TABLE SubClass CASCADE CONSTRAINTS;
DROP TABLE MainClass CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE Account
(
	accountName varchar2(40) NOT NULL,
	aImg varchar2(200),
	aManager varchar2(40) NOT NULL,
	aPhone varchar2(40) NOT NULL,
	-- 회사설명
	aContents varchar2(1000),
	-- 홈페이지 주소
	aURL varchar2(300),
	ACCOUNTSERIAL number NOT NULL,
	PRIMARY KEY (ACCOUNTSERIAL)
);


CREATE TABLE CheckList
(
	ckSerialNumber varchar2(40) NOT NULL,
	ckTitle varchar2(100) NOT NULL,
	-- check 제약 조건으로 완료. 미완료만 사용
	completes varchar2(40) NOT NULL,
	-- check제약조건으로 상중하만 입력 가능
	importance varchar2(40) NOT NULL,
	-- 등록한 직원
	registId varchar2(40) NOT NULL,
	rDate date NOT NULL,
	finisher varchar2(40),
	fDate date,
	PRIMARY KEY (ckSerialNumber)
);


CREATE TABLE Comments
(
	cSerialNumber varchar2(40) NOT NULL,
	ckSerialNumber varchar2(40) NOT NULL,
	userid varchar2(40) NOT NULL,
	comments varchar2(100) NOT NULL,
	cDate date NOT NULL,
	CHECKDATE date,
	PRIMARY KEY (cSerialNumber)
);


CREATE TABLE Disposal
(
	dSerialNumber varchar2(40) NOT NULL,
	scSerialNumber varchar2(40) NOT NULL,
	userid varchar2(40) NOT NULL,
	dDate date NOT NULL,
	dAmount number NOT NULL,
	condition varchar2(40) DEFAULT 'Disposal' NOT NULL,
	PRIMARY KEY (dSerialNumber)
);


CREATE TABLE Employee
(
	userid varchar2(40) NOT NULL,
	userpwd varchar2(40) NOT NULL,
	eImg varchar2(200) NOT NULL,
	userName varchar2(40) NOT NULL,
	rank varchar2(40) NOT NULL,
	email varchar2(40) NOT NULL,
	ePhone varchar2(40) NOT NULL,
	-- check 제약조건으로 퇴직, 현직 으로 나뉨
	status varchar2(40),
	PRIMARY KEY (userid)
);


CREATE TABLE MainClass
(
	mcSerialNumber varchar2(40) NOT NULL,
	mClass varchar2(40) NOT NULL,
	PRIMARY KEY (mcSerialNumber)
);


CREATE TABLE NuturitionDB
(
	foodTitle varchar2(40) NOT NULL,
	indexs varchar2(40) NOT NULL,
	foodGroup varchar2(40) NOT NULL,
	energy number NOT NULL,
	protein number NOT NULL,
	carbon number NOT NULL,
	sugar number NOT NULL,
	natrium number NOT NULL,
	chole number NOT NULL,
	nutritionserial number NOT NULL,
	foodCode varchar2(40) NOT NULL UNIQUE,
	PRIMARY KEY (nutritionserial)
);


CREATE TABLE Receipt
(
	rSerialNumber varchar2(40) NOT NULL,
	scSerialNumber varchar2(40) NOT NULL,
	userid varchar2(40) NOT NULL,
	rAmount number NOT NULL,
	rDate date NOT NULL,
	-- 입고시 상태를 적어놓는다
	rComment varchar2(100),
	ACCOUNTSERIAL number NOT NULL,
	PRIMARY KEY (rSerialNumber)
);


CREATE TABLE Stock
(
	sSerialNumber varchar2(40) NOT NULL,
	scSerialNumber varchar2(40) NOT NULL,
	userid varchar2(40) NOT NULL,
	sDate date NOT NULL,
	deDate date NOT NULL,
	PRIMARY KEY (sSerialNumber)
);


CREATE TABLE SubClass
(
	scSerialNumber varchar2(40) NOT NULL,
	mcSerialNumber varchar2(40) NOT NULL,
	sImg varchar2(200),
	sName varchar2(40) NOT NULL,
	unit varchar2(40) NOT NULL,
	-- 
	-- 
	price number NOT NULL,
	location varchar2(40) NOT NULL,
	foodCode varchar2(40) NOT NULL,
	eDate varchar2(20) NOT NULL,
	PRIMARY KEY (scSerialNumber)
);


CREATE TABLE Uses
(
	uSerialNumber varchar2(40) NOT NULL,
	scSerialNumber varchar2(40) NOT NULL,
	userid varchar2(40) NOT NULL,
	uDate date NOT NULL,
	uAmount number NOT NULL,
	condition varchar2(40) DEFAULT 'Uses' NOT NULL,
	PRIMARY KEY (uSerialNumber)
);



/* Create Foreign Keys */

ALTER TABLE Receipt
	ADD FOREIGN KEY (ACCOUNTSERIAL)
	REFERENCES Account (ACCOUNTSERIAL)
;


ALTER TABLE Comments
	ADD FOREIGN KEY (ckSerialNumber)
	REFERENCES CheckList (ckSerialNumber)
;


ALTER TABLE Comments
	ADD FOREIGN KEY (userid)
	REFERENCES Employee (userid)
;


ALTER TABLE Disposal
	ADD FOREIGN KEY (userid)
	REFERENCES Employee (userid)
;


ALTER TABLE Receipt
	ADD FOREIGN KEY (userid)
	REFERENCES Employee (userid)
;


ALTER TABLE Stock
	ADD FOREIGN KEY (userid)
	REFERENCES Employee (userid)
;


ALTER TABLE Uses
	ADD FOREIGN KEY (userid)
	REFERENCES Employee (userid)
;


ALTER TABLE SubClass
	ADD FOREIGN KEY (mcSerialNumber)
	REFERENCES MainClass (mcSerialNumber)
;


ALTER TABLE Disposal
	ADD FOREIGN KEY (scSerialNumber)
	REFERENCES SubClass (scSerialNumber)
;


ALTER TABLE NuturitionDB
	ADD FOREIGN KEY (foodCode)
	REFERENCES SubClass (scSerialNumber)
;


ALTER TABLE Receipt
	ADD FOREIGN KEY (scSerialNumber)
	REFERENCES SubClass (scSerialNumber)
;


ALTER TABLE Stock
	ADD FOREIGN KEY (scSerialNumber)
	REFERENCES SubClass (scSerialNumber)
;


ALTER TABLE Uses
	ADD FOREIGN KEY (scSerialNumber)
	REFERENCES SubClass (scSerialNumber)
;



/* Comments */

COMMENT ON COLUMN Account.aContents IS '회사설명';
COMMENT ON COLUMN Account.aURL IS '홈페이지 주소';
COMMENT ON COLUMN CheckList.completes IS 'check 제약 조건으로 완료. 미완료만 사용';
COMMENT ON COLUMN CheckList.importance IS 'check제약조건으로 상중하만 입력 가능';
COMMENT ON COLUMN CheckList.registId IS '등록한 직원';
COMMENT ON COLUMN Employee.status IS 'check 제약조건으로 퇴직, 현직 으로 나뉨';
COMMENT ON COLUMN Receipt.rComment IS '입고시 상태를 적어놓는다';
COMMENT ON COLUMN SubClass.price IS '
';






CREATE SEQUENCE ck_seq;
CREATE SEQUENCE comment_seq;
CREATE SEQUENCE st_seq;
CREATE SEQUENCE mc_seq;
CREATE SEQUENCE ac_seq;


insert into mainclass(MCSERIALNUMBER ,MCLASS) values(1,'감자류및전분류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(2,'견과류및종실류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(3,'곡류및그제품');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(4,'과일류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(5,'난류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(6,'당류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(7,'두류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(8,'버섯류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(9,'소스류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(10,'어패류및기타수산물');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(11,'우유및유제품류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(12,'유지류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(13,'육류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(14,'차류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(15,'채소류');
insert into mainclass(MCSERIALNUMBER ,MCLASS) values(16,'향신료류');



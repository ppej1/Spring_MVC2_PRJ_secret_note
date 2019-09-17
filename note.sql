
/* Drop Tables */

DROP TABLE Receipt CASCADE CONSTRAINTS;
DROP TABLE Account CASCADE CONSTRAINTS;
DROP TABLE Comments CASCADE CONSTRAINTS;
DROP TABLE CheckList CASCADE CONSTRAINTS;
DROP TABLE Disposal CASCADE CONSTRAINTS;
DROP TABLE Stock CASCADE CONSTRAINTS;
DROP TABLE Uses CASCADE CONSTRAINTS;
DROP TABLE Employee CASCADE CONSTRAINTS;
DROP TABLE SubClass CASCADE CONSTRAINTS;
DROP TABLE MainClass CASCADE CONSTRAINTS;
DROP TABLE NuturitionDB CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE Account
(
	accountName varchar2(20) NOT NULL,
	aImg varchar2(20) NOT NULL,
	aManager varchar2(20) NOT NULL,
	aPhone varchar2(20) NOT NULL,
	PRIMARY KEY (accountName)
);


CREATE TABLE CheckList
(
	ckSerialNumber varchar2(20) NOT NULL,
	ckTitle varchar2(100) NOT NULL,
	-- check 제약 조건으로 완료. 미완료만 사용
	completes varchar2(20) NOT NULL,
	-- check제약조건으로 상중하만 입력 가능
	importance varchar2(20) NOT NULL,
	-- 등록한 직원
	registId varchar2(20) NOT NULL,
	rDate date NOT NULL,
	finisher varchar2(20),
	fDate date,
	PRIMARY KEY (ckSerialNumber)
);


CREATE TABLE Comments
(
	cSerialNumber varchar2(20) NOT NULL,
	ckSerialNumber varchar2(20) NOT NULL,
	userid varchar2(20) NOT NULL,
	commnets varchar2(100) NOT NULL,
	cDate date NOT NULL,
	PRIMARY KEY (cSerialNumber)
);


CREATE TABLE Disposal
(
	dSerialNumber varchar2(20) NOT NULL,
	scSerialNumber varchar2(20) NOT NULL,
	userid varchar2(20) NOT NULL,
	eDate date NOT NULL,
	dAmount number NOT NULL,
	condition varchar2(20) DEFAULT 'Disposal' NOT NULL,
	PRIMARY KEY (dSerialNumber)
);


CREATE TABLE Employee
(
	userid varchar2(20) NOT NULL,
	userpwd varchar2(20) NOT NULL,
	eImg varchar2(20) NOT NULL,
	userName varchar2(20) NOT NULL,
	rank varchar2(20) NOT NULL,
	email varchar2(20) NOT NULL,
	ePhone varchar2(20) NOT NULL,
	-- check 제약조건으로 퇴직, 현직 으로 나뉨
	status varchar2(20) NOT NULL,
	PRIMARY KEY (userid)
);


CREATE TABLE MainClass
(
	mcSerialNumber varchar2(20) NOT NULL,
	mClass varchar2(20) NOT NULL,
	mcImg varchar2(20) NOT NULL,
	PRIMARY KEY (mcSerialNumber)
);


CREATE TABLE NuturitionDB
(
	foodCode varchar2(20) NOT NULL,
	foodTitle varchar2(20) NOT NULL,
	indexs varchar2(20) NOT NULL,
	foodGroup varchar2(20) NOT NULL,
	energy number NOT NULL,
	protein number NOT NULL,
	carbon number NOT NULL,
	sugar number NOT NULL,
	natrium number NOT NULL,
	chole number NOT NULL,
	PRIMARY KEY (foodCode)
);


CREATE TABLE Receipt
(
	rSerialNumber varchar2(20) NOT NULL,
	accountName varchar2(20) NOT NULL,
	scSerialNumber varchar2(20) NOT NULL,
	userid varchar2(20) NOT NULL,
	rAmount number NOT NULL,
	rDate date NOT NULL,
	-- 입고시 상태를 적어놓는다
	rComment varchar2(100),
	PRIMARY KEY (rSerialNumber)
);


CREATE TABLE Stock
(
	sSerialNumber varchar2(20) NOT NULL,
	scSerialNumber varchar2(20) NOT NULL,
	userid varchar2(20) NOT NULL,
	sDate date NOT NULL,
	deDate date NOT NULL,
	PRIMARY KEY (sSerialNumber)
);


CREATE TABLE SubClass
(
	scSerialNumber varchar2(20) NOT NULL,
	mcSerialNumber varchar2(20) NOT NULL,
	foodCode varchar2(20) NOT NULL,
	sImg varchar2(20) NOT NULL,
	sName varchar2(20) NOT NULL,
	unit varchar2(20) NOT NULL,
	-- 
	-- 
	price number NOT NULL,
	location varchar2(20) NOT NULL,
	eDate varchar2(20) NOT NULL,
	PRIMARY KEY (scSerialNumber)
);


CREATE TABLE Uses
(
	uSerialNumber varchar2(20) NOT NULL,
	scSerialNumber varchar2(20) NOT NULL,
	userid varchar2(20) NOT NULL,
	uDate date NOT NULL,
	uAmount number NOT NULL,
	condition varchar2(20) DEFAULT 'Uses' NOT NULL,
	PRIMARY KEY (uSerialNumber)
);



/* Create Foreign Keys */

ALTER TABLE Receipt
	ADD FOREIGN KEY (accountName)
	REFERENCES Account (accountName)
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


ALTER TABLE SubClass
	ADD FOREIGN KEY (foodCode)
	REFERENCES NuturitionDB (foodCode)
;


ALTER TABLE Disposal
	ADD FOREIGN KEY (scSerialNumber)
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

COMMENT ON COLUMN CheckList.completes IS 'check 제약 조건으로 완료. 미완료만 사용';
COMMENT ON COLUMN CheckList.importance IS 'check제약조건으로 상중하만 입력 가능';
COMMENT ON COLUMN CheckList.registId IS '등록한 직원';
COMMENT ON COLUMN Employee.status IS 'check 제약조건으로 퇴직, 현직 으로 나뉨';
COMMENT ON COLUMN Receipt.rComment IS '입고시 상태를 적어놓는다';
COMMENT ON COLUMN SubClass.price IS '
';




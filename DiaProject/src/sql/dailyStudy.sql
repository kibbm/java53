/* 학습모듈 */
DROP TABLE StudyModule 
	CASCADE CONSTRAINTS;

/* 학습주제 */
DROP TABLE DailyStudy 
	CASCADE CONSTRAINTS;

/* 학습자 */
DROP TABLE User 
	CASCADE CONSTRAINTS;

/* mp관리 */
DROP TABLE TABLE2 
	CASCADE CONSTRAINTS;

/* mp경로 */
DROP TABLE TABLE3 
	CASCADE CONSTRAINTS;

/* 새 테이블 */
DROP TABLE TABLE4 
	CASCADE CONSTRAINTS;

/* WordDB */
DROP TABLE WordDB 
	CASCADE CONSTRAINTS;

/* 새 테이블2 */
DROP TABLE TABLE6 
	CASCADE CONSTRAINTS;

/* 학습모듈 */
CREATE TABLE StudyModule (
	daily_index INTEGER NOT NULL, /* 학습주제일련번호 */
	module_index VARCHAR2(255) NOT NULL, /* 학습모듈일련번호 */
	Module_type VARCHAR2(255) NOT NULL, /* 문제유형 */
	Module_index INTEGER, /* 모듈순서 */
	Module_quiz CLOB /* 문제내용 */
);

COMMENT ON TABLE StudyModule IS '학습모듈';

COMMENT ON COLUMN StudyModule.daily_index IS '학습주제일련번호';

COMMENT ON COLUMN StudyModule.module_index IS '학습모듈일련번호';

COMMENT ON COLUMN StudyModule.Module_type IS '문제유형';

COMMENT ON COLUMN StudyModule.Module_index IS '모듈순서';

COMMENT ON COLUMN StudyModule.Module_quiz IS 'json형식';

/* 학습주제 */
CREATE TABLE DailyStudy (
	daily_index INTEGER NOT NULL, /* 학습주제일련번호 */
	level VARCHAR2(255), /* 레벨 */
	stu_level INTEGER, /* 학습순서 */
	con_title VARCHAR2(255) NOT NULL /* 컨텐츠제목 */
);

COMMENT ON TABLE DailyStudy IS '학습주제';

COMMENT ON COLUMN DailyStudy.daily_index IS '학습주제일련번호';

COMMENT ON COLUMN DailyStudy.level IS '레벨';

COMMENT ON COLUMN DailyStudy.stu_level IS '학습순서';

COMMENT ON COLUMN DailyStudy.con_title IS '컨텐츠제목';

CREATE UNIQUE INDEX PK_DailyStudy
	ON DailyStudy (
		daily_index ASC
	);

ALTER TABLE DailyStudy
	ADD
		CONSTRAINT PK_DailyStudy
		PRIMARY KEY (
			daily_index
		);

/* 학습자 */
CREATE TABLE User (
	id VARCHAR2(255) NOT NULL, /* 아이디 */
	email VARCHAR2(40) NOT NULL, /* 이메일 */
	name VARCHAR2(50) NOT NULL, /* 이름 */
	mobil VARCHAR2(30) NOT NULL, /* 전화번호 */
	addr VARCHAR2(255), /* 주소 */
	mlang VARCHAR2(255), /* 모국어 */
	stulang VARCHAR2(255) NOT NULL, /* 학습언어 */
	level VARCHAR2(255) /* 레벨 */
);

COMMENT ON TABLE User IS '학습자';

COMMENT ON COLUMN User.id IS '아이디';

COMMENT ON COLUMN User.email IS '이메일';

COMMENT ON COLUMN User.name IS '이름';

COMMENT ON COLUMN User.mobil IS '전화번호';

COMMENT ON COLUMN User.addr IS '주소';

COMMENT ON COLUMN User.mlang IS '모국어';

COMMENT ON COLUMN User.stulang IS '학습언어';

COMMENT ON COLUMN User.level IS '레벨';

CREATE UNIQUE INDEX PK_User
	ON User (
		id ASC
	);

CREATE UNIQUE INDEX UIX_User
	ON User (
		email ASC
	);

ALTER TABLE User
	ADD
		CONSTRAINT PK_User
		PRIMARY KEY (
			id
		);

ALTER TABLE User
	ADD
		CONSTRAINT UK_User
		UNIQUE (
			email
		);

/* mp관리 */
CREATE TABLE TABLE2 (
	module_no VARCHAR2(255), /* 문제유형 */
	Module_type VARCHAR2(255) /* 문제유형 */
);

COMMENT ON TABLE TABLE2 IS 'mp관리';

COMMENT ON COLUMN TABLE2.module_no IS '문제유형';

COMMENT ON COLUMN TABLE2.Module_type IS '문제유형';

/* mp경로 */
CREATE TABLE TABLE3 (
	COL3 INTEGER, /* 일렬번호 */
	COL2 VARCHAR2(255), /* 총mp경로 */
	Module_type VARCHAR2(255) /* 문제유형 */
);

COMMENT ON TABLE TABLE3 IS 'mp경로';

COMMENT ON COLUMN TABLE3.COL3 IS '일렬번호';

COMMENT ON COLUMN TABLE3.COL2 IS '총mp경로';

COMMENT ON COLUMN TABLE3.Module_type IS '문제유형';

/* 새 테이블 */
CREATE TABLE TABLE4 (
);

COMMENT ON TABLE TABLE4 IS '새 테이블';

/* WordDB */
CREATE TABLE WordDB (
	word_index INTEGER NOT NULL, /* 단어일련번호 */
	enword VARCHAR2(50) NOT NULL, /* 영단어 */
	koword VARCHAR2(50) NOT NULL, /* 한글 */
	enexample VARCHAR2(255) NOT NULL, /* 영어예문 */
	enmp VARCHAR2(255) NOT NULL, /* 영어mp */
	level VARCHAR2(50) /* level */
);

COMMENT ON TABLE WordDB IS 'WordDB';

COMMENT ON COLUMN WordDB.word_index IS '단어일련번호';

COMMENT ON COLUMN WordDB.enword IS '영단어';

COMMENT ON COLUMN WordDB.koword IS '한글';

COMMENT ON COLUMN WordDB.enexample IS '영어예문';

COMMENT ON COLUMN WordDB.enmp IS '영어mp';

COMMENT ON COLUMN WordDB.level IS 'level';

CREATE UNIQUE INDEX PK_WordDB
	ON WordDB (
		enword ASC
	);

ALTER TABLE WordDB
	ADD
		CONSTRAINT PK_WordDB
		PRIMARY KEY (
			enword
		);

/* 새 테이블2 */
CREATE TABLE TABLE6 (
);

COMMENT ON TABLE TABLE6 IS '새 테이블2';

ALTER TABLE StudyModule
	ADD
		FOREIGN KEY (
			daily_index
		)
		REFERENCES DailyStudy (
			daily_index
		);

ALTER TABLE TABLE2
	ADD
		CONSTRAINT FK_StudyModule_TO_TABLE2
		FOREIGN KEY (
		)
		REFERENCES StudyModule (
		);
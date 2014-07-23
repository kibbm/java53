/* �н���� */
DROP TABLE StudyModule 
	CASCADE CONSTRAINTS;

/* �н����� */
DROP TABLE DailyStudy 
	CASCADE CONSTRAINTS;

/* �н��� */
DROP TABLE User 
	CASCADE CONSTRAINTS;

/* mp���� */
DROP TABLE TABLE2 
	CASCADE CONSTRAINTS;

/* mp��� */
DROP TABLE TABLE3 
	CASCADE CONSTRAINTS;

/* �� ���̺� */
DROP TABLE TABLE4 
	CASCADE CONSTRAINTS;

/* WordDB */
DROP TABLE WordDB 
	CASCADE CONSTRAINTS;

/* �� ���̺�2 */
DROP TABLE TABLE6 
	CASCADE CONSTRAINTS;

/* �н���� */
CREATE TABLE StudyModule (
	daily_index INTEGER NOT NULL, /* �н������Ϸù�ȣ */
	module_index VARCHAR2(255) NOT NULL, /* �н�����Ϸù�ȣ */
	Module_type VARCHAR2(255) NOT NULL, /* �������� */
	Module_index INTEGER, /* ������ */
	Module_quiz CLOB /* �������� */
);

COMMENT ON TABLE StudyModule IS '�н����';

COMMENT ON COLUMN StudyModule.daily_index IS '�н������Ϸù�ȣ';

COMMENT ON COLUMN StudyModule.module_index IS '�н�����Ϸù�ȣ';

COMMENT ON COLUMN StudyModule.Module_type IS '��������';

COMMENT ON COLUMN StudyModule.Module_index IS '������';

COMMENT ON COLUMN StudyModule.Module_quiz IS 'json����';

/* �н����� */
CREATE TABLE DailyStudy (
	daily_index INTEGER NOT NULL, /* �н������Ϸù�ȣ */
	level VARCHAR2(255), /* ���� */
	stu_level INTEGER, /* �н����� */
	con_title VARCHAR2(255) NOT NULL /* ���������� */
);

COMMENT ON TABLE DailyStudy IS '�н�����';

COMMENT ON COLUMN DailyStudy.daily_index IS '�н������Ϸù�ȣ';

COMMENT ON COLUMN DailyStudy.level IS '����';

COMMENT ON COLUMN DailyStudy.stu_level IS '�н�����';

COMMENT ON COLUMN DailyStudy.con_title IS '����������';

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

/* �н��� */
CREATE TABLE User (
	id VARCHAR2(255) NOT NULL, /* ���̵� */
	email VARCHAR2(40) NOT NULL, /* �̸��� */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	mobil VARCHAR2(30) NOT NULL, /* ��ȭ��ȣ */
	addr VARCHAR2(255), /* �ּ� */
	mlang VARCHAR2(255), /* �𱹾� */
	stulang VARCHAR2(255) NOT NULL, /* �н���� */
	level VARCHAR2(255) /* ���� */
);

COMMENT ON TABLE User IS '�н���';

COMMENT ON COLUMN User.id IS '���̵�';

COMMENT ON COLUMN User.email IS '�̸���';

COMMENT ON COLUMN User.name IS '�̸�';

COMMENT ON COLUMN User.mobil IS '��ȭ��ȣ';

COMMENT ON COLUMN User.addr IS '�ּ�';

COMMENT ON COLUMN User.mlang IS '�𱹾�';

COMMENT ON COLUMN User.stulang IS '�н����';

COMMENT ON COLUMN User.level IS '����';

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

/* mp���� */
CREATE TABLE TABLE2 (
	module_no VARCHAR2(255), /* �������� */
	Module_type VARCHAR2(255) /* �������� */
);

COMMENT ON TABLE TABLE2 IS 'mp����';

COMMENT ON COLUMN TABLE2.module_no IS '��������';

COMMENT ON COLUMN TABLE2.Module_type IS '��������';

/* mp��� */
CREATE TABLE TABLE3 (
	COL3 INTEGER, /* �ϷĹ�ȣ */
	COL2 VARCHAR2(255), /* ��mp��� */
	Module_type VARCHAR2(255) /* �������� */
);

COMMENT ON TABLE TABLE3 IS 'mp���';

COMMENT ON COLUMN TABLE3.COL3 IS '�ϷĹ�ȣ';

COMMENT ON COLUMN TABLE3.COL2 IS '��mp���';

COMMENT ON COLUMN TABLE3.Module_type IS '��������';

/* �� ���̺� */
CREATE TABLE TABLE4 (
);

COMMENT ON TABLE TABLE4 IS '�� ���̺�';

/* WordDB */
CREATE TABLE WordDB (
	word_index INTEGER NOT NULL, /* �ܾ��Ϸù�ȣ */
	enword VARCHAR2(50) NOT NULL, /* ���ܾ� */
	koword VARCHAR2(50) NOT NULL, /* �ѱ� */
	enexample VARCHAR2(255) NOT NULL, /* ����� */
	enmp VARCHAR2(255) NOT NULL, /* ����mp */
	level VARCHAR2(50) /* level */
);

COMMENT ON TABLE WordDB IS 'WordDB';

COMMENT ON COLUMN WordDB.word_index IS '�ܾ��Ϸù�ȣ';

COMMENT ON COLUMN WordDB.enword IS '���ܾ�';

COMMENT ON COLUMN WordDB.koword IS '�ѱ�';

COMMENT ON COLUMN WordDB.enexample IS '�����';

COMMENT ON COLUMN WordDB.enmp IS '����mp';

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

/* �� ���̺�2 */
CREATE TABLE TABLE6 (
);

COMMENT ON TABLE TABLE6 IS '�� ���̺�2';

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
/*
DDL -> DATA DEFINATION LANGUGH
1.CREATE DATABASE -> DONE
2.CREATE SCHEMA -> DONE
3.CREATE TABLE -> DONE
4.ALTER -> DONE 
5.CONSTRAINT -> DONE 
6.FORGIEN KEY -> DONE
DML -> DATA MNUPLATION LANGUGH
1.INSERT -> DONE
2.DELETE -> DONE
3.UPDATE -> DONE
4.SELECT -> DONE
5.JOIN -> DONE
*/

CREATE DATABASE LAP;
USE LAP;
CREATE SCHEMA LAP_SCHEMA;

CREATE TABLE ACCOUNT 
(
ID INT NOT NULL,
USERNAME VARCHAR(15) NOT NULL,
PASSWORD VARCHAR(30) NOT NULL,
PHONE_NUMBER VARCHAR(14) NULL,
);

ALTER TABLE ACCOUNT
ALTER COLUMN PHONE_NUMBER VARCHAR(15);

ALTER TABLE ACCOUNT
ADD EMAIL VARCHAR(30);

ALTER TABLE ACCOUNT
DROP COLUMN EMAIL;


DROP TABLE ACCOUNT
DROP DATABASE LAP


CREATE DATABASE SYSTEM
USE SYSTEM

CREATE TABLE EMPLOYEE 
(
ID INT NOT NULL ,
NAME VARCHAR(20) NOT NULL,
CITY VARCHAR(20) NULL ,

CONSTRAINT EMPLOYEE_ID PRIMARY KEY (ID)
)

CREATE TABLE ACCOUNT 
(
ID INT NOT NULL ,
EMPLOYEE_ID INT NOT NULL ,
USERNAME VARCHAR(20) NOT NULL,
PASSWORD VARCHAR(20) NOT NULL,
CONSTRAINT ACCOUNT_ID PRIMARY KEY (ID),

CONSTRAINT EMPLOYEE_ID_FK FOREIGN KEY (EMPLOYEE_ID)
references  EMPLOYEE(ID),
)

CREATE TABLE ROLE 
(
ID INT NOT NULL ,
ROLE_NAME VARCHAR(24),
EMPLOYEE_ID INT ,
CONSTRAINT ROLE_ID PRIMARY KEY(ID),

CONSTRAINT EMPLOYEE_ID_FK_ROLE FOREIGN KEY (EMPLOYEE_ID) references EMPLOYEE(ID)
)

/*SELECT METHOD*/
 SELECT * FROM EMPLOYEE;
 SELECT id FROM EMPLOYEE;
 SELECT USERNAME FROM ACCOUNT;
 SELECT ID , PASSWORD FROM ACCOUNT;
 SELECT * FROM ACCOUNT WHERE USERNAME = 'ANAS';
 SELECT * FROM ACCOUNT WHERE ID = '1' AND PASSWORD = '123';
 SELECT * FROM ACCOUNT WHERE ID = '2' AND USERNAME = 'EYAD';

 /*INSERT METHOD*/
 INSERT INTO ACCOUNT (ID , EMPLOYEE_ID , USERNAME , PASSWORD)  VALUES( 3 , 1 , 'AHMED' , 12);
 INSERT INTO ACCOUNT (ID , USERNAME , PASSWORD , EMPLOYEE_ID) VALUES (5 , 'ANAS' , 14 , 2);
 
 INSERT INTO EMPLOYEE (ID , NAME , city ) VALUES (5 , 'MOSTFA' , 'cairo');
 INSERT INTO EMPLOYEE VALUES (4 , 'ALI' , 'CAIRO');

 /*DELTE METHOD*/
 DELETE FROM ACCOUNT ;
 DELETE FROM ACCOUNT WHERE ID = 3;
 DELETE FROM EMPLOYEE WHERE ID = 12

 /*UPDATE METHOD*/
 UPDATE employee SET NAME = 'EYAD' , CITY = 'CAIRO' WHERE ID = 3;





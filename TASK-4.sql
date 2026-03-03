SELECT * FROM Users;
SELECT NAME,CHAR_LENGTH(NAME)AS NAME_LENGTH FROM Users;
SELECT CONCAT_WS('-',NAME,MOBILE)AS contact_info FROM Users;
SELECT EMAIL,LEFT(EMAIL,5)AS EMAIL_START FROM Users;
SELECT ADDRESS,RIGHT(ADDRESS,5)AS ADDRESS_END FROM Users;
ALTER TABLE Users ADD PRIMARY KEY (ID);
UPDATE Users set NAME="  MEHANAZ " WHERE ID=103;
SELECT * FROM Users;
SELECT LTRIM(NAME)AS TRIMMED_NAME FROM Users;
ALTER TABLE Users ADD COLUMN USER_ROLES VARCHAR(50);
UPDATE Users set USER_ROLES='admin' WHERE ID=101;
UPDATE Users set USER_ROLES='user' WHERE ID=102;
UPDATE Users set USER_ROLES='guest' WHERE ID=103;
UPDATE Users set USER_ROLES='admin,user' WHERE ID=104;
UPDATE Users set USER_ROLES='user,guest' WHERE ID=105;
UPDATE Users set USER_ROLES='user,guest,admin' WHERE ID=106;
UPDATE Users set USER_ROLES='user' WHERE ID=107;
UPDATE Users set USER_ROLES='guest,admin' WHERE ID=108;
SELECT * FROM Users;
SELECT NAME,FIND_IN_SET('admin',USER_ROLES)AS admin_position FROM Users; -- WHERE FIND_IN_SET('admin',USER_ROLES)>0;
create table Applications(
application_id int PRIMARY KEY,
applicant_name varchar(50),
statuss varchar(50)
); 
insert into Applications values(101,' susmitha','approved');
insert into Applications values(102,' akhila','approved');
insert into Applications values(103,'mehanaz','rejected');
insert into Applications values(104,'harika','pending');
insert into Applications values(105,'sowmya','rejected');
select applicant_name,FIELD(statuss,'pending','approved','rejected')AS statuss_position FROM Applications;

ALTER TABLE SCHEMESS ADD COLUMN BUDGET VARCHAR(50);
UPDATE SCHEMESS SET BUDGET=45347867.43 WHERE Schemeid=121;
SELECT * FROM SCHEMESS;
SELECT Schemename,BUDGET,FORMAT(BUDGET,1)AS FORMATTED_BUDGET FROM SCHEMESS;
SELECT Schemename,INSERT(Schemename,1,3,'New ')as new_schemename FROM SCHEMESS;

ALTER TABLE SCHEMESS ADD COLUMN DESCRIPTIONS VARCHAR(100);
UPDATE SCHEMESS SET DESCRIPTIONS='aid used for girl childs and helpful for their futures' WHERE Schemeid='121';
UPDATE SCHEMESS SET DESCRIPTIONS='helpful for aid farmers and their wealth' WHERE Schemeid=122;
UPDATE SCHEMESS SET DESCRIPTIONS='to save water' WHERE Schemeid=123;
UPDATE SCHEMESS SET DESCRIPTIONS='to maintain stations clean and green AID and to provide facillities in stations for public' WHERE Schemeid=124;   
UPDATE SCHEMESS SET DESCRIPTIONS='used for research aid' WHERE Schemeid=125;
SELECT *FROM SCHEMESS;
SELECT Schemename,INSTR(DESCRIPTIONS,'aid')as aid_position FROM SCHEMESS;

UPDATE Users SET EMAIL='sowmya@gov.in' WHERE ID=105;
SELECT *FROM Users;
SELECT EMAIL,LOCATE('gov',EMAIL)AS GOV_POSITION FROM Users;
SELECT Schemename,LPAD(Schemename,25,':')as padded_scheme FROM SCHEMESS;
SELECT EMAIL,POSITION('@'IN EMAIL)AS at_position FROM Users;

-- UPDATE Applications SET applicant_name=' SUSMITHA' WHERE application_id=101;
SELECT *FROM Applications;         
SELECT U.NAME,CONCAT_WS(':',LCASE(U.NAME),U.MOBILE)AS CONT_INFO FROM Users U,Applications A WHERE U.ID=A.application_id AND A.statuss='approved';
DROP DATABASE IF EXISTS SUSMITHA;
CREATE DATABASE SUSMITHA;
use SUSMITHA;
CREATE TABLE Users(
ID int,
NAME varchar(50),
EMAIL VARCHAR(50),
MOBILE long,
ADDRESS VARCHAR(100),
CITIZEN VARCHAR(20)
);
desc Users;
INSERT INTO Users values(101,"  susmitha ",'susmitha@gmail.com',9059363983,'visakhapatnam','indian');
INSERT INTO Users values(102,"  akhila",'akhila11@gmail.com',9392495326,'nellore','indian');
INSERT INTO Users values(103,"mehanaz",'mehanazshaik@gmail.com',9347429552,'nellore','indian');
INSERT INTO Users values(104," harika",'harikaallu@gmail.com',9182142560,'vizianagaram','indian');
INSERT INTO Users values(105," sowmya",'sowmya07@gmail.com',8125808688,'ongole','indian');
INSERT INTO Users values(106,"lavanya",'lavanyabevara@gmail.com',9908541869,'srikakulam','indian');
INSERT INTO Users values(107,"vaishika",'vaishikakasavarapu@gmail.com',8341857563,'nellore','indian');
INSERT INTO Users values(108," rguktn",'n220383@rguktn.ac.in',9390305701,'visakhapatnam','indian');
SELECT * FROM Users;
SELECT CONCAT(NAME,' ',EMAIL)AS USERINFO FROM Users;  

CREATE TABLE SCHEMESS(
Schemeid int primary key,
Schemename VARCHAR(100),
Beneficiaries varchar(100)
);
INSERT INTO SCHEMESS values(121,"beti bachao beti padavo",'girl children');
INSERT INTO SCHEMESS values(122,"pm kisan",'farmers');
INSERT INTO SCHEMESS values(123,"jal jeevan mission",'households');
INSERT INTO SCHEMESS values(124,"amrit bharat station",'public');
INSERT INTO SCHEMESS values(125,"one nation one subscription",'research');
SELECT * FROM SCHEMESS;
SELECT UPPER(Schemename)AS uppercaseschemes FROM SCHEMESS;

SELECT LOWER(EMAIL)AS lowercaseemail FROM Users;
SELECT Schemename,LENGTH(Beneficiaries) AS Beneficiarieslength FROM SCHEMESS;
SELECT NAME,SUBSTRING(ADDRESS,1,5)AS addresstart FROM Users;
SELECT TRIM(NAME)AS trimmedname FROM Users;
SELECT REPLACE('jal jeevan mission','mission','Program')AS program;
SELECT UPPER(CONCAT(NAME,'-',MOBILE))AS CONTACTINFO FROM Users WHERE EMAIL LIKE '%gmail.com' ;
SELECT Schemename,SUBSTRING(Beneficiaries,1,5) AS shortbene,LENGTH(Beneficiaries)AS Beneificiaries FROM SCHEMESS;
SELECT LEFT(MOBILE,5) AS leftt FROM Users;
-- SELECT RIGHT(ADDRESS,5) AS rightt FROM Users;
SELECT REVERSE(NAME) AS Reversedname FROM Users;
SELECT CONCAT_WS('-',NAME,EMAIL,MOBILE) AS INFO FROM Users;
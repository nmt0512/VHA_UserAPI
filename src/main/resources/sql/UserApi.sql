CREATE DATABASE UserApi

USE UserApi

CREATE TABLE DBUser(
Id int identity(1,1) PRIMARY KEY,
Username varchar(255) UNIQUE NOT NULL,
Password varchar(255) NOT NULL,
Fullname nvarchar(255),

/*  0: Male, 1: Female  */
Gender bit NOT NULL,

Address nvarchar(255),
Birthday date,
Phone varchar(10),
Email varchar(100),
IDCardNum varchar(20),
BankNum varchar(30),
UserKey varchar(16)
)

INSERT INTO DBUser(Username, Password, Gender, Address, Birthday) VALUES('u2', 'pw2', 1, 'BacGiang', '2001/12/01')

ALTER TABLE DBUser
ADD UserKey varchar(16)

ALTER TABLE DBUser
ALTER COLUMN BankNum varchar(255)

DELETE FROM DBUser WHERE Id != 30

SELECT * FROM DBUser
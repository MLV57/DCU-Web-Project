CREATE TABLE User
(Username VARCHAR(50) NOT NULL,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
birthDate DATE NOT NULL,
gender varchar(30) NOT NULL,
UniversityName varchar(50) NOT NULL,
EnrollmentID varchar(30) NOT NULL,
ContactNumber varchar(50) NOT NULL,
Address varchar(150) NOT NULL,
email varchar(150) NOT NULL,
Pwd varchar(50) NOT NULL,
PRIMARY KEY (EnrollmentID));

insert into User values
('M.Onigiri','Adrien','Kreutz','2000-07-27','Male',
'DCU',20152063,'0633514541','11 rue du jardin brûlé',
'adrien.kreutz@gmail.com','OnigiriSan');
insert into User values
('Burah1234','Ulysse','Burah','1999-12-14','Male',
'DCU',21103214,'0633412152','31 east from the west street',
'ulysse.burah@hotmail.com','burahta');
insert into User values
('JL456','Julien','Lozouet','2000-03-05','Male',
'DCU',20541778,'0612653212','47 camargue avenue',
'julien.lzt@bitcoin.com','DCU1234');
insert into User values
('DhruvSama','Dhruv','Smith','1998-08-30','Male',
'Oxford',15142312,'91124215','112 poudlard patronum street',
'dhruv.smith@oxford.com','Imnotarobot');
insert into User values
('Sliverin','Marie-Laure','Vannier','2001-02-13','Female',
'ECE',61004120,'06624125','26 harisson ford avenue',
'ml.vannier@ece.com','stansmith');

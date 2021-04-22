CREATE TABLE myActivity
(Category VARCHAR(150) NOT NULL,
SubCategory VARCHAR(150) NOT NULL,
Discussion VARCHAR(500) NOT NULL,
MessagePosted varchar(500) NOT NULL,
LastActivity DATE NOT NULL,
EnrollmentID varchar(30) NOT NULL,
FOREIGN KEY (EnrollmentID) REFERENCES user(EnrollmentID),
PRIMARY KEY ());

insert into User values
('Adrien','Kreutz','2000-07-27','Male',
'DCU',20152063,'0633514541','11 rue du jardin brûlé',
'adrien.kreutz@gmail.com','OnigiriSan');
insert into User values
('Ulysse','Burah','1999-12-14','Male',
'DCU',21103214,'0633412152','31 east from the west street',
'ulysse.burah@hotmail.com','burahta');
insert into User values
('Julien','Lozouet','2000-03-05','Male',
'DCU',20541778,'0612653212','47 camargue avenue',
'julien.lzt@bitcoin.com','DCU1234');
insert into User values
('Dhruv','Smith','1998-08-30','Male',
'Oxford',15142312,'91124215','112 poudlard patronum street',
'dhruv.smith@oxford.com','Imnotarobot');
insert into User values
('Marie-Laure','Vannier','2001-02-13','Female',
'ECE',61004120,'06624125','26 harisson ford avenue',
'ml.vannier@ece.com','stansmith');

Create table candidates
(CANDIDATENAME VARCHAR(80) NOT NULL,
AGE INTEGER,
GENDER VARCHAR(30),
PHONE VARCHAR(25),
EMAIL VARCHAR(80) NOT NULL,
EVENT VARCHAR(500),
FROMWHERE VARCHAR(30),
WHY VARCHAR(500) NOT NULL,
DATE VARCHAR(25),
PRIMARY KEY (EMAIL));
insert into candidates values
('John Smith','23','male','+353 1 4382321','john.smith@gmail.com','Madagascar','Ireland','I would love to travel and discover the world','23/11/2020');
insert into candidates values
('Kendrick Perkins','42','male','+555 33 4444444','k.perkk@hotmail.com','India','United States','I work a lot and I need to take time for myself','11/12/2020');
insert into candidates values
('Marine Dubois','25','female','+33 71 122222','dubois.marine@yahoo.com','Thailand','France','I want to live a crazy adventure','22/12/2020');
insert into candidates values
('Glen Davis','31','male','+353 7 6853257','Glen.davis@microsoft.com','China','Ireland','I would like to improve my language skills','06/01/2021');
insert into candidates values
('Mary Bird','65','female','+353 5 6890009','mary.bird@ireland.com','Japan','Ireland','I need to recharge my batteries','05/02/2021');
SELECT *FROM candidates;
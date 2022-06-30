/*DROP DATABASE IF EXISTS VoteElec;
CREATE DATABASE IF NOT EXISTS VoteElec;
USE VoteElec;
*/


DROP TABLE Election;
DROP TABLE Person;
DROP TABLE Elector;
DROP TABLE Candidate;
DROP TABLE Stands;
DROP TABLE Participates;
DROP TABLE Wins;



CREATE TABLE Election(
   election_id INT,
   name VARCHAR(50),
   description VARCHAR(100),
   start_date DATETIME,
   end_date DATETIME,
   PRIMARY KEY(election_id)
);

CREATE TABLE Person(
   person_id INT,
   num_citizen VARCHAR(300) NOT NULL,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   gender VARCHAR(50),
   birth DATE,
   PRIMARY KEY(person_id)
);

CREATE TABLE Elector(
   elector_id INT,
   num_elector VARCHAR(9) NOT NULL,
   phone VARCHAR(300),
   email VARCHAR(300),
   password VARCHAR(300),
   person_id INT NOT NULL,
   PRIMARY KEY(elector_id),
   UNIQUE(person_id),
   FOREIGN KEY(person_id) REFERENCES Person(person_id)
);

CREATE TABLE Candidate(
   candidate_id INT,
   program VARCHAR(1000),
   complete_program VARCHAR(50),
   picture VARCHAR(20),
   person_id INT NOT NULL,
   PRIMARY KEY(candidate_id),
   UNIQUE(person_id),
   FOREIGN KEY(person_id) REFERENCES Person(person_id)
);

CREATE TABLE Stands(
   candidate_id INT,
   election_id INT,
   PRIMARY KEY(candidate_id, election_id),
   FOREIGN KEY(candidate_id) REFERENCES Candidate(candidate_id),
   FOREIGN KEY(election_id) REFERENCES Election(election_id)
);

CREATE TABLE Participates(
   elector_id INT,
   candidate_id INT,
   election_id INT,
   PRIMARY KEY(elector_id, candidate_id, election_id),
   FOREIGN KEY(elector_id) REFERENCES Elector(elector_id),
   FOREIGN KEY(candidate_id) REFERENCES Candidate(candidate_id),
   FOREIGN KEY(election_id) REFERENCES Election(election_id)
);

CREATE TABLE Wins(
   candidate_id INT,
   election_id INT,
   PRIMARY KEY(candidate_id, election_id),
   FOREIGN KEY(candidate_id) REFERENCES Candidate(candidate_id),
   FOREIGN KEY(election_id) REFERENCES Election(election_id)
);

INSERT INTO Person VALUES
(1,'000000000000000',NULL,NULL,NULL,NULL),
(2,'123647829367649','Marine','Lepen','WOMAN','1968-08-5'),
(3,'135412313358734','Jean-Luc','Melanchon','MAN','1951-08-19'),
(4,'135545645645646','Jonathan','Elbaz','MAN','2001-03-10'),
(5,'884631354613153','Simon','Campere','MAN','2003-09-11'),
(6,'778785456456358','Gerard','Culot','MAN','1999-01-11'),
(7,'464888843423154','CuiCui','Colon','WOMAN','1980-03-11');

INSERT INTO Elector VALUES
(1,'23568238','b2ef1a67c019892bd48f06c76deaef2517986f8054978f8244e8760162db60a7','c663a0ed4956cfcf255c6463e904fd2b38600599af3bdead1a8d7aca72009af5','3246ac57ebd9570003352b7cd8038142e9fa8facb0d944c8abfb2d3de390d931',4), 
(2,'13349876','bc2b8cab9e64be6dc0731cca88a1330dd21a1a5661f2f75c7056222573e29d8d','869228d7f72aec3a0396e375408b0d6877e826cc4b1eec95ba915b200f333d15','013650b4497edeb0c1148a77e058b26b5c5944fb4943f4b0587a1ff61d064843',5),
(3,'19900912',NULL,NULL,NULL,6),
(4,'56787609',NULL,NULL,NULL,7);

INSERT INTO Candidate VALUES
(1,'assets/Programmes candidats/Résumés/Marine-Le-Pen.txt','../../assets/Programmes candidats/Marine-Le-Pen.pdf','../../assets/Photos candidats/Marine-Le-Pen.jpg',2),
(2,'assets/Programmes candidats/Résumés/Jean-Luc-Melenchon.txt','../../assets/Programmes candidats/Jean-Luc-Melanchon.pdf','../../assets/Photos candidats/Jean-Luc-Melenchon.jpg',3);

INSERT INTO Election VALUES
(1,'municipales',NULL,'2012-04-12','2013-01-03'),
(2,'regionales',NULL,'2012-04-12','2013-01-03');


INSERT INTO Stands VALUES
(1,1),
(1,2),
(2,1);



INSERT INTO Wins VALUES
(1,1),
(1,2),
(2,1),
(2,2);





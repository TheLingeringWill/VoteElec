/*DROP DATABASE IF EXISTS VoteElec;
CREATE DATABASE IF NOT EXISTS VoteElec;
USE VoteElec;
*/

DROP TABLE Adress;
DROP TABLE Election;
DROP TABLE Person;
DROP TABLE Elector;
DROP TABLE Candidate;
DROP TABLE Stands;
DROP TABLE Participates;
DROP TABLE Wins;

CREATE TABLE Adress(
   adress_id INT,
   num_street INT,
   name_street VARCHAR(50),
   postal_code INT,
   city VARCHAR(50),
   PRIMARY KEY(adress_id)
);

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
   num_citizen BIGINT NOT NULL,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   gender VARCHAR(50),
   birth DATE,
   adress_id INT NOT NULL,
   PRIMARY KEY(person_id),
   FOREIGN KEY(adress_id) REFERENCES Adress(adress_id)
);

CREATE TABLE Elector(
   elector_id INT,
   num_elector VARCHAR(9) NOT NULL,
   phone VARCHAR(50),
   email VARCHAR(50),
   password VARCHAR(50),
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


INSERT INTO Adress VALUES
(1,NULL,NULL,NULL,NULL),
(2,35,'Gerard gosuph',77000,'Saintrophile'),
(3,56,'Saint grouph',34500,'Jonsainte');

INSERT INTO Person VALUES
(1,95643,'Marine','Lepen','WOMAN','1968-08-5',1),
(2,88890,'Jean-Luc','Melanchon','MAN','1951-08-19',1),
(3,43243,'Jonathan','Elbaz','MAN','2001-03-10',2),
(4,46573,'Simon','Campere','MAN','2003-09-11',3);

INSERT INTO Elector VALUES
(1,2356,'0614328943','jonathan.elbaz@gmx.com',NULL,3),
(2,1334,'0732448288','Simon.Campere@gmx.fr',NULL,4);

INSERT INTO Candidate VALUES
(1,'program','complete_program','picture',1),
(2,'progam','complete_program','picture',2);

INSERT INTO Election VALUES
(1,'municipales',NULL,'2012-04-12','2013-01-03'),
(2,'regionales',NULL,'2012-04-12','2013-01-03');


INSERT INTO Stands VALUES
(1,1),
(1,2),
(2,1),
(2,2);

INSERT INTO Participates VALUES
(1,1,1),
(1,2,2);

INSERT INTO Wins VALUES
(1,1),
(1,2),
(2,1),
(2,2);





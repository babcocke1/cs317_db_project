CREATE TABLE college(
    college_id INT NOT NULL AUTO_INCREMENT, 
    name VARCHAR(45),
    city VARCHAR(45), 
    state VARCHAR(45),
    PRIMARY KEY ( college_id )
) ;
--INSERT INTO college VALUES
--(1, 'Carnegie Mellon Univsersity', 'Pittsburg', 'PA'),
--(2, 'Massachusetts Institute of Technology', 'Cambridge', 'MA'),
--(3, 'University of California - Berkeley', 'Berkeley', 'CA'),
--(4, 'Georgia Institute of Technology', 'Atlanta', 'GA'),
--(5, 'University of Illinos-- Urbana-Champaign', 'Champaign', 'IL'),
--(6, 'University of Texas at Austin', 'Austin', 'TX'),
--(7, 'University of California - Irvine', 'Irvine', 'CA'),
--(8, 'Stanford University', 'Stanford', 'CA'),
--(9, 'North Carolina State University', 'Raleigh', 'NC'),
--(10, 'Purdue University', 'West Lafayatte', 'IN'),
--(11, 'California Institute of Technology', 'Pasadena', 'CA'),
--(12, 'University of California - Davis', 'Davis', 'CA'),
--(13, 'UCLA', 'Los Angeles', 'CA'),
--(14, 'University of Massachusetts - Amherst', 'Amherst', 'MA'),
--(15, 'University of Washington', 'Seattle', 'WA');
--DROP TABLE if exists cost;
CREATE TABLE cost(
    cost_id INT NOT NULL AUTO_INCREMENT,
    in_state_cost INT,
    out_of_state_cost INT,
    idcollege INT NOT NULL AUTO_INCREMENT REFERENCES college(college_id),
    PRIMARY KEY (cost_id)
);   
--INSERT INTO cost VALUES
(1, 58924,58924, 1),
(2, 55878, 55878, 2),
(3, 14316, 44115, 3),
(4, 12682, 33794, 4),
(5, 16866, 34316, 5),
(6, 11448, 40032, 6),
(7, 13955, 43709, 7),
(8, 56169, 56169, 8),
(9, 9131, 29916, 9),
(10, 9992, 28704, 10),
(11, 58680, 58680, 11),
(12, 14654, 44408, 12),
(13, 13268, 43022, 13),
(14, 16439, 36964, 14),
(15, 12076, 39906, 15);
--DROP TABLE if exists stats;
CREATE TABLE stats(
    test_scores INT,
    accepctance_rate INT,
    grad_rate INT,
    ranking INT,
	idcollege INT NOT NULL AUTO_INCREMENT REFERENCES college(college_id)
);
--INSERT INTO stats VALUES
(1460, 17, 89, 1, 1),
(1535, 7, 94, 2, 2),
(1415, 17, 91, 2, 3),
(1465, 21, 85, 4, 4),
(1350, 63, 85, 5, 5),
(1355, 30, 85, 6, 6),
(1180, 30, 85, 7, 7),
(1440, 5, 94, 8, 8),
(1335, 46, 79, 9, 9),
(1315, 67, 78, 9, 10),
(1530, 7, 89, 11, 11),
(1280, 46, 85, 12, 12),
(1405, 14, 91, 12, 13),
(1290, 65, 77, 12, 14),
(1340, 56, 84, 12, 15);
CREATE TABLE pictures(
    college_name VARCHAR(45) REFERENCES college(name),
    pic_link VARCHAR(65)
);
--INSERT INTO pictures VALUES
--('Carnegie Mellon Univsersity', 'https://www.cmu.edu'),
--('Massachusetts Institute of Technology', 'https://www.mit.edu'),
--('University of California - Berkeley', 'https://www.berkeley.edu'),
--('Georgia Institute of Technology', 'https://www.gatech.edu'),
--('University of Illinos-- Urbana-Champaign', 'https://illinois.edu'),
--('University of Texas at Austin', 'https://www.utexas.edu'),
--('University of California - Irvine', 'https://uci.edu'),
--('Stanford University', 'https://www.stanford.edu'),
--('North Carolina State University', 'https://www.ncsu.edu'),
--('Purdue University', 'West Lafayatte', 'https://www.purdue.edu'),
--('California Institute of Technology', 'https://www.caltech.edu'),
--('University of California - Davis', 'https://www.ucdavis.edu'),
--('UCLA', 'https://www.ucla.edu'),
--('University of Massachusetts - Amherst', 'https://www.umass.edu'),
--('University of Washington', 'https://www.washington.edu');
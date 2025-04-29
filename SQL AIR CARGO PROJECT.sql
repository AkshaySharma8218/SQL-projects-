CREATE DATABASE aircargo_database;
SHOW DATABASES;
USE aircargo_database;

CREATE TABLE IF NOT EXISTS Customer_table(
customer_id INT NOT NULL PRIMARY KEY auto_increment,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR(2) NOT NULL
);
DESCRIBE customer_table;

CREATE TABLE routes_table(
route_id INT NOT NULL  PRIMARY KEY ,
flight_num INT CONSTRAINT chk_1 CHECK(FLIGHT_NUM IS NOT NULL),
origin_airport VARCHAR(5) NOT NULL,
destination_airport varchar(5) NOT NULL,
aircraft_id VARCHAR(10) NOT NULL,
distance_miles INT NOT NULL CONSTRAINT CHK_2 CHECK(DISTANCE_MILES > 0)
);

DESCRIBE routes_table;

CREATE TABLE pof(
pof_ID INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
aircraft_id VARCHAR(20) NOT NULL,
route_id INT NOT NULL,
depart VARCHAR(10) NOT NULL,
arrival VARCHAR(10) NOT NULL,
seat_num VARCHAR(10) NOT NULL,
class_id varchar(20) NOT NULL,
travel_date DATE NOT NULL,
flight_num INT NOT NULL,
CONSTRAINT fk_pof FOREIGN KEY (customer_id) REFERENCES customer_table(customer_id)
);

DESCRIBE pof;

CREATE TABLE ticket_details(
Ticket_id INT auto_increment primary KEY,
p_date DATE NOT NULL,
customer_id INT NOT NULL,
aircraft_id varchar(10) NOT NULL,
class_id varchar(10) not null,
no_of_tickets int not null,
a_code varchar(5) not null,
price_per_ticket decimal(5,2) not null,
brand varchar(30) not null,
constraint fk_ticket_dts foreign key (customer_id) references customer_table(customer_id)
);

describe ticket_details;
select * from ticket_details;


-- INSERT DATA INTO CUSTOMER_TABLE

 SELECT * FROM aircargo_database.customer_table;
 
 INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('1', 'Julie ', 'Sam', '1989-01-12', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('2', 'Steve ', 'Ryan', '1983-04-03', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('3', 'Morris', 'Lois', '193-12-09', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('4', 'Cathenna', 'Amily', '1977-09-14', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('5', 'Aoron', 'Kim', '1991-02-18', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('6', 'Alexandar', 'Scott', '1985-02-12', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('7', 'Anderson', 'Stewart', '1992-01-12', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('8', 'Floyd', 'Ted', '1993-02-21', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('9', 'Leo', 'Travis', '1994-03-22', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('10', 'Melvin', 'Tracy', '1995-04-23', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('11', 'Roger', 'Walson', '1996-05-24', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('12', 'Shirley', 'Walley', '1997-06-25', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('13', 'Solomon', 'Walter', '1997-07-26', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('14', 'Carol', 'varnon', '1999-08-27', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('15', 'Linda', 'William', '1986-09-28', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('16', 'Chirstine', 'Willis', '1987-10-06', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('17', 'catherine', 'Shad', '1988-11-09', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('18', 'Gloria', 'Richie', '1989-12-04', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('19', 'Joyce', 'Paul', '1990-06-02', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('20', 'Sara', 'Oliver', '1991-01-01', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('21', 'Christy', 'Josh', '2004-01-10', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('22', 'Pheny', 'Ery', '1999-01-29', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('23', 'Erwin', 'Tosh', '1994-02-03', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('24', 'Calwin', 'Willis', '1994-02-15', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('25', 'Moss', 'Morris', '2011-02-18', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('26', 'Bryan', 'Collin', '2011-02-28', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('27', 'Cherly', 'Vernon', '1992-03-19', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('28', 'Du Plesis', 'Chris', '1994-04-17', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('29', 'Watson', 'Ronald', '1991-01-11', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('30', 'Donack', 'Dukins', '1991-02-19', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('31', 'James', 'Robert', '1994-04-12', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('32', 'Chirstoper', 'Sean', '1993-06-21', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('33', 'Mark ', 'Ethan', '1994-05-22', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('34', 'Jacqueline', 'Keith', '1994-04-23', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('35', 'Jeffrey', 'Aaron', '1991-02-24', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('36', 'Kayla', 'Patrick', '1993-02-27', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('37', 'Samuel', 'Scott', '2000-01-28', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('38', 'Alexis', 'Scott', '2001-10-31', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('39', 'Tyler', 'Edward', '2006-11-30', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('40', 'Adam', 'Paul', '2007-12-31', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('41', 'Kyle ', 'Mark', '2004-11-29', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('42', 'Roger', 'Mattew', '2008-11-28', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('43', 'Joe', 'Daniel', '2001-03-27', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('44', 'Bily', 'Brian', '2002-10-26', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('45', 'Doris', 'Walter', '1993-12-23', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('46', 'Louis', 'Douglas', '1997-09-22', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('47', 'Sophia', 'Carl', '1999-08-11', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('48', 'Wayne', 'Noah', '1998-07-02', 'F');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('49', 'Russel', 'Peter', '1996-06-01', 'M');
INSERT INTO `aircargo_database`.`customer_table` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `gender`) VALUES ('50', 'Rose', 'Arthur', '1996-05-23', 'F');

-- Show all data Filling in Customer table.
Select * from customer_table;

-- INSERT DATA INTO ROUTES TABLE
SELECT * FROM aircargo_database.routes_table;

INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('1', '1111', 'EWR', 'HNL', '767-301ER', '4962');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('2', '1112', 'HNL', 'EWR', '767-301ER', '4962');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('3', '1113', 'EWR', 'LHR', 'A321', '3466');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('4', '1114', 'JFK', 'LAX', '767-301ER', '2475');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('5', '1115', 'LAX', 'JFK', '767-301ER', '2475');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('6', '1116', 'HNL', 'LAX', '767-301ER', '2566');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('7', '1117', 'LAX', 'ORD', 'A321', '1745');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('8', '1118', 'ORD', 'EWR', 'A321', '719');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('9', '1119', 'DEN', 'LAX', 'ERJ142', '862');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('10', '1120', 'HNL', 'DEN', 'A321', '3365');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('12', '1122', 'ABI', 'ADK', '767-301ER', '4300');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('13', '1123', 'ADK', 'BQN', 'A321', '2232');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('14', '1124', 'BQN', 'CAK', 'A321', '2445');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('15', '1125', 'CAK', 'ANI', '767-301ER', '2000');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('16', '1126', 'ALK', 'APN', 'ERJ142', '1700');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('17', '1127', 'APN', 'BLV', '767-301ER', '1900');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('18', '1128', 'ANI', 'BGR', 'ERJ142', '2450');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('19', '1129', 'ATW', 'AVL', 'A321', '2222');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('20', '1130', 'AVL', 'BOI', '767-301ER', '3134');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('21', '1131', 'BFL', 'BET', 'A321', '2425');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('22', '1132', 'BGR', 'BJI', 'ERJ142', '1242');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('23', '1133', 'BLV', 'BFL', '767-301ER', '2354');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('24', '1134', 'BJI', 'BQN', 'A321', '1575');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('25', '1135', 'RDM', 'BJI', 'A321', '2425');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('26', '1136', 'BET', 'BTM', 'ERJ142', '1311');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('27', '1137', 'BOI', 'CLD', 'A321', '578');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('28', '1138', 'BOS', 'CDC', '767-301ER', '246');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('29', '1139', 'BKG', 'CRW', '767-301ER', '909');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('30', '1140', 'BUR', 'STT', 'CRJ900', '780');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('31', '1141', 'BTM', 'CHA', 'ERJ142', '660');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('32', '1142', 'CLD', 'CHI', '767-301ER', '246');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('33', '1143', 'CDC', 'CST', 'CRJ900', '1345');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('34', '1144', 'CRW', 'COD', 'A321', '2452');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('35', '1145', 'STT', 'CDB', 'ERJ142', '2121');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('36', '1146', 'CHA', 'COU', 'CRJ900', '1212');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('37', '1147', 'CHI', 'CST', '767-301ER', '999');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('38', '1148', 'CST', 'DAL', 'A321', '1111');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('39', '1149', 'COD', 'SCC', 'CRJ900', '1579');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('40', '1150', 'CDB', 'DEC', 'A321', '909');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('41', '1151', 'CAE', 'DRT', 'ERJ142', '898');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('42', '1152', 'CSG', 'BOS', '767-301ER', '890');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('43', '1153', 'CBM', 'BOI', 'A321', '8989');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('44', '1154', 'COU', 'CAK', '767-301ER', '7676');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('45', '1155', 'CCR', 'EWR', 'CRJ900', '676');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('46', '1156', 'CDV', 'HNL', '767-301ER', '8668');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('47', '1157', 'DAL', 'LAX', 'CRJ900', '675');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('48', '1158', 'SCC', 'DEN', 'A321', '5645');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('49', '1159', 'DEC', 'ABI', 'A321', '4533');
INSERT INTO `aircargo_database`.`routes_table` (`route_id`, `flight_num`, `origin_airport`, `destination_airport`, `aircraft_id`, `distance_miles`) VALUES ('50', '1160', 'DRT', 'ORD', 'A321', '2445');

-- Show all data Filling in ROUTES table.
Select * from ROUTES_table;


-- INSERT DATA INTO POF TABLE
SELECT * FROM aircargo_database.pof;

INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('1', '2', 'A321', '34', 'CRW', 'COD', '01B', 'BUSINESS', '2019-01-26', '1117');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('2', '2', '767-301ER', '4', 'JFK', 'LAX', '01B', 'ECONOMY', '2018-09-02', '1114');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('3', '1', 'ERJ142', '9', 'DEN', 'LAX', '01EP', 'ECONOMY PLUS', '2019-12-26', '1119');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('4', '1', 'CRJ900', '30', 'BUR', 'STT', '01FC', 'FIRST CLASS', '2018-11-04', '1140');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('5', '5', '767-301ER', '12', 'ABI', 'ADK', '02B', 'BUSINESS', '2018-07-02', '1122');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('6', '5', 'ERJ142', '18', 'ANI', 'BGR', '02E', 'ECONOMY', '2020-05-06', '1128');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('7', '8', 'A321', '38', 'CST', 'DAL', '02EP', 'ECOOMY PLUS', '2020-08-09', '1148');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('8', '4', '767-301ER', '5', 'LAX', 'JFX', '02FC', 'FIRST CLASS', '2020-04-06', '1115');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('9', '7', '767-301ER', '20', 'AVL', 'BOI', '03B', 'BUSINESS', '2020-07-08', '1130');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('10', '5', 'ERJ142', '22', 'BGR', 'BJI', '03E', 'ECONOMY', '2020-05-31', '1132');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('11', '11', 'ERJ142', '31', 'BTM', 'CHA', '03EP', 'ECONOMY PLUS', '2018-08-02', '1141');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('12', '4', '767-301ER', '4', 'JFK', 'LAX', '03FC', 'FIRST CLASS', '2020-04-30', '1114');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('13', '11', '767-301ER', '5', 'LAX', 'JFX', '04B', 'BUSINESS', '2020-11-12', '1115');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('14', '8', 'A321', '43', 'CBM', 'BOI', '04E', 'ECONOMY ', '2018-05-02', '1153');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('15', '17', 'A321', '13', 'ABI', 'ADK', '04EP', 'ECONOMY PLUS', '2019-06-03', '1123');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('16', '9', '767-301ER', '15', 'CAK', 'ANI', '04FC', 'FIRST CLASS', '2020-09-10', '1125');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('17', '11', '767-301ER', '4', 'JFK', 'LAX', '05B', 'BUSINESS', '2020-11-09', '1114');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('18', '10', 'A321', '10', 'HNL', 'DEN', '05E', 'ECONOMY ', '2020-10-11', '1120');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('19', '19', 'CRJ900', '47', 'DAL', 'LAX', '05EP', 'ECONOMY PLUS', '2021-01-13', '1157');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('20', '9', 'CRJ900', '33', 'CDC', 'CST', '05FC', 'FIRST CLASS', '2018-11-02', '1143');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('21', '15', 'A321', '14', 'BQN', 'CAK', '06B', 'BUSINESS', '2018-11-02', '1124');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('22', '14', 'ERJ142', '35', 'STT', 'CDB', '06E', 'ECONOMY ', '2019-04-02', '1145');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('23', '19', 'CRJ900', '30', 'BUR', 'STT', '06EP', 'ECONOMY PLUS', '2020-12-17', '1140');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('24', '13', 'A321', '13', 'ADK', 'BQN', '06FC', 'FIRST CLASS', '2019-01-05', '1123');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('25', '21', 'CRJ900', '45', 'CCR', 'EWR', '07B', 'BUSINESS', '2020-03-07', '1155');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('26', '14', '767-301ER', '42', 'CSG', 'BOS', '07E', 'ECONOMY ', '2020-01-25', '1152');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('27', '22', 'ERJ142', '22', 'BGR', 'BJI', '07EP', 'ECONOMY PLUS', '2020-09-02', '1132');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('28', '16', 'CRJ900', '39', 'COD', 'SCC', '07FC', 'FIRST CLASS', '2019-05-04', '1149');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('29', '24', 'A321', '14', 'BQN', 'CAK', '08B', 'BUSINESS', '2019-07-22', '1124');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('30', '18', '767-301ER', '46', 'CDV', 'HNL', '08E', 'ECONOMY', '2019-07-07', '1156');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('31', '32', 'ERJ142', '31', 'BTM', 'CHA', '08EP', 'ECONOMY PLUS', '2021-03-04', '1141');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('32', '20', 'CRJ900', '36', 'CHA', 'COU', '08FC', 'FIRST CLASS', '2019-09-26', '1146');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('33', '25', '767-301ER', '23', 'BLV', 'BFL', '09B', 'BUSINESS', '2019-03-07', '1133');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('34', '19', '767-301ER', '32', 'CLD', 'CHI', '09E', 'ECONOMY', '2018-02-07', '1142');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('35', '47', 'CRJ900', '33', 'CDC', 'CST', '09EP', 'ECONOMY PLUS', '2020-12-15', '1143');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('36', '20', 'CRJ900', '39', 'COD', 'SCC', '09FC', 'FIRST CLASS', '2020-05-03', '1149');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('37', '29', 'A321', '38', 'CST', 'DAL', '10B', 'BUSINESS', '2019-11-21', '1148');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('38', '25', '767-301ER', '44', 'COU', 'CSK', '10E', 'ECONOMY', '2019-10-21', '1154');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('39', '50', 'A321', '21', 'BFL', 'BET', '10EP', 'ECONOMY PLUS', '2020-08-15', '1131');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('40', '41', 'A321', '34', 'CRW', 'COD', '10FC', 'FIRST CLASS', '2019-02-15', '1144');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('41', '29', 'ERJ900', '9', 'DEN', 'LAX', '11B', 'BUSINESS', '2018-05-03', '1119');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('42', '27', '767-301ER', '46', 'CDV', 'HNL', '11E', 'ECONOMY', '2018-12-29', '1156');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('43', '44', '767-301ER', '15', 'CAK', 'ANI', '11FC', 'FIRST CLASS', '2020-10-06', '1125');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('44', '33', 'ERJ142', '35', 'STT', 'CDB', '12B', 'BUSINESS', '2020-04-15', '1145');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('45', '28', 'ERJ142', '26', 'BET', 'BTM', '12E', 'ECONOMY', '2018-12-12', '1136');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('46', '46', 'A321', '8', 'ORD', 'EWR', '12FC', 'FIRST CLASS', '2011-07-08', '1118');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('47', '49', '767-301ER', '15', 'CAK', 'ANI', '13B', 'BUSINESS', '2020-08-19', '1125');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('48', '31', '767-301ER', '20', 'AVL', 'BOI', '13E', 'ECONOMY', '2018-12-31', '1130');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('49', '18', '767-301ER', '1', 'EWR', 'HNL', '13FC', 'ECONOMY PLUS', '2018-04-01', '1111');
INSERT INTO `aircargo_database`.`pof` (`pof_ID`, `customer_id`, `aircraft_id`, `route_id`, `depart`, `arrival`, `seat_num`, `class_id`, `travel_date`, `flight_num`) VALUES ('50', '46', 'A321', '25', 'RDM', 'BJI', '14E', 'BUSINESS', '2020-11-25', '1135');


-- INSERT DATA IN TO TICKET_DETAILS TABLE
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('2', '2020-02-02', '22', 'ERJ142', 'ECONOMPLUS', '1', 'AGB', '220', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('3', '2020-03-03', '21', 'CRJ900', 'BUSINESS', '1', 'BOH', '490', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('4', '2020-04-04', '4', '767-301ER', 'FIRSTCLASS', '1', 'AGB', '390', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('5', '2020-05-05', '5', 'ERJ142', 'ECONOMY', '1', 'CTM', '120', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('6', '2020-07-07', '7', '767-301ER', 'BUSINESS', '1', 'BFS', '430', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('7', '2020-08-08', '8', 'A321', 'ECONOMPLUS', '1', 'DAL', '275', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('8', '2020-09-09', '9', '767-301ER', 'FIRSTCLASS', '1', 'BOH', '380', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('9', '2020-10-10', '10', 'A321', 'ECONOMY', '1', 'MCO', '135', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('10', '2020-11-11', '11', '767-301ER', 'BUSINESS', '1', 'AGB', '465', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('11', '2020-12-12', '19', 'CRJ900', 'ECONOMPLUS', '1', 'DEN', '225', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('12', '2019-01-01', '13', 'A321', 'FIRSTCLASS', '1', 'YVR', '395', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('13', '2019-02-02', '14', 'ERJ142', 'BUSINESS', '1', 'CTM', '120', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('14', '2019-03-03', '25', '767-301ER', 'ECONOMY', '1', 'BHX', '499', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('15', '2019-04-04', '16', 'CRJ900', 'FIRSTCLASS', '1', 'YVR', '395', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('16', '2019-05-03', '17', 'A321', 'ECONOMPLUS', '1', 'BFS', '250', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('17', '2019-06-06', '24', '767-301ER', 'ECONOMY', '1', 'YVR', '190', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('18', '2019-07-07', '20', 'A321', 'BUSINESS', '1', 'CTM', '480', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('19', '2019-08-09', '20', 'CRJ900', 'FIRSTCLASS', '1', 'MCO', '365', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('20', '2019-09-21', '25', '767-301ER', 'ECONOMY', '1', 'BOH', '150', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('21', '2019-10-22', '29', 'A321', 'BUSINESS', '1', 'PEK', '410', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('22', '2019-11-23', '1', 'ERJ142', 'ECONOMPLUS', '1', 'BFS', '250', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('23', '2019-12-24', '14', '767-301ER', 'ECONOMY', '1', 'BHX', '170', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('24', '2019-01-25', '2', 'A321', 'BUSINESS', '1', 'YVR', '505', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('25', '2018-01-01', '9', 'CRJ900', 'FIRSTCLASS', '1', 'AGB', '390', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('26', '2018-02-01', '19', '767-301ER', 'ECONOMY', '1', 'AGB', '100', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('27', '2018-03-01', '18', '767-301ER', 'FIRSTCLASS', '1', 'BFS', '375', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('28', '2018-04-01', '29', 'ERJ142', 'BUSINESS', '1', 'EME', '510', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('29', '2018-05-01', '8', 'A321', 'ECONOMY', '1', 'YVR', '190', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('30', '2018-06-01', '20', 'CRJ900', 'FIRSTCLASS', '1', 'PEK', '315', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('31', '2018-07-01', '5', '767-301ER', 'BUSINESS', '1', 'BFS', '430', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('32', '2018-08-01', '11', 'ERJ142', 'ECONOMPLUS', '1', 'BHX', '295', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('33', '2018-09-01', '2', '767-301ER', 'ECONOMY', '1', 'DAL', '130', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('34', '2018-10-01', '1', 'CRJ900', 'FIRSTCLASS', '1', 'DEN', '320', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('35', '2018-11-01', '15', 'A321', 'BUSINESS', '1', 'BFS', '430', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('36', '2018-12-01', '28', 'ERJ142', 'ECONOMY', '1', 'BHX', '170', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('37', '2018-12-19', '31', '767-301ER', 'ECONOMY', '1', 'DAL', '130', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('38', '2020-03-04', '32', 'ERJ142', 'ECONOMPLUS', '1', 'AGB', '220', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('39', '2020-03-12', '33', 'CRJ900', 'BUSINESS', '1', 'BOH', '490', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('40', '2020-04-29', '4', '767-301ER', 'FIRSTCLASS', '1', 'AGB', '390', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('41', '2020-05-30', '5', 'ERJ142', 'ECONOMY', '1', 'CTM', '120', 'JET AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('42', '2020-07-17', '49', '767-301ER', 'BUSINESS', '1', 'BFS', '430', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('43', '2020-08-12', '50', 'A321', 'ECONOMPLUS', '1', 'DAL', '275', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('44', '2020-09-05', '44', '767-301ER', 'FIRSTCLASS', '1', 'BOH', '380', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('45', '2020-07-10', '46', 'A321', 'ECONOMY', '1', 'MCO', '135', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('46', '2020-11-08', '11', '767-301ER', 'BUSINESS', '1', 'AGB', '465', 'EMIRATES');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('47', '2020-12-09', '47', 'CRJ900', 'ECONOMPLUS', '1', 'DEN', '225', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('48', '2019-01-11', '41', 'A321', 'FIRSTCLASS', '1', 'YVR', '395', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('49', '2020-12-13', '19', 'CRJ900', 'ECONOMPLUS', '1', 'DEN', '225', 'BRITISH AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('50', '2019-01-15', '46', 'A321', 'FIRSTCLASS', '1', 'YVR', '395', 'QATAR AIRWAYS');
INSERT INTO `aircargo_database`.`ticket_details` (`Ticket_id`, `p_date`, `customer_id`, `aircraft_id`, `class_id`, `no_of_tickets`, `a_code`, `price_per_ticket`, `brand`) VALUES ('1', '2018-12-26', '27', '767-301ER', 'ECONOMY', '1', 'DAL', '130', 'EMIRATES');


--  All the passengers (customers) who have travelled in routes 01 to 25.

SELECT * FROM customer_table WHERE customer_id IN (SELECT DISTINCT customer_id FROM pof WHERE route_id BETWEEN 1 AND 25) ORDER BY customer_id;

--  The number of passengers and total revenue in business class from the ticket_details table.

SELECT COUNT( DISTINCT customer_id) AS num_passengers, sum(no_of_tickets * price_per_ticket) as total_revenue FROM ticket_details WHERE class_id = 'Business';

--  The full name of the customer by extracting the first name and last name from the customer table. 

SELECT CONCAT( first_name , " " , last_name) AS full_name FROM customer_table; 

-- A query to extract the customers who have registered and booked a ticket. Use data from the customer and ticket_details tables. 

SELECT first_name , last_name FROM customer_table WHERE customer_id IN (SELECT DISTINCT b.customer_id FROM customer_table a,ticket_details b);

-- A query to identify the customer’s first name and last name based on their customer ID and brand (Emirates) from the ticket_details table.

SELECT first_name , last_name FROM customer_table WHERE customer_id IN ( SELECT DISTINCT customer_id FROM ticket_details WHERE brand = 'Emirates');

 -- A query to identify the customers who have travelled by Economy Plus class using Group By and Having clause on the passengers_on_flights table.

SELECT class_id, count(DISTINCT customer_id)AS num_passengers FROM pof GROUP BY class_id HAVING class_id = 'Economy Plus';
SELECT * FROM customer_table a
INNER JOIN ( SELECT DISTINCT customer_id FROM pof WHERE class_id = 'Economy Plus') b
ON a.customer_id = b.customer_id;
 
-- A query to identify whether the revenue has crossed 10000 using the IF clause on the ticket_details table. 

SELECT 
    IF((SELECT 
                SUM(no_of_tickets * price_per_ticket) AS total_revenue
            FROM
                ticket_details) > 10000,
        'crossed 10k',
        'not crossed 10k');

--  A query to find the maximum ticket price for each class using window functions on the ticket_details table. 
SELECT class_id, max(price_per_ticket) FROM ticket_details GROUP BY class_id;
SELECT DISTINCT class_id , max(price_per_ticket) over (PARTITION BY class_id) AS max_price FROM ticket_details ORDER BY max_price;

-- A For the route ID 4, write a query to view the execution plan of the passengers_on_flights table. 
EXPLAIN SELECT * FROM pof WHERE route_id = 4;

-- A query to extract the passengers whose route ID is 4 by improving the speed and performance of the passengers_on_flights table.

CREATE INDEX idx_rid ON pof (route_id);
EXPLAIN SELECT * FROM pof WHERE route_id = 4;

--  A query to create a view with only business class customers along with the brand of airlines.






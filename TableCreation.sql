Create Database if not exists `TravelOnTheGo` ;
use `TravelOnTheGo`;

CREATE TABLE IF NOT EXISTS `PASSENGER` (
`PASSENGER_NAME`   VARCHAR(20) NOT NULL,
`CATEGORY` 		   VARCHAR(20),
`GENDER`   		   VARCHAR(20),
`BOARDING_CITY`    VARCHAR(30),
`DESTINATION_CITY` VARCHAR(30),
`DISTANCE` 		   INT NOT NULL,
`BUS_TYPE`		   VARCHAR(30) NOT NULL	
);

CREATE TABLE IF NOT EXISTS `PRICE` (
`BUS_TYPE`		   VARCHAR(30) NOT NULL,
`DISTANCE` 		   INT NOT NULL,
`PRICE` 		   INT
);

--------------------/*PASSENGER*/---------------------------
insert into `PASSENGER` values("Sejal", "AC", "F", "Bengaluru", "Chennai", 350, "Sleeper");

insert into `PASSENGER` values("Anmol", "Non-AC", "M", "Mumbai", "Hyderabad", 700, "Sitting");

insert into `PASSENGER` values("Pallavi", "AC", "F", "Panaji", "Bengaluru", 600, "Sleeper");

insert into `PASSENGER` values("Khusboo", "AC", "F", "Chennai", "Mumbai", 1500, "Sleeper");

insert into `PASSENGER` values("Udit", "Non-AC", "M", "Trivandrum", "Panaji", 1000, "Sleeper");

insert into `PASSENGER` values("Ankur", "AC", "M", "Nagpur", "Hyderabad", 500, "Sitting");

insert into `PASSENGER` values("Hemant", "Non-AC", "M", "Panaji", "Mumbai", 700, "Sleeper");

insert into `PASSENGER` values("Manish", "Non-AC", "M", "Hyderabad", "Bengaluru", 500, "Sitting");

insert into `PASSENGER` values("Piyush", "AC", "M", "Pune", "Nagpur", 700, "Sitting");

---------------------------------------/* Pricce */-----------------------------

insert into `PRICE` values("Sleeper", 350 , 770);
insert into `PRICE` values("Sleeper", 500 , 1100);
insert into `PRICE` values("Sleeper", 600 , 1320);
insert into `PRICE` values("Sleeper", 700 , 1540);
insert into `PRICE` values("Sleeper", 1000 , 2200);
insert into `PRICE` values("Sleeper", 1200 , 2640);
insert into `PRICE` values("Sleeper", 1500 , 2700);
insert into `PRICE` values("Sitting", 500 , 620);
insert into `PRICE` values("Sitting", 600 , 744);
insert into `PRICE` values("Sitting", 700 , 868);
insert into `PRICE` values("Sitting", 1000 , 1240);
insert into `PRICE` values("Sitting", 1200 , 1488);
insert into `PRICE` values("Sitting", 1500 , 1860);


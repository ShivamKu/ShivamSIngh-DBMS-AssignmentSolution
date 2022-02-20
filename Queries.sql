/*3)How many females and how many male passengers travelled for a minimum distance of 
600 KM s?*/
/* METHOD 1 OR SOLUTION 1 */
SELECT GENDER, COUNT(GENDER) NUM FROM `PASSENGER` P WHERE  P.DISTANCE >= 600
GROUP BY GENDER;

/* METHOD 2 OR SOLUTION 2 */
SELECT COUNT(CASE WHEN (GENDER) = 'M' THEN 1 END) MALE,
COUNT(CASE WHEN (Gender) = 'F' THEN 1 END) FEMALE FROM `PASSENGER` WHERE Distance >=600;

/*4)Find the minimum ticket price for Sleeper Bus*/
SELECT MIN(PRICE) FROM `PRICE` WHERE BUS_TYPE LIKE "SLEEPER";

/*5)Select passenger names whose names start with character 'S' */
SELECT * FROM `PASSENGER` WHERE PASSENGER_NAME LIKE "S%";

/*6)Calculate price charged for each passenger displaying Passenger name, Boarding City, 
Destination City, Bus_Type, Price in the output*/
SELECT PA.PASSENGER_NAME, PA.BOARDING_CITY, PA.DESTINATION_CITY, PA.BUS_TYPE,
PR.PRICE FROM `PASSENGER` PA INNER JOIN `PRICE` PR ON PA.BUS_TYPE = PR.BUS_TYPE
AND PA.DISTANCE = PR.DISTANCE;

/*7)What are the passenger name/s and his/her ticket price who travelled in the Sitting bus 
for a distance of 1000 KM s */
SELECT PA.PASSENGER_NAME,PR.PRICE FROM `PASSENGER` PA INNER JOIN `PRICE` PR 
ON PA.BUS_TYPE = PR.BUS_TYPE AND PA.DISTANCE = PR.DISTANCE WHERE
PA.BUS_TYPE LIKE "SITTING" AND PA.DISTANCE = 1000;

/*8)What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to 
Panaji?*/
SELECT PA.PASSENGER_NAME,PA.DESTINATION_CITY AS BOARDING_CITY, PA.BOARDING_CITY AS
DESTINATION_CITY, PR.BUS_TYPE, PR.PRICE FROM `PASSENGER` PA, `PRICE` PR
WHERE PA.PASSENGER_NAME LIKE "PALLAVI" AND PA.DISTANCE = PR.DISTANCE ORDER BY
PR.PRICE;

/* 9) List the distances from the "Passenger" table which are unique (non-repeated 
distances) in descending order */
SELECT DISTINCT DISTANCE FROM `PASSENGER`  ORDER BY DISTANCE DESC;

/* 10) Display the passenger name and percentage of distance travelled by that passenger 
from the total distance travelled by all passengers without using user variables */
SELECT PASSENGER_NAME, DISTANCE * 100.0/(SELECT SUM(DISTANCE) FROM `PASSENGER`) PERCENTAGE_OF_DISTANCE FROM `PASSENGER`;

/*Display the distance, price in three categories in table Price
a) Expensive if the cost is more than 1000
b) Average Cost if the cost is less than 1000 and greater than 500
c) Cheap otherwise*/

DELIMITER $$
USE `TravelOnTheGo` $$
CREATE PROCEDURE COST_1()
BEGIN
	SELECT PRICE.DISTANCE, PRICE.PRICE,
	CASE
		WHEN PRICE.PRICE > 1000 THEN "EXPENSIVE"
		WHEN PRICE.PRICE > 500 AND PRICE.PRICE <= 1000 THEN "AVERAGE COST"
		ELSE "CHEAP"
	END
    AS COST FROM PRICE;
END $$

CALL COST_1;



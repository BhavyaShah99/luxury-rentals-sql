insert into guests values
(10, 'Shah', 'Bhavya', '1999-12-09', '77 Gerrard Street West, Toronto ON'),
(20, 'Kantimahanti', 'Neehar', '1999-05-03', '77 Gerrard Street West, Toronto ON'),
(30, 'Chivikula', 'Abhishek', '1999-05-10', '77 Gerrard Street West, Toronto ON'),
(40, 'Nasit', 'Haresh', '1999-04-24', '200 Elm Street, Toronto ON'),
(50, 'Patel', 'Dhruv', '1999-04-08', '200 Elm Street, Toronto ON'),
(60, 'Mirza', 'Sajjad', '1998-11-27', '77 Gerrard Street West, Toronto ON'),
(70, 'Wick', 'John', '1965-05-03', '77 Holly Street West, California ON'),
(80, 'Castellano', 'Daniel', '1999-08-08', '87 Bay Street West, Toronto ON'),
(90, 'Cory', 'Lewis', '1985-05-07', '7 Spadina Street, Toronto ON'),
(100, 'Craig', 'Daniel', '1997-06-03', '778 Bay Street West, Toronto ON');

insert into hosts values
('bhavyashah9962@gmail.com'),
('heman829@hotmail.com'),
('samshah@yahoo.co.in'),
('morgantookers_rox@gmail.com');

insert into property values
(1, 'bhavyashah9962@gmail.com', 5, 3, 7, '87 Miami beach, Miami FL', 350, true),
(2, 'bhavyashah9962@gmail.com', 7, 4, 7, '56 Hollywood Blvd, Los Angeles CA', 400, true),
(3, 'heman829@hotmail.com', 10, 5, 14, '8 Toronto beach, Toronto FL', 550, true),
(4, 'samshah@yahoo.co.in', 14, 10, 20, '3302  St. John Street, Miami FL', 320, true),
(5, 'morgantookers_rox@gmail.com', 11, 9, 15, '2357  rd Avenue, Texas FL', 3350, true),
(6, 'bhavyashah9962@gmail.com', 8, 4, 10, '4466  Wallace Street, New York FL', 3500, true),
(7, 'morgantookers_rox@gmail.com', 4, 3, 6, '4927  West Drive, Ann Arbor MI', 500, true);

insert into propertytype values
(1, 'city-water', NULL, 'pool', true),
(2, 'city', 57, 'bus', NULL, false),
(3, 'city', 86, 'LRT', NULL, false),
(4, 'water', NULL, 'beach', true),
(5, 'city', 35, 'none', NULL, false),
(6, 'city', 95, 'subway', false),
(7, 'city-water', NULL, 'lake', false),

insert into luxuries values
(1, 'hot tub'),
(1, 'sauna'),
(1, 'daily cleaning'),
(2, 'daily cleaning'),
(3, 'sauna'),
(3, 'laundry service'),
(3, 'hot tub'),
(3, 'daily breakfast delivery'),
(4, 'hot tub'),
(4, 'concierge service'),
(5, 'concierge service'),
(6, 'hot tub'),
(6, 'sauna'),
(6, 'laundry service'),
(6, 'concierge service'),
(6, 'daily breakfast delivery'),
(7, 'sauna');

insert into availableproperties values
(1, '2014-01-07');
(3, '2015-07-09');
(5, '2015-01-10');
(6, '2010-12-23');
(2, '2013-11-30');

insert into rental values
(23, 10, 6, 3, '2015-06-03', '2015-07-03', '3429374827382819'),
(20, 40, 5, 5, '2015-07-12', '2015-07-29', '1233928462718273'),
(52, 20, 3, 10, '2015-12-31', '2016-01-02', '2343423434544666'),
(12, 10, 2, 6, '2016-03-09', '2016-03-21', '2344534453455345');

insert into retalguestsinfo values
(23, 10),
(23, 20),
(23, 30),
(20, 40),
(20, 50),
(20, 10),
(20, 100),
(20, 90),
(52, 10),
(52, 20),
(52, 30),
(52, 40),
(52, 50),
(52, 60),
(52, 70),
(52, 80),
(52, 90),
(52, 100),
(12, 10),
(12, 40),
(12, 50),
(12, 60),
(12, 70),
(12, 80);

insert into propertyrating values
(10, 23, 'Beautiful palace with awesome amenities definitely will visit again', 4),
(10, 52, 'Okay-ish place not that clean could use a few renovations', 3);

insert into hostrating values
(10, 23, 5);



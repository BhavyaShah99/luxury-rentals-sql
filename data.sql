--consistent with data.txt
--(guest_id, name, dob, address)
insert into guests values
(1, 'Darth Vader', '1985-12-06', 'Death Star'),
(2, 'Leia, Princess', '2001-10-05', 'Alderaan'),
(3, 'Romeo Montague', '1988-05-11', 'Verona'),
(4, 'Juliet Capulet', '1991-07-24', 'Verona'),
(5, 'Mercutio', '1988-03-03', 'Verona'),
(6, 'Chewbacca', '1998-09-15', 'Kashyyyk');

--consistent with data.txt
--(email)
insert into hosts values
('luke@gmail.com'),
('leia@gmail.com'),
('han@gmail.com');

--consistent with data.txt
--(property_id, host, bedrooms, bathrooms, capacity, address)
insert into property values
(1, 'luke@gmail.com', 3, 1, 6, 'Tatooine'),
(2, 'leia@gmail.com', 1, 1, 2, 'Alderaan'),
(3, 'han@gmail.com', 2, 1, 3, 'Corellia'),
(4, 'leia@gmail.com', 2, 1, 2, 'Verona'),
(5, 'han@gmail.com', 2, 2, 4, 'Florence'),
(6, 'luke@gmail.com', 1, 1, 2, 'Toronto');

--consistent with data.txt
--(property_id, property_type, walkablity, closest_transit, water_type, lifegaurd_offered)
insert into propertytype values
(1, 'other', 0, 'none', NULL, false),
(2, 'water', 0, 'none', 'lake', false),
(3, 'city', 20, 'bus', NULL, false),
(4, 'other', 0, 'none', NULL, false),
(5, 'other', 0, 'none', NULL, false),
(6, 'other', 0, 'none', NULL, false);

--consistent with data.txt
--(property_id, luxury)
insert into luxuries values
(1, 'hot tub'),
(1, 'daily cleaning'),
(2, 'hot tub'),
(2, 'sauna'),
(2, 'daily cleaning'),
(3, 'concierge service'),
(3, 'daily breakfast delivery'),
(4, 'laundry service'),
(5, 'hot tub'),
(6, 'hot tub'),
(6, 'sauna'),
(6, 'laundry service'),
(6, 'daily cleaning'),
(6, 'concierge service');

-- insert into availableproperties values;

--consistent with data.txt
--(rental_id, renter, property_id, num_of_people, check_in_date, check_out_date, renter_credit_card)
insert into rental values
(1, 1, 2, 2, '2019-01-05', '2019-01-11', '3466704824219330'),
(2, 2, 3, 3, '2019-01-12', '2019-01-25', '6011253896008199'),
(3, 3, 2, 2, '2019-01-12', '2019-01-18', '5446447451075463'),
(4, 5, 5, 3, '2019-01-05', '2019-01-11', '4666153163329984'),
(5, 6, 5, 2, '2019-01-12', '2019-01-18', '6011624297465933');

--consistent with data.txt
--(rental_id, guest_id)
insert into rentalguestsinfo values
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(2, 4),
(3, 3),
(3, 4),
(4, 5),
(4, 3),
(4, 1),
(5, 6),
(5, 2);

--consistent with data.txt
--(rental_id, week, price)
insert into prices values
(1, 1, 580),
(2, 1, 750),
(2, 2, 750),
(3, 1, 600),
(4, 1, 1000),
(5, 1, 1220);

--consistent with data.txt
--(guest_id, rental_id, stars)
insert into propertyrating values
(2, 1, 5),
(1, 1, 2),
(3, 2, 5),
(4, 2, 5),
(2, 2, 1),
(4, 3, 5),
(5, 4, 1),
(3, 4, 1),
(6, 5, 3);

--consistent with data.txt
--(renter, rental_id, stars)
insert into hostrating values
(1, 1, 2),
(2, 2, 5),
(3, 3, 3),
(5, 4, 4),
(6, 5, 4);

--consistent with data.txt
--(guest_id, rental_id, comment)
insert into comments values
(1, 1, 'Looks like she hides rebel scum here.'),
(2, 2, 'A bit scruffy, could do with more regular housekeeping'),
(6, 5, 'Fantastic, arggg');



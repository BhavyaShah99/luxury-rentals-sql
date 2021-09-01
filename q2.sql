
SET SEARCH_PATH TO schema, public;

drop view if exists all_properties cascade;

create view all_properties as 
select rental_id, property_id, capacity, num_of_people as rental_guests, case when num_of_people = capacity then true else false end as at_capacity
from Rental natural join Property;

select at_capacity, avg(stars) as avg_rating, count(distinct rental_id) as num_of_rental
from all_properties natural join PropertyRating
group by at_capacity;
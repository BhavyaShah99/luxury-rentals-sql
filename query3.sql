
SET SEARCH_PATH TO schema, public;

drop view if exists rental_properties_guests cascade;

create view rental_properties_guests as 
select property_type, rental_id, property_id, num_of_people-1 as ext_guests
from Rental natural join Property natural join PropertyType;

select property_type, avg(ext_guests) as avg_ext_guests
from rental_properties_guests
group by property_type;	

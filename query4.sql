
SET SEARCH_PATH TO schema, public;

drop view if exists host_with_ratings cascade;
drop view if exists ratings_and_prices cascade;
drop view if exists avg_ratings cascade;

create view host_with_ratings as 
select host, rental_id, property_id, stars
from Rental natural join HostRating natural join Property;

create view ratings_and_prices as 
select host, rental_id, property_id, stars, week, price
from host_with_ratings natural join Prices;

create view avg_ratings as 
select host, avg(stars) as avg_rating, max(price) as highest_weekly_price
from ratings_and_prices
group by host;

select host, max(avg_rating) as avg_rating, highest_weekly_price
from avg_ratings
group by host, highest_weekly_price;

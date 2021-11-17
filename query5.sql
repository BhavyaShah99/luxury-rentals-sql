
SET SEARCH_PATH TO schema, public;

drop view if exists highest_lowest_prices cascade;
drop view if exists ranges cascade;
drop view if exists range_stars cascade;

create view highest_lowest_prices as 
select property_id, max(price) as highest_weekly_price, min(price) as lowest_weekly_price
from Prices natural join Rental natural full join Property
group by property_id;

create view ranges as 
select property_id, highest_weekly_price, lowest_weekly_price, highest_weekly_price - lowest_weekly_price as range
from highest_lowest_prices
group by range, property_id, highest_weekly_price, lowest_weekly_price
order by property_id;

create view range_stars as
select max(range) as max_range
from ranges;

select property_id, lowest_weekly_price, highest_weekly_price, range, 
	   case when range = max_range then '*' else null end as highest_range
from ranges, range_stars
order by highest_weekly_price;

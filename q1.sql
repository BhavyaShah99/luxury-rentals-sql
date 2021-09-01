
SET SEARCH_PATH TO schema, public;

SELECT luxury, count(property_id) AS properties
FROM luxuries
GROUP BY luxury;
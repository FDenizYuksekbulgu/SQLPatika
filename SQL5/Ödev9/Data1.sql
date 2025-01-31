SELECT city.city_id, country.country_id
FROM city
INNER JOIN country ON city.country_id = country.country_id;

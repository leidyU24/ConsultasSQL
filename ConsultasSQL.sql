// Selecciona las columnas film_id y title de la tabla film.
select  film_id, title from film

//Selecciona 5 filas de la tabla film, obteniendo todas las columnas.
select * from film order by film_id asc limit 5

//Selecciona filas de la tabla film donde film_id sea menor que 4.
select * from film where film_id < 4

//Selecciona filas de la tabla film donde el rating sea PG o G.
SELECT * FROM film WHERE rating='PG' OR rating = 'G'

//Selecciona filas de la tabla actor donde el nombre sea Angela, Angelina o Audrey usando IN.
select * from actor where first_name in ('Angela','Angelina', 'Audrey')

//Obtén una lista de actores con el nombre Julia.
select * from actor where first_name like '%Julia'

//Obtén una lista de actores con los nombres Chris, Cameron o Cuba.
select * from actor where first_name in ('Chris','Cameron', 'Cuba')

//Selecciona la fila de la tabla customer para el cliente con el nombre Jamie Rice.
select * from customer where first_name ='Jamie' and last_name ='Rice'

//Selecciona el monto y la fecha de pago de la tabla payment donde el monto pagado sea menor a $1.
select payment_date, amount from payment where amount < 1

//¿Cuáles son las diferentes duraciones de alquiler permitidas por la tienda?
select * from rental

//Ordena las filas en la tabla city por country_id y luego por city.
select * from city order by country_id asc
select * from city order by city asc

//¿Cuáles son los ID de los últimos 3 clientes que devolvieron un alquiler?
select * from rental where return_date is not null order by return_date desc limit 3

//¿Cuántas películas tienen clasificación NC-17? ¿Cuántas tienen clasificación PG o PG-13?
SELECT rating, COUNT(rating) FROM film 
WHERE rating='PG' OR rating = 'PG-13' OR rating='NC-17'
GROUP BY rating;

//¿Cuántos clientes diferentes tienen registros en la tabla rental?
select count(DISTINCT customer_id) from rental 

//¿Hay algún cliente con el mismo apellido?
select last_name, COUNT(last_name) from customer GROUP BY last_name order by count desc;

//¿Qué película (id) tiene la mayor cantidad de actores?
select film_id, count(film_id) as No_actores from film_actor GROUP BY film_id order by No_actores desc;

//¿Qué actor (id) aparece en la mayor cantidad de películas?
select actor_id, count(actor_id) as No_peliculas from film_actor GROUP BY actor_id order by No_peliculas desc;

//Cuenta el número de ciudades para cada country_id en la tabla city. Ordena los resultados por count(*).
select country_id, count(*) as total_ciudad from city group by country_id order by total_ciudad desc

//¿Cuál es la tarifa de alquiler promedio de las películas? ¿Puedes redondear el resultado a 2 decimales?
select round(avg(amount),2) from payment

//Selecciona los 10 actores que tienen los nombres más largos (nombre y apellido combinados).
select first_name, last_name, length(first_name) + length(last_name) as totalCaracter
from actor order by totalCaracter desc  limit 10














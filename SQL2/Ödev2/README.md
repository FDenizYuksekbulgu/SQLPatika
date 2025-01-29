Data1

Film tablosundaki t�m s�tunlar�, replacement_cost de�eri 12.99'dan b�y�k e�it ve 16.99'dan k���k olanlar� s�ralayan sorgu (BETWEEN - AND kullan�larak):

SELECT * FROM film 
WHERE replacement_cost BETWEEN 12.99 AND 16.98
ORDER BY replacement_cost;

Data2

Actor tablosunda bulunan first_name ve last_name s�tunlar�ndaki verileri, first_name 'Penelope' veya 'Nick' veya 'Ed' de�erleri olmas� ko�uluyla s�ralayan sorgu (IN operat�r� kullan�larak):

SELECT first_name, last_name FROM actor 
WHERE first_name IN ('Penelope', 'Nick', 'Ed')
ORDER BY first_name, last_name;

Data3

Film tablosundaki t�m s�tunlar�, rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma ko�ullar�yla s�ralayan sorgu (IN operat�r� kullan�larak):

SELECT * FROM film 
WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99)
ORDER BY rental_rate, replacement_cost;
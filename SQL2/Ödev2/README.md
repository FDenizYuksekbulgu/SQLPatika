Data1

Film tablosundaki tüm sütunlarý, replacement_cost deðeri 12.99'dan büyük eþit ve 16.99'dan küçük olanlarý sýralayan sorgu (BETWEEN - AND kullanýlarak):

SELECT * FROM film 
WHERE replacement_cost BETWEEN 12.99 AND 16.98
ORDER BY replacement_cost;

Data2

Actor tablosunda bulunan first_name ve last_name sütunlarýndaki verileri, first_name 'Penelope' veya 'Nick' veya 'Ed' deðerleri olmasý koþuluyla sýralayan sorgu (IN operatörü kullanýlarak):

SELECT first_name, last_name FROM actor 
WHERE first_name IN ('Penelope', 'Nick', 'Ed')
ORDER BY first_name, last_name;

Data3

Film tablosundaki tüm sütunlarý, rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koþullarýyla sýralayan sorgu (IN operatörü kullanýlarak):

SELECT * FROM film 
WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99)
ORDER BY rental_rate, replacement_cost;
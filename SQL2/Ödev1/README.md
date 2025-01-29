
# Readme

## Veri1

Tüm filmlerin baþlýk ve açýklamalarýný seçen sorgu:

```sql
SELECT title, description FROM film;
```

## Veri2

Film tablosundaki tüm sütunlarý, film süresi 60 dakikadan büyük ve 75 dakikadan küçük olanlarý seçen sorgu:

```sql
SELECT * FROM film 
WHERE length > 60 AND length < 75;
```
## Veri3

Film tablosundaki tüm sütunlarý, rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olanlarý sýralayan sorgu:

```sql
SELECT * FROM film 
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)
ORDER BY rental_rate, replacement_cost;
```

## Veri4

Customer tablosunda bulunan first_name sütunundaki deðeri 'Mary' olan müþterinin last_name sütunundaki deðerini getiren sorgu:

```sql
SELECT last_name FROM customer 
WHERE first_name = 'Mary';
```

## Veri5

Film tablosundaki uzunluðu (length) 50'den büyük OLMAYIP ayný zamanda rental_rate deðeri 2.99 veya 4.99 OLMAYAN verileri sýralayan sorgu:

```sql
SELECT * FROM film 
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99)
ORDER BY length, rental_rate;
```




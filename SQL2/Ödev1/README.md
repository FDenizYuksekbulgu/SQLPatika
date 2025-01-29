
# Readme

## Veri1

T�m filmlerin ba�l�k ve a��klamalar�n� se�en sorgu:

```sql
SELECT title, description FROM film;
```

## Veri2

Film tablosundaki t�m s�tunlar�, film s�resi 60 dakikadan b�y�k ve 75 dakikadan k���k olanlar� se�en sorgu:

```sql
SELECT * FROM film 
WHERE length > 60 AND length < 75;
```
## Veri3

Film tablosundaki t�m s�tunlar�, rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olanlar� s�ralayan sorgu:

```sql
SELECT * FROM film 
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)
ORDER BY rental_rate, replacement_cost;
```

## Veri4

Customer tablosunda bulunan first_name s�tunundaki de�eri 'Mary' olan m��terinin last_name s�tunundaki de�erini getiren sorgu:

```sql
SELECT last_name FROM customer 
WHERE first_name = 'Mary';
```

## Veri5

Film tablosundaki uzunlu�u (length) 50'den b�y�k OLMAYIP ayn� zamanda rental_rate de�eri 2.99 veya 4.99 OLMAYAN verileri s�ralayan sorgu:

```sql
SELECT * FROM film 
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99)
ORDER BY length, rental_rate;
```




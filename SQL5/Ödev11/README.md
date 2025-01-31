# SQL Sorguları

Bu çalışma, `actor` ve `customer` tablolarındaki `first_name` sütunlarıyla ilgili çeşitli SQL sorgularını içermektedir. Aşağıda, her bir sorgunun açıklamaları ve nasıl kullanıldıkları verilmiştir.

### 1. **Tüm `first_name` Verilerini Sıralamak**

SELECT first_name
FROM actor
UNION
SELECT first_name
FROM customer
ORDER BY first_name;
Bu sorgu, her iki tablodan (actor ve customer) tüm first_name verilerini alır ve alfabetik sırayla sıralar.

### 2. Kesişen first_name Verilerini Sıralamak

SELECT first_name
FROM actor
INTERSECT
SELECT first_name
FROM customer
ORDER BY first_name;
Bu sorgu, her iki tabloda da bulunan ortak first_name değerlerini döndürür ve sıralar.

### 3. İlk Tablo (actor) İçinde Bulunup İkinci Tablo (customer) İçinde Olmayan first_name Verilerini Sıralamak

SELECT first_name
FROM actor
WHERE first_name NOT IN (SELECT first_name FROM customer)
ORDER BY first_name;
Bu sorgu, sadece actor tablosunda olup customer tablosunda olmayan first_name değerlerini döndürür ve sıralar.

### 4.1. Tekrar Eden Veriler İçin Tüm first_name Verilerini Sıralamak

SELECT first_name
FROM actor
UNION ALL
SELECT first_name
FROM customer
ORDER BY first_name;
Bu sorgu, her iki tablodaki tüm first_name verilerini, tekrar edenler dahil, sıralar.

### 4.2. Tekrar Eden Veriler İçin Kesişen first_name Verilerini Sıralamak

SELECT first_name
FROM actor
WHERE first_name IN (SELECT first_name FROM customer)
ORDER BY first_name;
Bu sorgu, her iki tablodaki tekrar eden ve kesişen first_name değerlerini sıralar.

### 4.3. Tekrar Eden Veriler İçin İlk Tablo (actor) İçinde Bulunup İkinci Tablo (customer) İçinde Olmayan first_name Verilerini Sıralamak

SELECT first_name
FROM actor
WHERE first_name NOT IN (SELECT first_name FROM customer)
ORDER BY first_name;
Bu sorgu, actor tablosunda olup customer tablosunda olmayan ve tekrar eden first_name verilerini sıralar.

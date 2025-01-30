# SQL Sorguları için README

Bu dosya, `dvdrental` veritabanı üzerinde gerçekleştirilen SQL sorgularını açıklamaktadır. Her bir sorgu, belirli bir veri analizi gerçekleştirmek amacıyla yazılmıştır ve aşağıdaki bölümlerde her bir sorgunun ne yaptığı açıklanmıştır.

## Sorgu 1: Film Tablosuna Göre Rating Değerlerine Göre Gruplama

SELECT rating, COUNT(\*)
FROM film
GROUP BY rating;

Açıklama: Bu sorgu, film tablosundaki filmleri rating değerine göre gruplar ve her bir rating kategorisi için film sayısını döndürür. Bu şekilde, her bir puan kategorisi için kaç tane film bulunduğu öğrenilebilir.

## Sorgu 2: Replacement Cost'e Göre Gruplama ve Film Sayısı 50'den Fazla Olan Değerler

SELECT replacement_cost, COUNT(_)
FROM film
GROUP BY replacement_cost
HAVING COUNT(_) > 50;
Açıklama: Bu sorgu, film tablosunda replacement_cost sütununa göre gruplama yapar ve her replacement_cost değeri için film sayısını hesaplar. HAVING COUNT(\*) > 50 koşulu, sadece 50'den fazla filme sahip olan replacement_cost değerlerini listelemeyi sağlar.

## Sorgu 3: Customer Tablosunda Store_id'ye Göre Gruplama

SELECT store_id, COUNT(\*)
FROM customer
GROUP BY store_id;
Açıklama: Bu sorgu, customer tablosundaki müşterileri store_id değerine göre gruplar ve her mağaza (store_id) için müşteri sayısını döndürür. Böylece her mağazaya ait müşteri sayısı öğrenilebilir.

## Sorgu 4: En Fazla Şehir Sayısı Olan Ülke

SELECT country_id, COUNT(_)
FROM city
GROUP BY country_id
ORDER BY COUNT(_) DESC
LIMIT 1;
Açıklama: Bu sorgu, city tablosundaki şehirleri country_id değerine göre gruplar ve her ülkenin sahip olduğu şehir sayısını hesaplar. ORDER BY COUNT(\*) DESC ile şehir sayısına göre azalan sıralama yapılır, ve LIMIT 1 ile sadece en fazla şehre sahip ülkenin verisi döndürülür.

## Gereksinimler

Veritabanı: dvdrental örnek veritabanı
Veritabanı Sunucusu: MySQL veya PostgreSQL gibi SQL uyumlu bir veritabanı sunucusu.

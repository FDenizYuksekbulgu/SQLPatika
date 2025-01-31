# SQL Sorgu Kütüphanesi

Bu proje, çeşitli SQL sorguları içeren bir koleksiyondur. Aşağıda açıklanan sorgular, `city`, `country`, `customer`, ve `payment` tablolarını kullanarak veri çekmek ve ilişkilendirmek amacıyla yazılmıştır.

## İçerik

Bu proje üç SQL sorgusunu içerir:

1. **Data1: `LEFT JOIN` ile Şehir ve Ülke Bilgisi**
2. **Data2: `RIGHT JOIN` ile Ödeme ve Müşteri Bilgisi**
3. **Data3: `RIGHT JOIN` ile Ödeme ve Müşteri Bilgisi (Tekrar)**

### 1. Data1: `LEFT JOIN` ile Şehir ve Ülke Bilgisi

SELECT city, country
FROM city
LEFT JOIN country ON city.country_id = country.country_id;

Bu sorgu, city ve country tabloları arasında bir LEFT JOIN kullanarak şehir ve ülke bilgilerini birleştirir. LEFT JOIN kullanıldığı için, tüm şehirler listelenecek ve ülke bilgisi olmayan şehirler için NULL değerleri döndürülecektir.

city: Şehirlerin bilgileri.
country: Ülkelerin bilgileri.
LEFT JOIN: city tablosundaki tüm kayıtlar dönecek, ancak country tablosundaki eşleşen kayıtlar varsa, onlarla birlikte gösterilecektir. Eşleşmeyen country kayıtları için NULL değerleri dönecektir.

## 2. Data2: 'RIGHT JOIN' ile Ödeme ve Müşteri Bilgisi

SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;

Bu sorgu, customer ve payment tabloları arasında bir RIGHT JOIN kullanarak ödeme ve müşteri bilgilerini birleştirir. RIGHT JOIN kullanıldığı için tüm ödeme bilgileri listelenecek, müşteri bilgisi olmayan ödemeler için NULL değerleri döndürülecektir.

payment: Ödeme bilgileri.
customer: Müşteri bilgileri.
RIGHT JOIN: payment tablosundaki tüm kayıtlar dönecek, ancak customer tablosundaki eşleşen kayıtlar varsa, onlarla birlikte gösterilecektir. Eşleşmeyen customer kayıtları için NULL değerleri dönecektir.

## 3. Data3: RIGHT JOIN ile Ödeme ve Müşteri Bilgisi (Tekrar)

SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;
Bu sorgu, yukarıdaki sorgu ile aynıdır. Aynı RIGHT JOIN işlemi ve aynı tablo yapıları kullanılarak ödeme ve müşteri bilgileri birleştirilir.

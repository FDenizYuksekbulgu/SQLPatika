# SQL README

Bu dosya, farklı SQL sorgularını içermektedir. Sorgular, ilişkili tabloları **INNER JOIN** kullanarak birleştirmekte ve belirli alanları getirmektedir.

## 1. City ve Country Tablolarını Birleştiren Sorgu

SELECT city.city_id, country.country_id
FROM city
INNER JOIN country ON city.country_id = country.country_id;

### Açıklama:

- **city** ve **country** tabloları **country_id** sütunu üzerinden ilişkilendirilmiştir.
- **city_id** ve **country_id** sütunları seçilerek iki tablodaki veriler eşleştirilmiştir.

---

## 2. Payment ve Customer Tablolarını Birleştiren Sorgu

SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id;

### Açıklama:

- **customer** ve **payment** tabloları **customer_id** sütunu üzerinden ilişkilendirilmiştir.
- **payment_id**, **first_name** ve **last_name** sütunları seçilerek ödeme yapan müşterilerin bilgileri getirilmiştir.

---

## 3. Rental ve Customer Tablolarını Birleştiren Sorgu

SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id;

### Açıklama:

- **customer** ve **rental** tabloları **customer_id** sütunu üzerinden ilişkilendirilmiştir.
- **rental_id**, **first_name** ve **last_name** sütunları seçilerek kiralama işlemi yapan müşterilerin bilgileri getirilmiştir.

---

Bu sorgular, veritabanındaki ilişkili tabloların nasıl birleştirileceğini göstermektedir.

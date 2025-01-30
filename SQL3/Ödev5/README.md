# PostgreSQL SQL Queries

Bu dosya, PostgreSQL veritabanında kullanılabilecek çeşitli SQL sorgularını içermektedir. Aşağıda her bir sorgunun amacı ve nasıl çalıştığı açıklanmaktadır.

## 1. En Uzun 5 Film (Title 'n' Harfi ile Biten)

Bu sorgu, `film` tablosunda **ismi 'n' harfi ile biten** ve **en uzun süreye sahip** ilk 5 filmi listeler.

```sql
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;
```

### Açıklama:

- `WHERE title LIKE '%n'` → İsmi 'n' harfi ile biten filmleri filtreler.
- `ORDER BY length DESC` → Filmleri uzunluklarına göre büyükten küçüğe sıralar.
- `LIMIT 5` → En uzun 5 filmi getirir.

---

## 2. En Kısa 6-10. Filmler (Title 'n' Harfi ile Biten)

Bu sorgu, `film` tablosunda **ismi 'n' harfi ile biten** ve **en kısa süreye sahip 6-10. filmleri** listeler.

```sql
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;
```

### Açıklama:

- `WHERE title LIKE '%n'` → İsmi 'n' harfi ile biten filmleri filtreler.
- `ORDER BY length ASC` → Filmleri uzunluklarına göre küçükten büyüğe sıralar.
- `OFFSET 5` → En kısa ilk 5 filmi atlar (6-10. filmleri alır).
- `LIMIT 5` → Sonraki 5 filmi getirir.

---

## 3. Store ID 1 Olan Müşterilerin Soyadına Göre İlk 4 Kaydı

Bu sorgu, `customer` tablosunda **store_id = 1** olan müşterileri **last_name** sütununa göre **büyükten küçüğe sıralayarak** ilk 4 kaydı getirir.

```sql
SELECT customer_id, last_name, store_id
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
```

### Açıklama:

- `WHERE store_id = 1` → Sadece `store_id` değeri **1** olan müşterileri getirir.
- `ORDER BY last_name DESC` → Müşterileri soyadına göre **tersten (Z-A) sıralar**.
- `LIMIT 4` → İlk 4 kaydı getirir.

---

Bu SQL sorgularını PostgreSQL içinde **pgAdmin 4 veya PSQL terminalinde** çalıştırarak test edebilirsin. 🚀

# README

Bu dosya, belirli SQL sorgularının işlevlerini ve açıklamalarını içermektedir. Aşağıda, beş farklı SQL sorgusunun ne işe yaradığı ve nasıl çalıştığı detaylandırılmıştır.

---

## Data1:

```sql
SELECT DISTINCT replacement_cost
FROM film;
```

### Açıklama:

Bu sorgu, `film` tablosundaki `replacement_cost` sütununda bulunan birbirinden farklı (benzersiz) değerleri listeler.

### İşleyiş:

- **`SELECT DISTINCT replacement_cost`** → `replacement_cost` sütunundaki tekrar eden değerleri kaldırarak benzersiz olanları seçer.
- **`FROM film`** → Verilerin `film` tablosundan alınacağını belirtir.

---

## Data2:

```sql
SELECT COUNT(DISTINCT replacement_cost)
FROM film;
```

### Açıklama:

Bu sorgu, `film` tablosundaki `replacement_cost` sütununda kaç farklı (unique) değer olduğunu sayar.

### İşleyiş:

- **`COUNT(DISTINCT replacement_cost)`** → `replacement_cost` sütunundaki benzersiz değerlerin sayısını döndürür.
- **`FROM film`** → Verilerin `film` tablosundan alınacağını belirtir.

---

## Data3:

```sql
SELECT COUNT(*)
FROM film
WHERE title LIKE 'T%'
AND rating = 'G';
```

### Açıklama:

Bu sorgu, `film` tablosundaki film isimlerinden ('title') **'T' harfi ile başlayan** ve **rating değeri 'G' olan** kaç film olduğunu sayar.

### İşleyiş:

- **`COUNT(*)`** → Koşulu sağlayan film sayısını döndürür.
- **`WHERE title LIKE 'T%'`** → Film isminin 'T' harfi ile başlamasını sağlar.
- **`AND rating = 'G'`** → Film rating değerinin 'G' olmasını şart koşar.

---

## Data4:

```sql
SELECT COUNT(*)
FROM country
WHERE LENGTH(country) = 5;
```

### Açıklama:

Bu sorgu, `country` tablosundaki ülke isimlerinden **tam olarak 5 karakter uzunluğunda olanların** sayısını döndürür.

### İşleyiş:

- **`COUNT(*)`** → Koşulu sağlayan ülke isimlerinin sayısını döndürür.
- **`WHERE LENGTH(country) = 5`** → Ülke isminin uzunluğunun tam olarak 5 karakter olmasını sağlar.

---

## Data5:

```sql
SELECT COUNT(*)
FROM city
WHERE city ILIKE '%r';
```

### Açıklama:

Bu sorgu, `city` tablosundaki şehir isimlerinden **'R' veya 'r' harfi ile biten** kaç tane olduğunu sayar.

### İşleyiş:

- **`COUNT(*)`** → Koşulu sağlayan şehir isimlerinin sayısını döndürür.
- **`WHERE city ILIKE '%r'`** → Şehir isminin büyük/küçük harf duyarsız ('R' veya 'r') karakteri ile bitmesini sağlar.
- **`ILIKE`** → PostgreSQL'de büyük/küçük harf duyarsız sorgu yapmayı sağlar.

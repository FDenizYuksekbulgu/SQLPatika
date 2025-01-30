Bu dosya, sorguların ne yaptığını ve hangi veritabanı üzerinden çalıştırıldığını açıklayan bilgileri içeriyor.

Bu dosya, `dvdrental` veritabanı üzerinde gerçekleştirilen SQL sorgularını açıklamaktadır. Her bir sorgu, belirli bir veri analizi gerçekleştirmek amacıyla yazılmıştır ve aşağıdaki bölümlerde her bir sorgunun ne yaptığı açıklanmıştır.

## 1. **Sorgu: Ortalama rental_rate**

**Sorgu:**

```sql
SELECT AVG(rental_rate) FROM film;
Açıklama: Bu sorgu, film tablosundaki tüm filmlerin rental_rate (kiralama ücreti) sütunundaki değerlerin ortalamasını hesaplar. AVG() fonksiyonu, belirtilen sütundaki tüm sayısal değerlerin ortalamasını döndürür.

Kullanım Amacı: Bu sorgu, film tablosundaki filmlerin ortalama kiralama ücretini bulmak için kullanılır.

## 2. Sorgu: 'C' Harfi ile Başlayan Filmler Sorgu:


SELECT COUNT(*) FROM film WHERE title LIKE 'C%';
Açıklama: Bu sorgu, film tablosundaki title (başlık) sütununda adı 'C' harfiyle başlayan tüm filmleri sayar. LIKE 'C%' ifadesi, başlığı 'C' harfiyle başlayıp ardından herhangi bir karakter dizisini içeren satırları seçer.

Kullanım Amacı: Bu sorgu, adı 'C' harfiyle başlayan film sayısını bulmak için kullanılır.

## 3. Sorgu: rental_rate Değeri 0.99 Olan En Uzun Film Sorgu:


SELECT MAX(length) FROM film WHERE rental_rate = 0.99;
Açıklama: Bu sorgu, film tablosundaki rental_rate değeri 0.99 olan filmler arasında en uzun film süresini bulur. MAX(length) fonksiyonu, belirtilen koşula uyan satırlardan en yüksek length (film süresi) değerini döndürür.

Kullanım Amacı: Bu sorgu, kiralama ücreti 0.99 olan en uzun filmin süresini bulmak için kullanılır.

## 4. Sorgu: 150 Dakikadan Uzun Filmler İçin Farklı replacement_cost Değerleri
Sorgu:


SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length > 150;
Açıklama: Bu sorgu, film tablosundaki uzunluğu 150 dakikadan büyük olan filmler için farklı replacement_cost (yerine koyma maliyeti) değerlerinin sayısını döndürür. COUNT(DISTINCT replacement_cost) fonksiyonu, belirtilen koşula uyan filmlerdeki farklı replacement_cost değerlerinin sayısını döndürür.

Kullanım Amacı: Bu sorgu, uzunluğu 150 dakikadan fazla olan filmler için kaç farklı replacement_cost değeri olduğunu bulmak için kullanılır.

```

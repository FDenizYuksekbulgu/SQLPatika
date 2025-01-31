-- 1. id'ye göre name değiştirildi.
UPDATE employee 
SET name = 'Updated Name' 
WHERE id = 5;

-- 2. name'e göre birthday değiştirildi.
UPDATE employee 
SET birthday = '1991-06-18' 
WHERE name = 'Alice Johnson';

-- 3. birthday'e göre email değiştirildi.
UPDATE employee 
SET email = 'new.email@example.com' 
WHERE birthday = '1985-08-20';

-- 4. email'e göre name değiştirildi.
UPDATE employee 
SET name = 'Modified Name' 
WHERE email = 'bob.brown@example.com';

-- 5. Belirli bir id'nin hem name hem email güncellendi.
UPDATE employee 
SET name = 'Updated User', email = 'updated.user@example.com' 
WHERE id = 10;

-- 1. id'ye göre bir satırı sil
DELETE FROM employee 
WHERE id = 3;

-- 2. name'e göre bir satırı sil
DELETE FROM employee 
WHERE name = 'Codi';

-- 3. birthday'e göre bir satırı sil
DELETE FROM employee 
WHERE birthday = '2024-05-28';

-- 4. email'e göre bir satırı sil
DELETE FROM employee 
WHERE email = 'olivzeyo@nyu.edu';

-- 5. name ve email şartına göre bir satırı sil
DELETE FROM employee 
WHERE name = 'Bernadina' AND email = 'bgaiter10@ca.gov';

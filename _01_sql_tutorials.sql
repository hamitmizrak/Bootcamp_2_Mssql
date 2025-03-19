-- single comment
/* multiple comment */

-- GRAMER (SFJW GH O)
/*
SELECT *, Distinct(Tekrarsız Veriler), Top(istenilen sayıda Listeleme), Min,Max,Avg(Ortalama),Sum, Count
FROM `databaseAdi`.`tabloAdi`
JOIN (Birden fazla tabloda ortak vb yapıları listelemek)
WHERE (Şart, BIL) (Between, In, Like)
GROUP BY (Belli kolon için gruplama yapmak içindir)
HAVING (Filtreleme) (Sum, Avg, Count, Min, Max)
ORDER BY (Sıralama)
*/

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- Common Rules
/*
1- kolon değerini verirken çift tırnak yerine tek tırnak kullanmalısınız.  categoryName='java'
*/


-- --------------------------------------------------------------------------
-- Eğer birden fazla database varsa istediğimiz database seçmek
USE nortwind;

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- DQL (Data Query Language)
--  SORU-1) nortwind veritabanından `Categories` tablosundaki verileri gösteriniz ?
-- 1.YOL
SELECT * FROM Categories; 
-- 2.YOL (Eğer birden fazla database varsa)
select * FROM nortwind.dbo.Categories;
select * FROM [nortwind].dbo.Categories;
select * FROM [nortwind].[dbo].Categories;
select * FROM [nortwind].[dbo].[Categories];
select CategoryID,CategoryName,Description,Picture FROM nortwind.dbo.Categories;
select Picture,Description,CategoryName,CategoryID FROM nortwind.dbo.Categories;

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- AS
-- SORU-2) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID, [CategoryName]  verileri gösteriniz ?
-- 1.YOL
select CategoryID,CategoryName FROM nortwind.dbo.Categories;
-- 2.YOL(alias: Takma ad anlamına gelmektedir)
SELECT 
cate.CategoryID,
cate.CategoryName 
FROM nortwind.dbo.Categories as cate;
-- 3.YOL(alias: Takma ad anlamına gelmektedir ancak as yazmak zorunda değiliz.)
SELECT 
cate.CategoryID,
cate.CategoryName 
FROM nortwind.dbo.Categories cate;

-- ----------------------------------------
-- ----------------------------------------
-- SIRALAMA: 

-- ----------------------------------------
-- ----------------------------------------
-- WHERE: Şart(Belirli şartları sağlayan durumlarda filtreleme yapmak içindir.)
/*
WHERE, SELECT, UPDATE, DELETE gibi sorgularla birlikte kullanılır.
*/

-- SORU-3) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID 3 ve yukarısındaki verileri gösteriniz ?
-- Sayısal Değer ile Filtreleme
SELECT 
cate.CategoryID,
cate.CategoryName 
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID>=3;

-- Birden Fazla Koşul Kullanımı (AND ve OR)
-- VEYA (OR)
-- SORU-4) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID 3 ve yukarısındaki veya [CategoryName]  `Produce` olan verileri gösteriniz ?
SELECT *
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID>=3 OR cate.CategoryName='Produce';


-- SORU-4) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID 3 ve yukarısındaki veya [CategoryName]  `java` olan verileri gösteriniz ?
SELECT *
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID>=3 OR cate.CategoryName='java';


-- VE (AND)
-- SORU-5) nortwind veritabanından `Categories` tablosundaki kolonlarda [CategoryName]  `java` olan  ve [CategoryID]>=10 verileri gösteriniz ?
SELECT *
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryName='java' AND cate.CategoryID>=10;





-- BIL
-- BETWEEN
-- In
-- LIKE
SELECT * FROM Categories; 
-- SORU-4) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID 3 ile 5 arasındaki(dahil)  verileri gösteriniz ?
SELECT 
	cate.CategoryID,
	cate.CategoryName 
FROM 
	nortwind.dbo.Categories as cate
WHERE 
	cate.CategoryID 
BETWEEN 3 AND 5;

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- DML



-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- DDL


-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------


-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- DCL


-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- TCL
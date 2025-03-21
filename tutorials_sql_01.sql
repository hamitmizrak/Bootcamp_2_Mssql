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

/*
2- Keywords
USE, SELECT, FROM, AS, ORDER BY, ASC, DESC, TOP, DISTINCT,
WHERE, AND, OR, NOT, COUNT, IS NULL, IS NOT NULL,BETWEEN,
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
-- SORU-1) nortwind veritabanından `Categories` tablosundaki verileri(* Wilcard) gösteriniz ?
-- 1.YOL
SELECT * FROM Categories; 
-- 2.YOL (Eğer birden fazla database varsa)
select * FROM nortwind.dbo.Categories;
select * FROM [nortwind].dbo.Categories;
select * FROM [nortwind].[dbo].Categories;
select * FROM [nortwind].[dbo].[Categories];

-- SORU-1) nortwind veritabanından `Categories` tablosundaki verilerin kolon isimlerini ayrı ayrı yazarak gösteriniz ?
select CategoryID,CategoryName,Description,Picture FROM nortwind.dbo.Categories;
select Picture,Description,CategoryName,CategoryID FROM nortwind.dbo.Categories;

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- ***AS***
-- As: Takma ad anlamına geliyor.
-- SORU-2) nortwind veritabanından `Categories` tablosundaki verilerden [CategoryID], [CategoryName]  verileri gösteriniz ?
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
-- ***ORDER BY***
-- SIRALAMA (ORDER BY)
-- Belirli sutunlara göre sıralamak için kullanıyoruz ARTAN(ASC), AZALAN(DESC)

-- SORU-2) nortwind veritabanından `Categories` tablosundaki verilerden [CategoryID]'a göre küçükten büyüğe verileri gösteriniz ?
-- NOT: Varsayılan(Defaultta) zaten ASC olarak gelir.
-- 1.YOL
SELECT *
FROM nortwind.dbo.Categories cate;

-- 2.YOL
SELECT *
FROM nortwind.dbo.Categories cate 
ORDER BY cate.CategoryID ASC ;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki verilerden [CategoryID]'a göre büyükten küçüğe doğru verileri gösteriniz ?
SELECT *
FROM nortwind.dbo.Categories cate 
ORDER BY cate.CategoryID DESC;

-- Birden Fazla Sütuna Göre Sıralama
-- SORU-2) nortwind veritabanından `Categories` tablosundaki verilerden
-- [CategoryID]'a göre büyükten küçüğe, ve CategoryName Küçükten büyüğe  doğru verileri gösteriniz ?
SELECT *
FROM nortwind.dbo.Categories cate 
ORDER BY cate.CategoryID DESC, cate.CategoryName ASC;


-- ----------------------------------------
-- ----------------------------------------
-- ***TOP***
-- TOP (Değerleri sağlayan verileri göster) bir nevi filtreleme işlemidir.


-- SORU-2) nortwind veritabanından `Categories` tablosundaki `CategoryID`'sine göre küçükten büyüğe  doğru sıralayıp,
-- şartı sağlayan 6 tane verileri gösteriniz ?
-- 1.YOL
SELECT TOP 6 *
FROM nortwind.dbo.Categories cate;

-- 2.YOL
SELECT TOP 6 *
FROM nortwind.dbo.Categories cate
ORDER BY cate.CategoryID ASC;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki `CategoryID`'sine göre büyükten küçüğe doğru sıralayıp,
-- şartı sağlayan 6 tane verileri gösteriniz ?

-- 1.YOL
SELECT TOP 6 *
FROM nortwind.dbo.Categories cate
ORDER BY cate.CategoryID DESC;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki verilerden
-- [CategoryID]'a göre büyükten küçüğe, ve CategoryName Küçükten büyüğe  doğru, sağlayan 6 tane bütün verileri gösteriniz ?
SELECT TOP 6 *
FROM nortwind.dbo.Categories cate 
ORDER BY cate.CategoryID DESC, cate.CategoryName ASC;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki verilerden
-- [CategoryID]'a göre büyükten küçüğe, ve CategoryName Küçükten büyüğe  doğru, sağlayan 6 tane sadece CategoryID ve CategoryName
-- verileri gösteriniz ?
SELECT TOP 6 cate.CategoryID, cate.CategoryName
FROM nortwind.dbo.Categories cate 
ORDER BY cate.CategoryID DESC, cate.CategoryName ASC;

-- ----------------------------------------
-- ----------------------------------------
-- ***DISTINCT***
-- DISTINCT bu fonksiyon tekrarlanan verileri bir kez göstermeye yarar.

-- SORU-2) nortwind veritabanından `Categories` tablosundaki  CategoryName'lerini tekrarsız verileri listeleyiniz?
SELECT DISTINCT cate.CategoryName
FROM nortwind.dbo.Categories as cate;

-- ----------------------------------------
-- ----------------------------------------
-- ***WHERE***
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

-- SORU-4) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID 3 ve yukarısındaki verilerin
-- `CategoryID` kolonunu baz alarak büyükten küçüğe doğru sıralayınız ve şartı sağlayan varsa 6 veriyi gösteriniz ?
-- Sayısal Değer ile Filtreleme
-- 1.YOL
SELECT TOP 6 *
cate.CategoryID,
cate.CategoryName
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID>=3
ORDER BY cate.CategoryID;

-- 2.YOL
-- Okunabilinirliği artırmak için parantezi içinde de kullanabilirsiniz.
SELECT TOP (6) *
cate.CategoryID,
cate.CategoryName
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID>=3
ORDER BY cate.CategoryID;


-- Birden Fazla Koşul Kullanımı (AND ve OR)
-- VEYA (OR)
-- SORU-4) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID 3 ve yukarısındaki veya [CategoryName]  `Produce` olan verileri gösteriniz ?
-- NOT: VEYA biride olabilir, ikiside olabilir.
SELECT *
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID>=3 OR cate.CategoryName='Produce';


-- SORU-4) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID 3 ve yukarısındaki veya [CategoryName]  `java` olan verileri gösteriniz ?
SELECT *
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID>=3 OR cate.CategoryName='java';


-- VE (AND)
-- SORU-5) nortwind veritabanından `Categories` tablosundaki kolonlarda [CategoryName]=`java` olan  ve [CategoryID]>=10 olan verileri gösteriniz ?
SELECT *
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryName='java' AND cate.CategoryID>=10;

-- DEĞİL (NOT)
-- SORU-5) nortwind veritabanından `Categories` tablosundaki kolonlarda [CategoryName]=`java` olan  ve [CategoryID]>=10 olmayan verileri gösteriniz ?
-- 1.YOL(NOT)
SELECT * 
FROM nortwind.dbo.Categories as cate
WHERE NOT cate.CategoryName='java' AND cate.CategoryID>=10;

-- 2.YOL (<>)
SELECT * 
FROM nortwind.dbo.Categories as cate
WHERE  cate.CategoryName <> 'java' AND cate.CategoryID>=10;

-- ----------------------------------------
-- ----------------------------------------
-- Selector (Seçiciler)
-- ***IS NULL / IS NOT NULL***  => WHERE
-- IS NULL: Null olan verileri gösterir
-- IS NOT NULL: Null olmayan verileri gösterir

-- SORU-2) nortwind veritabanından `Categories` tablosundaki picture kolonunda null olan verileri gösteriniz ?
SELECT *
FROM  nortwind.dbo.Categories cate
WHERE cate.Picture IS NULL;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki picture kolonunda null olmayan verileri gösteriniz ?
SELECT *
FROM  nortwind.dbo.Categories cate
WHERE cate.Picture IS NOT NULL;

-- ----------------------------------------
-- ----------------------------------------
-- ***COUNT***
-- COUNT fonksiyonu tekrar eden verileri gösterir

-- SORU-2) nortwind veritabanından `Categories` tablosundaki kaç tane veri vardır ?
SELECT * FROM  nortwind.dbo.Categories cate;
SELECT COUNT(*) AS SAYI FROM  nortwind.dbo.Categories cate;
SELECT COUNT(*) AS 'KAÇ TANE SAYI' FROM  nortwind.dbo.Categories cate;
SELECT COUNT(*)  'KAÇ TANE SAYI' FROM  nortwind.dbo.Categories cate;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki Picture kolonunda kaç tane null veri vardır ?
-- 1.YOL
SELECT COUNT(*) AS 'Kaçtane Null olan var ?'
FROM  nortwind.dbo.Categories cate
WHERE cate.Picture IS NULL;

-- 2.YOL
-- SQL Case sensitive değildir
SELECT COUNT(*) as 'Kaçtane Null olan var ?'
FROM  nortwind.dbo.Categories cate
WHERE cate.Picture IS NULL;

-- 3.YOL
-- As kullanmadan yazdım
SELECT COUNT(*) 'Kaçtane Null olan var ?'
FROM  nortwind.dbo.Categories cate
WHERE cate.Picture IS NULL;

-- ----------------------------------------
-- ----------------------------------------
-- ***OPERATOR***
-- Operator


-- ----------------------------------------
-- ----------------------------------------
-- ***BIL***  =>  WHERE
-- BIL
-- BETWEEN (AND, OR)
-- IN
-- LIKE

-- ***BETWEEN***
-- BETWEEN Arasındaki değerleri göstermek için
-- SORU-4) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID 3 ile 5 arasındaki(dahil)  verileri gösteriniz ?
SELECT cate.CategoryID,cate.CategoryName
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID BETWEEN 3 AND 5;

-- ***LIKE***
-- LIKE:

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
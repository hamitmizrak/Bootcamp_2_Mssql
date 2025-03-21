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
-- ***OPERATOR***
-- Operatörler(Operator) SQL ifadeleri üzerinden işlem yapmaya yarayan özel sembollerdir.

-- Matematiksel işlemler, mantık birimleri
-- 1.Matematiksel Operatörler (+ - * / %)
-- Aritmetiksel Operatörler
SELECT 7+3 AS 'Toplam';
SELECT (7-3) AS 'Çıkar';
SELECT 7*3 AS 'Çarp';
SELECT (7/3) AS 'Böl';
SELECT (7%3) AS 'Kalan';

-- 2.Karşılaştırma(Comparison) Operatörler
/*
=  (Eşittir)					EXAM: WHERE categoryID=3;
!= (Eşit değil)					EXAM: WHERE categoryID!=3;
>  (Büyüktür)					EXAM: WHERE categoryID > 3;
>= (Büyük eşit)					EXAM: WHERE categoryID >= 3;
<  (Küçüktür)					EXAM: WHERE categoryID < 3;
<=  (Küçük eşit)				EXAM: WHERE categoryID <= 3;
BETWEEN (Arasında)				EXAM: WHERE categoryID BETWEEN 3 AND 5;
IN (Şart)						EXAM: WHERE categoryName IN ('java','C#');
LIKE (Benzer)					EXAM: WHERE categoryName LIKE 'M%';
IS NULL (Null kontrolünü)       EXAM: WHERE picture IS NULL;
IS NOT NULL (Null olmayan kontrolünü)        EXAM: WHERE picture IS NOT NULL;
*/

-- 3. Mantıksal (Logic) Operatörler
/*
AND		(Her iki koşulu sağlayan)				 EXAM: WHERE categoryID=3 AND categoryName='java';
OR		(Her iki koşuldan en az birini sağlayan) EXAM: WHERE categoryID=3 OR categoryName='java';
NOT		(Koşulun tersi)							 EXAM: WHERE NOT categoryID=3 OR categoryName='java';
ALL     (Tüm sonuçları karşılaştırma)			 EXAM: SELECT * FROM category as c1 WHERE c1.categoryNAME > ALL (SELECT * FROM c1.categoryNAME )
ANY     (Tüm sonuçları karşılaştırma)			 EXAM: SELECT * FROM category as c1 WHERE c1.categoryNAME > ANY (SELECT * FROM c1.categoryNAME ) 
EXISTS  (Alt sorgularda kayıt var mı ?)			 EXAM: WHERE EXISTS (SELECT * FROM database)
*/

-- 4. Bit Düzeyinde (Bitwise:[yani 0 ve 1]) Operatörler
/*
&     AND (bit düzeyinde)   EXAM: SELECT 5 & 3  (0101) & (0011)=(0001)
`     OR  (bit düzeyinde)   EXAM: 
^     XOR (bit düzeyinde)   EXAM: SELECT 5 ^ 3  (0101) & (0011)=(0110)=4+2=6
~     NOT (bit düzeyinde)   EXAM: SELECT -5;
*/
-- Sorgu: İlgili kullanıcını yazma yetkisi var mı yok mu ? 
-- SELECT * FROM Users as u1 WHERE u1.permission & 2 =2; 

-- 5.Atama Operatörler
/* 
=        Değer vermek     EXAM: SET @yas=35
+=       Değer eklemek    EXAM: SET @yas+=35
-=       Değer çıkarmak   EXAM: SET @yas-=35
*=       Değer çarpmak    EXAM: SET @yas*=35
/=       Değer bölmek     EXAM: SET @yas/=35
%=       Değer mod        EXAM: SET @yas=35
*/

-- 6. String Operatörler
-- 7. Special Operatörler (IS NULL, CASE gibi)


-- ----------------------------------------
-- ----------------------------------------
-- ***AGGREGATE FUNCTION***
-- Birden fazla verilerden anlamlı sonuçlar(değer) üretmek için kullanırız. Biz bu yapıya özet değer deriz.
SELECT * FROM nortwind.dbo.Categories;

-- En Küçük
-- SORU-3) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID'sinin en küçük değeri ?
SELECT MIN(cate.CategoryID) as 'En küçük Değer' FROM nortwind.dbo.Categories as cate;

-- En Büyük
-- SORU-3) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID'sinin en büyük değeri ?
SELECT MAX(cate.CategoryID) as 'En küçük Değer' FROM nortwind.dbo.Categories as cate;

-- Sayaç (Count)
-- Toplama (SUM)
-- Ortalama (AVG)


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
SELECT TOP 6 cate.CategoryID, cate.CategoryName
FROM nortwind.dbo.Categories as cate
WHERE cate.CategoryID>=3
ORDER BY cate.CategoryID;

-- 2.YOL
-- Okunabilinirliği artırmak için parantezi içinde de kullanabilirsiniz.
SELECT TOP (6) cate.CategoryID,cate.CategoryName
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
-- SQL Server(Mssql)

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

-- En Küçük (İlgili sutundaki en küçük değeri bulur)
-- SORU-3) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID'sinin en küçük değeri ?
SELECT MIN(cate.CategoryID) as 'En küçük Değer' FROM nortwind.dbo.Categories as cate;

-- En Büyük (İlgili sutundaki en büyük değeri bulur)
-- SORU-3) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID'sinin en büyük değeri ?
SELECT MAX(cate.CategoryID) as 'En küçük Değer' FROM nortwind.dbo.Categories as cate;

-- Sayaç (Count)
-- İlgili değerden kaç tane olduğunu bulur.
-- 1.YOL
SELECT COUNT(*) as 'kaç tane ' FROM nortwind.dbo.Categories as cate;
-- 2.YOL
SELECT COUNT(cate.CategoryID) as 'kaç tane ' FROM nortwind.dbo.Categories as cate;

-- Toplama (SUM)
-- İlgili Sutundaki verileri toplar
SELECT SUM(cate.CategoryID) as 'Toplam: ' FROM nortwind.dbo.Categories as cate;


-- Ortalama (AVG)
-- 1.YOL
SELECT AVG(cate.CategoryID) as 'Toplam: ' FROM nortwind.dbo.Categories as cate;

-- SORU-4) nortwind veritabanından `Categories` tablosundaki verilerden CategoryID ortalaması listeleyiniz ?
-- 2.YOL
SELECT 
SUM(cate.CategoryID) as 'Toplam',
COUNT(cate.CategoryID) as 'Kaç tane',
SUM(cate.CategoryID)/COUNT(cate.CategoryID) as 'Ortalama'
FROM nortwind.dbo.Categories as cate;

-- NOT: Eğer virgülden sonraki değeride almak isterseniz. (1.0) ile çarpmamız gerekiyor.
SELECT 
SUM(cate.CategoryID) as 'Toplam',
COUNT(cate.CategoryID) as 'Kaç tane',
(SUM(cate.CategoryID)*1.0/COUNT(cate.CategoryID)) as 'Ortalama: Toplam/Kaçtane'
FROM nortwind.dbo.Categories as cate;

-- ----------------------------------------
-- ----------------------------------------
-- ***MATHEMATICS***
-- SQL Server(Mssql): Matematikseş fonksiyonlarımızı yani (Math Functions) veriler üzerinde çeşitlik matematikse işlmeler yapmak için kullanırız.

-- 1-) PI SAYISI
SELECT PI() AS 'PI SAYISI';
SELECT EXP(1) AS 'E'

-- 1-) ABS(Mutlak)
SELECT ABS(-44) AS MutlakDeğer;

-- 1-) SQRT(Karekök)
SELECT SQRT(16) AS KareKök;

-- NOT: Math fonksiyonları iç içe yazabilirsiniz.
SELECT SQRT(ABS(-16)) AS KareKök;

-- 1-) POWER(Üslü Sayılar)
SELECT POWER(2,5) AS 'Üslü Sayı';

--  1-) SQUARE(Karesi)
SELECT SQUARE(6) AS 'Karesi'

--  1-) CEILING (Yukarı Yuvarlar)
SELECT CEILING(2.1) AS 'Üste Yuvarla';
SELECT CEILING(2.01) AS 'Üste Yuvarla';
SELECT CEILING(2.001) AS 'Üste Yuvarla';
SELECT CEILING(2.0001) AS 'Üste Yuvarla';

--  1-) FLOOR (Aşağı Yuvarlar)
SELECT FLOOR(2.9) AS 'Üste Yuvarla';

-- 1-) ROUND (Aşağı Veya Yukarı Yuvarla)
SELECT ROUND(12.3456789, 1) AS 'Yuvarla'; -- 1= Virgülden sonra 1 haneyi göster
SELECT ROUND(12.3456789, 2) AS 'Yuvarla'; -- 2= Virgülden sonra 2 haneyi göster
SELECT ROUND(12.3456789, 3) AS 'Yuvarla'; -- 3= Virgülden sonra 3 haneyi göster
SELECT ROUND(12.3456789, 4) AS 'Yuvarla'; -- 4= Virgülden sonra 4 haneyi göster

-- 1-) RANDOM (Rastgele)
SELECT RAND() AS 'Rastgele Sayı';   -- 0<X<1
SELECT RAND(100) AS 'Rastgele Sayı'; -- ÖDEV

-- 1-) LOGARITMA ()
SELECT LOG(10) AS 'Logaritma'; 
SELECT LOG10(1000) AS 'Logaritma'; 

-- 1-) RADIANS() : Dereceyi, radyana çevir
-- D/360= R/2PI = G/400
SELECT RADIANS(180) AS Radyan;
SELECT SIN(RADIANS(30)) AS Radyan;
SELECT SIN(RADIANS(60)) AS Radyan;
SELECT SIN(RADIANS(45)) AS Radyan;

SELECT SIN(30) AS Radyan;
SELECT COS(30) AS Radyan;

-- 1-) DEGREES() : RadyanıDerece çevir
-- D/360= R/2PI = G/400
SELECT DEGREES(PI()) AS Derece;

-- 1-) SIGN() : İşaret Fonksiyonu
-- Pozitif : +1
-- Negatif : -1
-- Sıfır   : 0
SELECT SIGN(10) AS 'Pozitif';
SELECT SIGN(-10) AS 'Negatif';
SELECT SIGN(0) AS 'Negatif';

-- ----------------------------------------
-- ----------------------------------------
-- ***CAST/CONVERT***
/*
CAST: SQL Server'da bir veri türünü başka br veri türüne dönüştürme senaryasudur.
CAST(expression AS target_data_type)
*/
SELECT 5+6 as 'Toplam';
SELECT '5'+6 as 'Toplam';
SELECT 5+'6' as 'Toplam';
SELECT ('5'+'6') as 'Toplam';
SELECT (CAST ('5' AS INTEGER) +'6') as 'Toplam';
SELECT (CAST ('5' AS INTEGER) +CAST('6' AS integer)) as 'Toplam';

-- SORU-4) nortwind veritabanından `Products` tablosundaki verilerden sadece ProductID, UnitPrice seçiniz ve `UnitPrice` money datatype için bunu VARCHAR ile listeleyiniz ?
 SELECT * FROM Products;
 SELECT pro.CategoryID, pro.UnitPrice, CAST(pro.UnitPrice as varchar(20)) AS 'PriceAsMoneyToTextValue' FROM Products AS pro;
 SELECT pro.CategoryID, pro.UnitPrice, CAST(pro.UnitPrice as int) AS 'PriceAsMoneyToIntegerValue' FROM Products AS pro;

 -- SORU-4) nortwind veritabanından `Orders` tablosundaki verilerden sadece OrderID, OrderDate seçiniz ve `OrderDate` yıllarını listeleyiniz ?
 SELECT *  FROM Orders;
 SELECT ord.OrderID,ord.OrderDate, CAST(ord.OrderDate as varchar(10)) AS 'Sadece Yıllar'  FROM Orders AS ord;
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


-- ----------------------------------------
-- ----------------------------------------
-- ***DATA TYPES***


-- ----------------------------------------
-- ----------------------------------------
-- ***DATE***


-- ----------------------------------------
-- ----------------------------------------
-- ***STRING***

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
-- MSSQL (SQL SERVER) Sıklıkla kullanılan teknoloji içerikleri
-- Index
-- SP




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
-- DCL


-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- TCL
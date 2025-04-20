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
SELECT ord.OrderID,ord.OrderDate, CAST(ord.OrderDate as varchar(10)) AS 'Date'  FROM Orders AS ord;

-- CONVERT


-- ----------------------------------------
-- ----------------------------------------
-- ***DATA TYPES***

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
/* 
- SQL içerisinde en çok kullanacağımız bir desen(pattern) işlemini görür.
- Aramalarda, tablolardai filtrelemelerde sıklıkla kullanırız.
- Where ile birlikte kullanılır.

SELECT * 
FROM tablo_adi
WHERE kolon_adi LIKE 'pattern'

LIKE(Wilcard) karakterler
%  => Birden fazla yani 0,1 veya daha fazla karakter demektir.
_  => Sadece 1 karakter demektir.

Malatya
'M%'         M ile başlayan
'%a'         a ile biten
'%lat%'      baş,son ve ortada bir yerde 'lat' olsun
'M_%'        M ile başlayacak sonrasında 1 harf gelecek toplam 2 harf olacak
'M_l_t_y_%'  Mxlxyx toplamında 6 harf olacak şartlarda yanda yazıyor (Mxlxyx)
*/

SELECT * FROM  Customers;
-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde sıralayınız ?
SELECT cus.CustomerID,cus.City, cus.Country
FROM nortwind.dbo.Customers as cus;

-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız ?
SELECT cus.CustomerID,cus.City, cus.Country
FROM nortwind.dbo.Customers as cus
ORDER BY cus.Country;

-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız 
-- ve Count A harfi ile başlayanları listeyiniz ?
SELECT cus.CustomerID,cus.City, cus.Country
FROM nortwind.dbo.Customers as cus
WHERE cus.Country LIKE 'A%'
ORDER BY cus.Country;


-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız 
-- ve Country  a harfi ile biten listeyiniz ?
SELECT cus.CustomerID,cus.City, cus.Country
FROM nortwind.dbo.Customers as cus
WHERE cus.Country LIKE '%a'
ORDER BY cus.Country;

-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız 
-- ve Country içinde 'an' geçen Country listeyiniz ?
SELECT cus.CustomerID,cus.City, cus.Country
FROM nortwind.dbo.Customers as cus
WHERE cus.Country LIKE '%an%'
ORDER BY cus.Country;

-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız 
-- ve Country içinde 6 karakterli olan Country listeyiniz ?
SELECT cus.CustomerID,cus.City, cus.Country
FROM nortwind.dbo.Customers as cus
WHERE cus.Country LIKE '______' --6 tane underscore
ORDER BY cus.Country;

-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız 
-- ve Country içinde 'Me' ile başlayan ve en az 3  karakterli olan Country listeyiniz ?
SELECT cus.CustomerID,cus.City, cus.Country
FROM nortwind.dbo.Customers as cus
WHERE cus.Country LIKE 'Me_%' --6 tane underscore
ORDER BY cus.Country;


-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız 
-- ve Country 'UK' ve City 'London' verilerini listeyiniz ?
SELECT cus.CustomerID,cus.City, cus.Country
FROM nortwind.dbo.Customers as cus
WHERE cus.Country LIKE 'UK' AND cus.City LIKE 'London'
ORDER BY cus.Country;

-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız 
-- ve Country 'UK' ve City 'London' ile ilgili kaç tane veri vardır ?
SELECT COUNT(*) 'Country:UK VE City:London Geçen Sayısı'
FROM nortwind.dbo.Customers as cus
WHERE cus.Country LIKE 'UK' AND cus.City LIKE 'London';

-- SORU-2) nortwind veritabanından `Customers` tablosundaki 'city' ve 'Country' kolunu olacak şekilde ve Country sutun(kolonu) küçükten-büyüğe sıralayınız 
-- ve Count A ile başlayan kaç tane veri vardır ?
SELECT COUNT(*) 'Şartı Sağlayan Veri Sayısı'
FROM nortwind.dbo.Customers as cus
WHERE cus.Country LIKE 'A%';

-- ***IN***
-- IN ile SubQuery arasındaki farklar
-- IN: Birden fazla sonuç döndürür
-- subQuery bir tane sonuç döndürür.
-- IN içinde subQuery kullanabilirsiniz.
SELECT * from Categories;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki 'categoryID'nin en büyük veriyi gösteriniz ?
-- 1.YOL (Manuel)
SELECT * 
FROM nortwind.dbo.Categories as cat
WHERE cat.CategoryID=14;

-- 2.YOL (Dynamics)
SELECT * 
FROM nortwind.dbo.Categories as cat
WHERE cat.CategoryID=(SELECT MAX(query_cat.CategoryID) FROM Categories as query_cat);

-- 3.YOL (Dynamics and Cast)
SELECT * 
FROM nortwind.dbo.Categories as cat
WHERE cat.CategoryID=CAST((
	SELECT MAX(query_cat.CategoryID) 
	FROM Categories as query_cat) as INTEGER);

-- 4.YOL (Dynamics and Cast)
-- IN: Birden fazla değer döndürecek demektir.
SELECT * 
FROM nortwind.dbo.Categories as cat
WHERE cat.CategoryID IN(
CAST((SELECT MAX(query_cat.CategoryID) FROM Categories as query_cat) as INTEGER)
)  

-- SORU-2) nortwind databasesi'nden Products tablosundaki, `CategoryID`leri 1 ve 2olanları listeyiniz
SELECT pro.ProductID, pro.ProductName, pro.CategoryID 
FROM Products as pro
WHERE pro.CategoryID IN (1, 2);

-- SORU-2) nortwind veritabanından Çalışanlar(Employees) tablosundaki ID'si 1,3,5 olan çalışanları listeleyiniz ?
SELECT emp.EmployeeID,emp.FirstName,emp.LastName 
FROM Employees as emp
WHERE emp.EmployeeID IN(1,3,5);

-- SORU-2) nortwind veritabanından Çalışanlar(Employees) tablosundaki ID'si tek olan çalışanları EmployeeID küçükten büyüğe doğru listeleyiniz ?
-- Step-1:  İlk olarak EmployeeID'si tek olanları bulunuz ?
SELECT emp2.EmployeeID 
FROM nortwind.dbo.Employees as emp2
WHERE emp2.EmployeeID % 2 =1  -- tek olan veriler


-- Step-2:  üste bulduğumuz değerleri IN ile çoklu olacak şekilde yazacağım.
SELECT emp1.EmployeeID,emp1.FirstName,emp1.LastName 
FROM Employees as emp1
WHERE emp1.EmployeeID IN(
		SELECT emp2.EmployeeID 
		FROM nortwind.dbo.Employees as emp2
		WHERE emp2.EmployeeID % 2 =1  -- tek olan veriler
)
ORDER BY emp1.EmployeeID asc

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- ***JOIN***
SELECT * from Orders;
SELECT * FROM Employees;
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Suppliers;

-- SORU-2) nortwind veritabanından çalışanların(Employee) aldığı siparişler listeleyiniz ?
SELECT emp.EmployeeID,emp.FirstName,emp.LastName, ord.OrderID
FROM Employees emp 
JOIN Orders ord ON emp.EmployeeID=ord.EmployeeID;

-- SORU-2) nortwind veritabanından Hangi müşteriler(Customer)  `Mexico` veya `Germany`veya `France` şipariş vermiş kişileri listeleyiniz ?
SELECT cus.CustomerID, cus.CompanyName, cus.Country,ord.OrderID,ord.ShipName
FROM Customers cus
JOIN Orders as ord ON cus.CustomerID= ord.CustomerID
WHERE cus.Country IN ('Mexico','Germany','France') ORDER BY cus.Country ASC;

-- SORU-2) nortwind veritabanından Her ürünün(Product) ilgili tedarikcisi(Supplier)  listeleyiniz ?
SELECT pro.ProductID,pro.ProductName,pro.UnitPrice, sup.CompanyName,sup.ContactName 
FROM Products pro 
JOIN Suppliers sup ON pro.SupplierID=sup.SupplierID;

-- NOT: ON sonra gelen verilerden yerleri değiştirebiliriz.
SELECT pro.ProductID,pro.ProductName,pro.UnitPrice, sup.CompanyName,sup.ContactName 
FROM Products pro 
JOIN Suppliers sup ON sup.SupplierID=pro.SupplierID;

-- LEFT JOIN (Products)
SELECT pro.ProductID,pro.ProductName,pro.UnitPrice, sup.CompanyName,sup.ContactName 
FROM Products pro 
LEFT JOIN Suppliers sup ON sup.SupplierID=pro.SupplierID;


-- RIGHT JOIN (Products)
SELECT pro.ProductID,pro.ProductName,pro.UnitPrice, sup.CompanyName,sup.ContactName 
FROM Products pro 
RIGHT JOIN Suppliers sup ON sup.SupplierID=pro.SupplierID;


-- Multiple Join(2 tane JOIN)
SELECT * FROM Categories;  -- CategoryID(PK)
SELECT * FROM Suppliers;   -- SupplierID(PK)
SELECT * FROM Products;    -- ProductID(PK), Supplier(FK), CategoryID(FK)

-- SORU-2) nortwind veritabanından Her ürünün(Product), hangi kategoride(Categories) ve hangi Tedarikciden(Supplier) geldiğini listeleyiniz ?
SELECT 
pro.ProductID, cat.CategoryID,sup.SupplierID, 
cat.CategoryName AS 'Category Name',  sup.CompanyName AS 'Company Name',sup.Country
FROM Products as pro
JOIN Categories as cat ON pro.CategoryID= cat.CategoryID
JOIN Suppliers  as sup ON pro.SupplierID= sup.SupplierID;  

-- SORU-2) nortwind veritabanından Her ürünün(Product), hangi kategoride(Categories) ve hangi Tedarikciden(Supplier) toplam kaç veri geldiği sayınız ?
SELECT COUNT(*) 'Her ürünün(Product), hangi kategoride(Categories) ve hangi Tedarikciden(Supplier) toplam kaç veri'
FROM Products as pro --NOT: FK olan tabloyu buraya yazalım.
JOIN Categories as cat ON pro.CategoryID= cat.CategoryID
JOIN Suppliers  as sup ON pro.SupplierID= sup.SupplierID;  


SELECT * from Orders;     -- OrderID(PK), CustomerID(FK), EmployeeID(FK)
SELECT * FROM Customers;  -- CustomerID

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- ***GROUP BY(GRUPLAMA)***
-- GROUP BY (Belli kolon için gruplama yapmak içindir):
-- SORU-1) Her her bir müşterinin (CustomerID) kaç tane sipariş verdiğini listeyeniz ?
SELECT * FROM Orders;
SELECT * FROM Customers;

-- 1.YOL
SELECT ord.CustomerID, COUNT(*) AS 'Her müşteri Siparişi'
FROM Orders as ord
GROUP BY ord.CustomerID;
-- Her bir müşteriyi gruplayarak o müşteri ait siparişlerinin sayısını verdi

-- 2.YOL
SELECT ord.CustomerID, COUNT(ord.OrderID) AS 'Her müşteri Siparişi'
FROM Orders as ord
GROUP BY ord.CustomerID;
-- Her bir müşteriyi gruplayarak o müşteri ait siparişlerinin sayısını verdi


-- SORU-2) Her her bir çalışanın (EmployeeID) kaç tane sipariş verdiğini listeyeniz ?
SELECT * FROM Orders;
SELECT * FROM Employees;

-- 1.YOL
SELECT ord.EmployeeID, COUNT(*) AS 'Her müşteri Siparişi'
FROM Orders as ord
GROUP BY ord.EmployeeID;
-- Her bir çalışanın (EmployeeID) gruplayarak o müşteri ait siparişlerinin sayısını verdi

-- 2.YOL
SELECT ord.EmployeeID, COUNT(ord.OrderID) AS 'Her müşteri Siparişi'
FROM Orders as ord
GROUP BY ord.EmployeeID;
-- Her bir çalışanın (EmployeeID) gruplayarak o müşteri ait siparişlerinin sayısını verdi.


-- SORU-1) Her bir ürünün toplam kaç kez sipariş verdiğini ve toplam satış miktarının toplamı (@uantify) listeleyen SQL Sorgusunu yazınız ?
SELECT * FROM [Order Details];
SELECT * FROM Products;

SELECT * FROM [Order Details] as ordetail ORDER BY ordetail.ProductID;

SELECT ordetail.ProductID,  COUNT(*) as 'Sipariş Sayisi', SUM(ordetail.Quantity) 'Toplam'
FROM [Order Details] as ordetail
GROUP BY ordetail.ProductID
ORDER BY ordetail.ProductID ASC


-- SORU-1) Her bir ürünün toplam kaç kez sipariş verdiğini ve toplam satış miktar toplamının ortalaması (@uantify) listeleyen SQL Sorgusunu yazınız ?
SELECT ordetail.ProductID,  COUNT(*) as 'Sipariş Sayisi', AVG(ordetail.Quantity) 'Toplam'
FROM [Order Details] as ordetail
GROUP BY ordetail.ProductID
ORDER BY ordetail.ProductID ASC

-- Soru: Her kategoriye (CategoryName) ait toplam kaç ürün olduğunu bulun.
-- Tablo: Products, Categories
SELECT c.CategoryName, COUNT(p.ProductID) AS UrunSayisi
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;


-- Soru: Her müşterinin siparişlerinin toplam tutarını hesaplayın.
-- Tablo: Orders, [Order Details]
SELECT o.CustomerID, SUM(od.UnitPrice * od.Quantity) AS ToplamTutar
FROM Orders o
JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY o.CustomerID;


-- 📘 MSSQL GROUP BY – Northwind Örnekleri ve Çözümleri

-- 🔹 SORU 1: Her ülkeye göre müşteri sayısını listeleyin.  
-- Tablo: Customers
SELECT Country, COUNT(CustomerID) AS MusteriSayisi
FROM Customers
GROUP BY Country;

-- ✅ Çözüm Açıklaması:**  
-- Her ülke için kaç farklı müşteri bulunduğu listelenir.


--🔹 SORU 2: Her çalışanın toplam kaç sipariş aldığı bilgisi.  
-- Tablo: Orders
SELECT EmployeeID, COUNT(OrderID) AS ToplamSiparis
FROM Orders
GROUP BY EmployeeID;

-- ✅ Çözüm Açıklaması:
--Orders tablosundaki EmployeeID’ye göre gruplanarak, her çalışanın toplam sipariş sayısı bulunur.


-- 🔹 SORU 3: Her ürünün toplam satış miktarı ve ortalama birim fiyatı nedir?  
--Tablo: [Order Details]

SELECT ProductID, SUM(Quantity) AS ToplamSatisAdedi, AVG(UnitPrice) AS OrtalamaFiyat
FROM [Order Details]
GROUP BY ProductID;

-- ✅ Çözüm Açıklaması:  
-- Ürünlere göre gruplayarak toplam kaç adet satıldığını ve ortalama birim fiyatını gösterir.


--🔹 SORU 4: Her kategorideki ürün sayısını listeleyin.  
-- Tablo: Products, Categories
SELECT c.CategoryName, COUNT(p.ProductID) AS UrunSayisi
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- ✅ **Çözüm Açıklaması:** 
-- Kategori adına göre gruplayarak, her kategoride kaç ürün bulunduğu hesaplanır.


--🔹 SORU 5: Her tedarikçinin (Supplier) sağladığı toplam ürün sayısı.  
--Tablo:** Products, Suppliers
SELECT s.CompanyName, COUNT(p.ProductID) AS UrunSayisi
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.CompanyName;

-- ✅ Çözüm Açıklaması: 
--Tedarikçi adına göre gruplama yapılarak, her birinin sağladığı ürün sayısı bulunur.


--🔹 SORU 6: Sipariş yılına göre toplam sipariş sayısını listeleyin.  
-- Tablo: Orders
SELECT YEAR(OrderDate) AS SiparisYili, COUNT(OrderID) AS SiparisSayisi
FROM Orders
GROUP BY YEAR(OrderDate);

--✅ Çözüm Açıklaması: 
--Sipariş tarihinden yıl bilgisi alınarak gruplama yapılır ve her yıl kaç sipariş olduğu bulunur.


-- 🔹 SORU 7: Her müşterinin toplam sipariş tutarını bulun.  
-- Tablo: Orders, [Order Details]
-- SORGU
SELECT o.CustomerID, SUM(od.UnitPrice * od.Quantity) AS ToplamTutar
FROM Orders o
JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY o.CustomerID;
--✅ Çözüm Açıklaması:
--Sipariş ve detayları birleştirilerek müşteri bazında siparişlerin toplam tutarı hesaplanır.


-- SORU 8: Ortalama fiyatı 20’den yüksek olan ürünleri ve ortalama fiyatlarını listeleyin.  
-- Tablo: [Order Details]  
-- (Burada `HAVING` ile birlikte `GROUP BY` kullanımı örneklenmiştir.)
SELECT ProductID, AVG(UnitPrice) AS OrtalamaFiyat
FROM [Order Details]
GROUP BY ProductID
HAVING AVG(UnitPrice) > 20;

--✅ Çözüm Açıklaması:  
-- Yalnızca ortalama fiyatı 20’den fazla olan ürünler filtrelenir.


 -- GROP BY (Tablo içindeki Belli Kolon ÜZerinden Gruplama)
 /*
 Bir kolonumuzdaki kaç kere tekrar yaptığını, minumum değerini bulmak ,maksimum değerini bulma (aggregate function) değerler üzerinde işlem yapabilmemizi sağlar
 group by: Kolonun gruplama yapabilmemize olanak sağlar.
 Aggregate: count, max, min, sum, avg
 select kolon_adiXYZ ,aggregate_function from tablo_adi where şart group by kolon_adiXYZ;
 */

 use nortwind;
 SELECT * FROM employees

 -- Group By Örnek-1
 -- Aşağıdaki örnek, "Customers" tablosundaki müşterileri şehirlerine göre gruplar ve her bir şehirde kaç müşteri olduğunu sayar:
 SELECT City, COUNT(*) AS CustomerCount
 FROM Customers
 GROUP BY City;
 --Bu sorgu, "Customers" tablosundaki verileri "City" (şehir) sütununa göre gruplar ve her bir grup için o şehirde kaç müşteri olduğunu sayar. Sonuçlar, şehir başına bir satırda görünecektir.


 -- Group By Örnek-2
 --Tablodaki verileri belirli bir sütuna göre gruplamak ve bu gruplar üzerinde toplu işlemler yapmak için GROUP BY ifadesi kullanılır.
 --Örneğin, bir "Orders" (Siparişler) tablosundaki siparişleri müşteri numaralarına göre gruplamak ve her müşterinin kaç siparişi olduğunu bulmak isteyebilirsiniz.
 --Aşağıdaki örnek, "Orders" tablosundaki siparişleri müşteri numaralarına göre gruplar ve her bir müşterinin kaç siparişi olduğunu sayar:
 SELECT CustomerID, COUNT(*) AS OrderCount
 FROM Orders
 GROUP BY CustomerID;
 --Bu sorgu, "Orders" tablosundaki verileri "CustomerID" (Müşteri Numarası) sütununa göre gruplar ve her bir müşteri için kaç tane sipariş olduğunu sayar. Sonuçlar, müşteri numarası başına bir satırda görünecektir.


 -- Group By Örnek-3
 -- Örneğin, bir "employees" (çalışanlar) tablosunda çalışanların bölümlere göre maaş ortalamalarını bulmak istediğinizi varsayalım:
 SELECT department, AVG(salary) AS avg_salary
 FROM employees
 GROUP BY department;
 --Bu sorgu, "employees" tablosundaki verileri "department" sütununa göre gruplar ve her bir bölüm için ortalama maaşı hesaplar. Sonuçlar, bölüm başına bir satırda görünecektir.

-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- ***HAVING (Filtreleme)***
-- HAVING (Filtreleme) (Sum, Avg, Count, Min, Max):
-- SORU-1: Her bir kategorideki ürün sayılarını bulunuz ?
SELECT * FROM nortwind.dbo.Products;
SELECT * FROM nortwind.dbo.Categories;

SELECT cat.CategoryName, COUNT(pro.ProductID) AS 'Ürün Sayısı'
FROM Products as pro
JOIN Categories as cat ON pro.CategoryID= cat.CategoryID
GROUP BY cat.CategoryName;

-- SORU-1: Her bir kategorideki ürün sayılarını bulunuz ? Yalnızca ama yalnız 10'dan fazla ürünleri bulan SQL Sorgusunu yazınız 
SELECT cat.CategoryName, COUNT(pro.ProductID) AS 'Ürün Sayısı'
FROM Products as pro
JOIN Categories as cat ON pro.CategoryID= cat.CategoryID
GROUP BY cat.CategoryName
HAVING COUNT(pro.ProductID)>10;


-- SORU-2: Her bir müşterinin toplam siparişini bulunuz ve Bu siparişlerden 5000'den fazla olan siparişleri gösteriniz ?
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM [Order Details] ;

SELECT ord.CustomerID, SUM(ordetail.UnitPrice*ordetail.Quantity) AS 'Toplam Tutar'
FROM Orders as ord
JOIN [Order Details] as ordetail ON ord.OrderID= ordetail.OrderID
GROUP BY ord.CustomerID
HAVING SUM(ordetail.UnitPrice*ordetail.Quantity)>5000;

------------------------------------------------------------------------------------------------------------------------
-- HAVING ( Group By ile oluşturduğumuz  Belli Kolon Üzerindeki Filtrelemedir)
-- Having Örnek-1
-- Örnek olarak, bir müşteri siparişleri tablosunda, her müşterinin toplam sipariş miktarını bulalım ve sadece toplam sipariş miktarı 1000'den büyük olan müşterileri listeleyelim:
SELECT customer_id, SUM(order_amount) AS total_order_amount
FROM orders
GROUP BY customer_id
HAVING SUM(order_amount) > 1000;
-- Bu sorgu, siparişler tablosundaki her müşterinin toplam sipariş miktarını hesaplar, ardından bu miktarı 1000'den büyük olan müşterileri listeler.


-- Having Örnek-2
-- Örnek olarak, bir işletmenin çalışanlarının departmanlarına göre ortalama maaşlarını hesaplayalım ve sadece ortalama maaşı belirli bir değerden yüksek olan departmanları listeleyelim:
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
-- Bu sorgu, employees tablosundaki verileri departmanlara göre gruplar, her bir grup için ortalama maaşı hesaplar, ardından ortalama maaşı 50000'den büyük olan grupları seçer ve sonuç olarak bu grupların departmanlarını ve ortalama maaşlarını gösterir.


-- GROP BY AND HAVING
select * from Products

SELECT pro.ProductName, AVG(pro.UnitPrice) AS price
FROM Products as pro
GROUP BY pro.ProductName
HAVING AVG(pro.UnitPrice) > 30;

--------------------------------------------------------------------------------------------------
-- UNION : aynı sutun sayısına sahip tabloları alt alta görmek istediğimizde kullanıyoruz.
-- UNIONALL (datatype, script, table, PK)
use ScriptDb;
if not exists (select * from sysobjects where name='notes' and xtype='U')
    CREATE TABLE student (
	StudentId INT PRIMARY KEY IDENTITY NOT NULL,
	studentName varchar(50) NOT NULL,
	studentSurname varchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	Phone_Number varchar(20) NOT NULL,
	studentVizeNotes int NOT NULL,
	studentFinalNotes int NOT NULL,
	Registration_Date date,
	created_at DATETIME NOT NULL  DEFAULT CURRENT_TIMESTAMP,
);
go

insert into
student(studentName,studentSurname,city,Phone_Number,studentVizeNotes,studentFinalNotes,Registration_Date)
values
('Adı-1','Soyadı-1','Bingöl','11122233',80,80,'2024-03-28');

insert into
teacher(studentName,studentSurname,city,Phone_Number,studentVizeNotes,studentFinalNotes,Registration_Date)
values
('Adı-22','Soyadı-22','Bingöl','11122233',80,80,'2024-03-28');

select * from student
union
select * from teacher

----------------------------------------------------------------------------------------------------------------------
-- Hayali Sutun
select *  from student;
select (stu.studentVizeNotes*0.4+stu.studentFinalNotes*0.6) as result from [ScriptDb].[dbo].[student] as stu;

-- ------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- ***STRING***
-- /*~~~~ STRING ~~~~*/
SELECT * FROM Categories;

-- LISTELEMEK
-- nortwind databasesinden Categories tablosundaki CategoryName'leri Listeyin ?
SELECT cat.CategoryName FROM Categories as cat;


-- LENGTH
-- nortwind databasesinden Categories tablosundaki CategoryName'lerin harf sayısını hesaplatan script yazınız ?
SELECT LEN(cat.CategoryName) as 'Harf Sayısı' FROM Categories as cat;


-- UPPER
-- nortwind databasesinden Categories tablosundaki CategoryName'leri BÜYÜK harflere çevirerek Listeyin ?
SELECT UPPER(cat.CategoryName) as 'BÜYÜK Harfler'  FROM Categories as cat;


-- LOWER
-- nortwind databasesinden Categories tablosundaki CategoryName'leri küçük harflere çevirerek Listeyin ?
SELECT LOWER(cat.CategoryName) as 'küçük Harfler'  FROM Categories as cat;

-- ltrim
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinde eğer soldan boşluklar varsa sil ve Listeyin (Validation)
SELECT ltrim(cat.CategoryName) as 'Soldaki Boşluklar Silindi'  FROM Categories as cat;


-- RTRIM
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinde eğer sağdan boşluklar varsa sil ve Listeyin (Validation)
SELECT RTRIM(cat.CategoryName) as 'Soldaki Boşluklar Silindi'  FROM Categories as cat;


-- SUBSTRING
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinde ilk 4 harfini gösterin ve Listeyin (Masking)
SELECT SUBSTRING(cat.CategoryName,0,5) as '1-4 arasındaki Harfler'  FROM Categories as cat; -- 0<=SUBSTRING <=5-1


-- İç içe Function kullanımı
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinde ilk 4 harfini gösterin ve BÜYÜK Harfe çevrilsin ve  Listeyin (Masking)
SELECT UPPER(SUBSTRING(cat.CategoryName,0,5))   as '1-4 arasındaki Harfler'  FROM Categories as cat; -- 0<=SUBSTRING <=5-1


-- REPLACE
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinden `Produce` kelimelerini `Ürün` ile değiştirin ve Listeyin (Masking)
SELECT * FROM Categories;

-- 1.YOL (DQL)
SELECT REPLACE(cat.CategoryName,'Produce','Ürün') as 'Değiştir'  FROM Categories as cat;

-- 2.YOL (DML)
update Categories SET CategoryName=REPLACE(cat.CategoryName,'Produce','Ürün') from Categories as cat;

-- 3.YOL (DML)
update [nortwind].[dbo].[Categories]  SET CategoryName=replace(cat.CategoryName,'Produce','Ürün') from Categories as cat

-- SORU
-- Nortwind databasesinden Categories tablosundaki CategoryID en küçük olan veri için bütün 'e' harfi yerine 'x' yazalım.
-- keyword: subquery,update,replace(),min()
select * from Categories
update [nortwind].[dbo].[Categories] SET CategoryName=replace(cat.CategoryName,'e','x') from Categories as cat where cat.CategoryID=(select min(CategoryID) from Categories)

-- SORU
-- Nortwind databasesinden Categories tablosundaki CategoryID 4 ile 5 arasındaki CategoryName bütün 'a' harfi yerine 'x' yazalım.
-- keyword: subquery,update,replace(),between()
select * from Categories
update [nortwind].[dbo].[Categories] SET CategoryName=replace(cat.CategoryName,'a','x') from Categories as cat where cat.CategoryID between 4 and 5;


-- CONCAT
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinden sonuna `INC` ekleyin ve Listeyin (Masking)
SELECT CONCAT(cat.CategoryName,'.INC')   FROM Categories as cat;


-- REVERSE
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinden Test yazdır ve Listeyin (Masking)
SELECT REVERSE(cat.CategoryName) as 'Ters'   FROM Categories as cat;


-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- ***DATE***
/*
year-month-day
Data Type:DATE,
Format   :YYYY-MM-DD(ISO 8601)
Değer    :0001-01-01 <= DATE <=9999-12-31
Alan(Boyut): 3 byte (3*8)
*/

-- SORU-4) nortwind veritabanından `Employees` tablosundaki verilerden sadece FirstName, LastName, BirthDate listeleyiniz ?
SELECT FirstName, LastName, BirthDate FROM Employees;

-- SORU-4) nortwind veritabanından `Employees` tablosundaki verilerden sadece FirstName, LastName, BirthDate listeleyiniz ve BirthDate sadece DATE gösteriniz ?
SELECT emp.FirstName, emp.LastName, emp.BirthDate,CONVERT(DATE,emp.BirthDate) AS 'OnlyDate'  FROM Employees AS emp;
-- 1948-12-08  00  :00    :00    .000
-- YIL  AY GÜN SAAT:DAKIKA:SANIYE.MILISANIYE

SELECT FirstName, LastName, BirthDate FROM Employees ;

-- SORU-4) nortwind veritabanından `Employees` tablosundaki verilerden BirthDate küçükten büyüğe doğru listeleyiniz ?
SELECT FirstName, LastName, BirthDate FROM Employees as emp ORDER BY emp.BirthDate ASC;

-- SORU-5) nortwind veritabanından `Employees` tablosundaki verilerden kaç tane olduğunu sayan sql scripti yazınız ? 
SELECT COUNT(*) AS 'Employees Count' FROM Employees as emp;

-- SORU-6) nortwind veritabanından `Employees` tablosundaki verilerden BirthDate küçükten büyüğe doğru listeleyiniz ve '1952-02-19' eşleşen sql scripti yazınız ?
SELECT emp.EmployeeID, FirstName, LastName, BirthDate 
FROM Employees as emp 
WHERE emp.BirthDate ='1952-02-19'
ORDER BY emp.BirthDate ASC;

-- GETDATE()
SELECT GETDATE() as 'Şu anda ki Tarih'

-- DATEADD()
-- dateadd() = Zamanı yıl, ay için ileri tarihe göre alsın.
select dateadd(day,1,getdate()) as 'Şu andaki zamanın ayı için 1 gün ileri'
select dateadd(month,2,getdate()) as 'Şu andaki zamanın ayı için 2 ay ileri'
select dateadd(year,3,getdate())  as 'Şu andaki zamanın yılı için 3 yıl ileri'

-- DATEDIFF()
-- datediff() = belirtilen 2 zaman için ara farkını bize gösterir.
select datediff (day, '01.01.1990',getdate()) AS 'Gün Farkı';
select datediff(month,'01.01.1990',getdate()) AS 'Gün Farkı';
select datediff (year,'01.01.1990',getdate()) AS 'Yıl Farkı';

-- DATEPART()
-- datepart() = o zaman diliminin  hangi  hafta ,ay,yıl, olduğunu gösterir
SELECT GETDATE() as 'Şu anda ki Tarih';
SELECT CAST(GETDATE() as DATE) AS 'CurrentDate';
SELECT CAST(GETDATE() as TIME) AS 'CurrentTime';
SELECT CAST(GETDATE() as DATETIME) AS 'CurrentDateTime';

select datepart (year,getdate()) 'YEAR';
select datepart (month,getdate()) as 'Yılın kaçıncı Ay';
select datepart(day,getdate()) as 'Gün';
select datepart (hour,getdate()) as 'Saat';
select datepart (MINUTE,getdate()) as 'Dakika';
select datepart (SECOND,getdate()) as 'Saniye';
select datepart (MILLISECOND,getdate()) as 'Milisaniye';

select datepart (WEEK,getdate()) as 'Yılın kaçıncı Haftası';


SELECT * FROM Orders;
-- SORU-6) nortwind veritabanından `Orders` tablosundaki verilerden OrderDate küçükten büyüğe doğru listeleyiniz ?
SELECT * FROM  nortwind.dbo.Orders as ord
ORDER BY ord.OrderDate;

-- SORU-6) nortwind veritabanından `Orders` tablosundaki verilerden OrderDate küçükten büyüğe doğru listeyip, sadece OrderID, OrderDate olsun ve YIL-AY-GÜN olarak ayrı ayrı listeleyiniz  ?
SELECT ord.OrderID, ord.OrderDate,
	DATENAME(YEAR, ord.OrderDate) AS 'Sipariş Yılı',
	DATENAME(month, ord.OrderDate) AS 'Sipariş Ayı',
	DATENAME(DAY, ord.OrderDate) AS 'Sipariş Günü'
FROM  nortwind.dbo.Orders as ord
ORDER BY ord.OrderDate;

-- SORU-6) nortwind veritabanından `Orders` tablosundaki verilerden OrderDate küçükten büyüğe doğru listeyip, sadece OrderID, OrderDate olsun ve OrderDate sadece '1997' olan yılın siparileri listeleyiniz  ?
SELECT ord.OrderID, ord.OrderDate
FROM Orders as ord
WHERE DATEPART(YEAR,ord.OrderDate)  =1997;


-- SORU-6) nortwind veritabanından `Orders` tablosundaki verilerden OrderDate küçükten büyüğe doğru listeyip, sadece OrderID, OrderDate olsun ve OrderDate sadece '1997' olan yılın sipariler sayısı kaçtır  ?
SELECT count(*) AS '1997 Yılına ait sipariş sayısı'
FROM Orders as ord
WHERE DATEPART(YEAR,ord.OrderDate)=1997;


-- SORU-6) nortwind veritabanından `Orders` tablosundaki verilerden OrderDate küçükten büyüğe doğru listeyip, sadece OrderID, OrderDate olsun ve OrderDate  '1996' ile '1997'  yıllarınki sipariler listesi kaçtır  ?
SELECT ord.OrderID, ord.OrderDate
FROM  nortwind.dbo.Orders as ord
WHERE ord.OrderDate BETWEEN '1996-01-01' AND '1997-12-31'; --1997-12-31  12: son ayın 31: Son günü



-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- DML (Data Manipulation Language)
-- Kolonlar üzerinde insert, delete, update
USE nortwind;


-- INSERT
INSERT INTO nortwind.dbo.Categories(CategoryName,Description,Picture) VALUES ('C#','hight level language',NULL);
SELECT * FROM nortwind.dbo.Categories;


-- UPDATE
UPDATE nortwind.dbo.Categories SET CategoryName='Python', Description='Numpy' WHERE CategoryID=1009;
SELECT * FROM nortwind.dbo.Categories;


-- SORU-2) nortwind veritabanından `Categories` tablosundaki 'categoryID'de 12 ve büyük olan verileri gösteriniz ?
SELECT * 
FROM nortwind.dbo.Categories as cat
WHERE cat.CategoryID>12;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki 'categoryID'de 12 ve büyük olan verilerden 
-- `Picture` koloundaki NULL değerleri yerine `0x151C2F00020000000D000E0014002100FFFFFFFF` ile güncelleyiniz ?
USE nortwind;

-- 1.YOL
UPDATE Categories
SET Picture =0x151C2F00020000000D000E0014002100FFFFFFFF
WHERE CategoryID>=12 AND Picture IS NULL;

-- SORU-2) nortwind veritabanından `Categories` tablosundaki 'categoryID'de 11 ve büyük olan verilerden 
-- `Picture` koloundaki NULL değerleri yerine `0x151C2F00020000000D000E0014002100FFFFFFFF` ile güncelleyiniz ?
-- 2.YOL
--UPDATE Categories SET Picture=REPLACE(cat.Picture, 'NULL','0x151C2F00020000000D000E0014002100FFFFFFFF')  FROM Categories as cat;

UPDATE cat 
SET Picture=0x151C2F00020000000D000E0014002100FFFFFFFF  
FROM Categories as cat
WHERE cat.CategoryID IN (
	SELECT CategoryID FROM Categories
	WHERE CategoryID>=11 AND Picture IS NULL
);


-- DELETE
DELETE FROM nortwind.dbo.Categories WHERE CategoryID=1009;
SELECT * FROM nortwind.dbo.Categories;



-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- DDL (Data Definition Language)
-- Tablo veya Veritabanı eklemek, güncelleme, silme

-- SENARYO: Bir Okul veritabanı oluşturucak
-- TABLOLAR
-- Students    (Öğrenci Bilgileri)
-- Deparmaents (Bölüm Bilgileri)
-- Relation (Deparments(1) - Students(N))

-- AMAÇ:
/*
> Veritabanı  oluşturmak,Silmek, Güncelleme
> Tablolar oluşturmak,Silmek, Güncelleme
> Primary Key ve Foreign Key oluşturmak
> Veri ekleme, Silmek , Güncellemek, Sorgulama (C-R-U-D)
*/


-- CREATE DATABASE (Database Ekleme)
CREATE DATABASE SchoolDB;
GO

-- RENAME DATABASE (Database İsmini Değiştirmek)
--EXEC sp_renamedb 'SchoolDB','SchoolDB';

-- Veritabanına Geçiş
USE SchoolDB;
GO

-- Veritabanı Sil
-- DROP DATABASE SchoolDB;

-- Relation (Deparments(1) - Students(N))
-- NOT: Tekilde başlayabilirsiniz
-- Deparments(1)
IF NOT EXISTS (
	SELECT * FROM sys.tables WHERE name='Departments' AND type ='U'
)
BEGIN
	CREATE TABLE Departments(
		DepartmentID INT PRIMARY KEY IDENTITY(1,1),  --PK ve AI(Otomatik artmak)
		DepartmentName NVARCHAR(100) NOT NULL,
		CreatedDate DATETIME DEFAULT GETDATE()         -- Oluşturma tarihi
	);
END;

-- Tablo Sil
-- DROP TABLE Departments

-- Relation (Deparments(1) - Students(N))
-- NOT: Tekilde başlayabilirsiniz
-- Deparments(1)
-- sys.tables: MSSQL Sisteme görünümü yani tabloları lsiteler
-- type ='U' : User-defined olarak yani ben bu tabloyu oluşturuyorum
IF NOT EXISTS (
	SELECT * FROM sys.tables WHERE name='Students' AND type ='U'
)
BEGIN
	CREATE TABLE Students(
		StudentID INT PRIMARY KEY  IDENTITY(1,1),    --PK ve AI(Otomatik artmak)
		Firstname NVARCHAR(100) NOT NULL,
		LastName NVARCHAR(255) NOT NULL,
		Age INT CHECK (Age>=18 AND Age<=55),          --Öğrenci yaş sınırı en 18 en fazla 55 
		Email NVARCHAR(255) UNIQUE,                   -- Benzersiz E-posta
		Phone NVARCHAR(20),
		BirthDate DATE,
		RegisterDate DATETIME DEFAULT GETDATE(),
		DepartmentID INT,             --FK
		FOREIGN KEY (DepartmentID) 
			REFERENCES Departments(DepartmentID)
			ON DELETE SET NULL           -- Departman Silinirse null olsun
			ON UPDATE CASCADE            --  Güncelleme olursa otomatik gerçekleşsin
	);
END;

-- DML (Data Manipulation Language)
-- Kolonlar üzerinde insert, delete, update
USE SchoolDB;

-- INSERT
-- Dikkat !!! İlişkisel Database(Relation Database) Ekleme işlemlerinden Öncelikle Tekil ile başlanır 
INSERT INTO SchoolDB.dbo.Departments(DepartmentName) VALUES('Computer Engineering'),('Physics'),('Mathematics');

INSERT INTO SchoolDB.dbo.Students
(Firstname,LastName,Age,Email,Phone,BirthDate,DepartmentID) 
VALUES
('Hamit1','Mızrak-1','30','hamitmizrak@gmail.com','1112223344','2010-04-12',1),
('Hamit1','Mızrak2','25','hamitmizrak2@gmail.com','1112223344','2015-05-09',1)

-- DQL
SELECT * FROM SchoolDB.dbo.Departments;
SELECT * FROM SchoolDB.dbo.Students;


-- UPDATE
UPDATE SchoolDB.dbo.Departments SET DepartmentName='Mathematics44' WHERE DepartmentID=(SELECT MAX(de.DepartmentID) FROM Departments as de);
SELECT * FROM SchoolDB.dbo.Departments;

-- DELETE
DELETE FROM SchoolDB.dbo.Departments WHERE DepartmentID=1;
SELECT * FROM SchoolDB.dbo.Departments ;
SELECT * FROM SchoolDB.dbo.Students;


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
-- DCL


-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- TCL
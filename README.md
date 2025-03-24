# Techcareer Mssql 
[GitHub](https://github.com/hamitmizrak/Bootcamp_2_Mssql)
---

## Mssql Server Install
```sh
Step-1 => [Mssql Server Download](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
Step2 => Developer Download
Step3 => Developer Chooise > Basic
Step4 => Next => Next 
```
---

## Mssql SSMS (SQL Server Management Studio)
```sh
Step-1 => [Mssql Server Download](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
Step2 => Next => Next
```
---


## Whoami
```sh
Terminal => whoami => 

$ whoami (Server name için)
Hamit-Mizrak
```
---

## Mssql SSMS Server Name
```sh
Server name: .
Server name: localhost
Server name: local

```
---


## Mssql Kurulumu
```sh 
> Step-1: https://www.microsoft.com/en-us/sql-server/sql-server-downloads
> Step-2: https://learn.microsoft.com/en-us/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16
```
--- 

## Mssql Kurulum Esnasında Hata alırsanız.
```sh 
Power Shelling(Yönetici) veya CMD(Yönetici) Modda açarak devam ediniz 
> Step-1 Firewall kapat

> Step-2 1433 ve 1434 portunu ekle (Yönetici Mod Powershell)
netsh advfirewall firewall add rule name="SQL Server TCP" dir=in action=allow protocol=TCP localport=1433
netsh advfirewall firewall add rule name="SQL Server UDP" dir=in action=allow protocol=UDP localport=1434

> Step-3 Eğer SQL Server 2022 kaullanıyorsanız mutlaka şunları siliniz
Microsoft SQL Server 2022 (veya kurulu olan sürüm)
Microsoft SQL Server Management Studio (SSMS)
Microsoft SQL Server Native Client
Microsoft SQL Server ODBC Drive
Microsoft SQL Server Setup Support Files
Microsoft SQL Server Command Line Utilities
Microsoft Visual C++ (?) Redistributable SQL Server iel ilgili olanları Silerbilirsiniz 
Microsoft Visual C++ 2015-2022 Redistributable (x64)
Microsoft Visual C++ 2015-2022 Redistributable (x86) 

Kurulum içinde 
1- https://www.microsoft.com/en-us/sql-server/sql-server-downloads
Developer > Basic 

2- SSMS (SQL Server Management Studio)
https://learn.microsoft.com/en-us/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16

SSMS UI aç ve Server name olarak  > Server name > Browser more > Database Engine seç
whoami

```
--- 


## Veritabanı ve  Sık Kullanılan Terimler
```sh 
```
# **Veritabanı (Database) Nedir? Detaylı Açıklama ve Sık Kullanılan Terimler**

---

## **📌 Veritabanı Nedir?**
Veritabanı (Database), **bilgilerin sistematik olarak saklandığı ve gerektiğinde erişilebildiği bir dijital depolama sistemidir**.  
Veritabanları, **büyük miktarda veriyi organize etmek, yönetmek ve sorgulamak** için tasarlanmıştır.

Veritabanları genellikle **ilişkisel (RDBMS) ve NoSQL (Not Only SQL) olmak üzere iki ana kategoriye ayrılır**.  
**İlişkisel veritabanları** (MSSQL, MySQL, PostgreSQL, Oracle, SQLite vb.) **tablolar kullanarak verileri saklar**.  
**NoSQL veritabanları** (MongoDB, Cassandra, Redis vb.) ise **verileri esnek yapılar (JSON, key-value, doküman, grafik vb.) şeklinde saklar**.

Veritabanları, **bankacılık, sağlık, eğitim, e-ticaret, sosyal medya, lojistik ve yapay zeka** gibi birçok alanda kullanılır.

---

## **📌 Veritabanı Türleri**
Veritabanları **farklı mimari ve kullanım senaryolarına göre** çeşitli türlere ayrılır:

### **1️⃣ İlişkisel Veritabanları (RDBMS - Relational Database Management System)**
- **Verileri tablolar (rows & columns) halinde saklar**.
- **SQL (Structured Query Language) kullanılarak yönetilir**.
- **Anahtarlar (Primary Key, Foreign Key) ve ilişkiler kullanılır**.
- **ACID (Atomicity, Consistency, Isolation, Durability) ilkelerine bağlıdır**.
- **Örnekler:** Microsoft SQL Server (MSSQL), MySQL, PostgreSQL, Oracle, IBM Db2.

### **2️⃣ NoSQL (Not Only SQL) Veritabanları**
- **Verileri esnek formatlarda (JSON, Key-Value, Column-Family, Graph) saklar**.
- **Genellikle büyük ölçekli veri işleme (Big Data) için uygundur**.
- **Yüksek esneklik ve ölçeklenebilirlik sunar**.
- **Örnekler:** MongoDB (Doküman tabanlı), Redis (Key-Value), Cassandra (Column-Family), Neo4j (Graf tabanlı).

### **3️⃣ Dağıtık (Distributed) Veritabanları**
- **Veriler birden fazla fiziksel veya sanal sunucuya dağıtılır**.
- **Genellikle büyük veri sistemlerinde kullanılır**.
- **Örnekler:** Apache Hadoop, Google Bigtable, Amazon DynamoDB.

### **4️⃣ Bellek İçi (In-Memory) Veritabanları**
- **Veriler RAM’de saklanarak ultra hızlı erişim sağlanır**.
- **Genellikle önbellekleme (Caching) ve gerçek zamanlı analizler için kullanılır**.
- **Örnekler:** Redis, Memcached.

### **5️⃣ Veri Ambarları (Data Warehouses)**
- **Tarihsel ve büyük ölçekli verileri analiz etmek için kullanılır**.
- **Örnekler:** Amazon Redshift, Google BigQuery, Snowflake.

---

## **📌 Veritabanı ile İlgili Sık Kullanılan Terimler**
Bir veritabanı sistemini anlamak için **bazı temel kavramları bilmek gerekir**.

### **🔹 1. Veri (Data)**
- **Veritabanında saklanan en küçük bilgi birimidir**.
- Örneğin:
  ```
  "Hamit Mızrak", "hamitmizrak@gmail.com", "0543 111 1111"
  ```
  Yukarıdaki her bir bilgi **bir veri öğesidir**.

### **🔹 2. Veri Kümesi (Dataset)**
- **Benzer türdeki verilerin oluşturduğu gruptur**.
- Örneğin: **Bir müşteri listesi**, bir dataset olabilir.

### **🔹 3. Tablo (Table)**
- **Verilerin saklandığı temel yapıdır**.
- **Satır (Row) ve Sütun (Column) şeklinde düzenlenmiştir**.
- **Örnek Tablo:**

  | CustomerID | FirstName | LastName | Email |
    |-----------|----------|----------|--------------------|
  | 1         | Hamit    | Mızrak   | Hamit@example.com |
  | 2         | Ayşe     | Demir    | ayse@example.com  |

### **🔹 4. Satır (Row) / Kayıt (Record)**
- **Tablodaki her bir veri girişi bir satırdır**.
- **Her satır, benzersiz bir veri kaydını ifade eder**.

### **🔹 5. Sütun (Column) / Alan (Field)**
- **Tablodaki her bir veri tipini temsil eder**.
- **Örneğin "FirstName" sütunu, tüm müşteri isimlerini saklar.**

### **🔹 6. Birincil Anahtar (Primary Key - PK)**
- **Her satırı benzersiz şekilde tanımlayan sütundur**.
- **Örneğin: CustomerID birincil anahtar olabilir.**
- **Bir tabloda yalnızca bir tane Primary Key olabilir**.

  ```sql
  CREATE TABLE Customers (
      CustomerID INT PRIMARY KEY,
      FirstName VARCHAR(50),
      LastName VARCHAR(50)
  );
  ```

### **🔹 7. Yabancı Anahtar (Foreign Key - FK)**
- **Farklı tabloları birbirine bağlayan anahtar sütundur**.
- **Birincil anahtarın başka bir tabloda referans olarak kullanılmasıdır**.

  ```sql
  CREATE TABLE Orders (
      OrderID INT PRIMARY KEY,
      CustomerID INT,
      OrderDate DATE,
      FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
  );
  ```

### **🔹 8. İndeks (Index)**
- **Arama işlemlerini hızlandırmak için kullanılır**.
- **Tabloya eklenen indeks, veriye daha hızlı erişim sağlar**.

  ```sql
  CREATE INDEX idx_customer_email ON Customers (Email);
  ```

### **🔹 9. ACID Kuralları**
Veritabanı sistemlerinde veri bütünlüğünü sağlamak için **ACID prensipleri uygulanır**.

- **A (Atomicity - Atomiklik):** İşlemler ya tamamen gerçekleşir ya da hiç gerçekleşmez.
- **C (Consistency - Tutarlılık):** Veritabanı, işlem öncesinde ve sonrasında tutarlı kalır.
- **I (Isolation - İzolasyon):** Aynı anda çalışan işlemler birbirinden bağımsızdır.
- **D (Durability - Kalıcılık):** İşlem tamamlandıktan sonra veriler kaybolmaz.

### **🔹 10. Normalizasyon**
- **Veri tekrarını azaltmak ve veritabanını optimize etmek için tabloların bölünerek düzenlenmesi işlemidir**.
- **1NF, 2NF, 3NF gibi seviyeleri vardır**.

### **🔹 11. SQL (Structured Query Language)**
- **Veritabanını yönetmek için kullanılan sorgu dilidir**.
- **Örnek SQL Sorguları:**

  ```sql
  SELECT * FROM Customers WHERE FirstName = 'Hamit';
  ```

### **🔹 12. CRUD İşlemleri**
Veritabanlarında **en sık kullanılan işlemler CRUD olarak bilinir**:

| İşlem | SQL Komutu | Açıklama |
|--------|-----------|----------|
| **C** (Create) | `INSERT INTO` | Veri ekleme |
| **R** (Read) | `SELECT` | Veri okuma |
| **U** (Update) | `UPDATE` | Veri güncelleme |
| **D** (Delete) | `DELETE` | Veri silme |

---

## **📌 Sonuç**
✔ **Veritabanı, bilgilerin organize şekilde saklanmasını sağlayan sistemdir.**  
✔ **MSSQL, MySQL, PostgreSQL gibi farklı veritabanı sistemleri bulunmaktadır.**  
✔ **Tablo, satır, sütun, birincil anahtar, yabancı anahtar gibi kavramlar veritabanlarının temelini oluşturur.**  
✔ **ACID prensipleri ve normalizasyon kuralları veri bütünlüğünü korumak için kullanılır.**

🚀 **Veritabanı yönetimi, modern bilgi teknolojileri dünyasında en kritik alanlardan biridir!** 😊



## SQL NEDİR ?
```sh 
```
# **SQL (Structured Query Language) Nedir? Detaylı Açıklama**

## **📌 Giriş: SQL Nedir?**
SQL (**Structured Query Language** – Yapılandırılmış Sorgu Dili), **ilişkisel veritabanlarını yönetmek ve sorgulamak için kullanılan standart bir programlama dilidir**. SQL, verileri **oluşturma, değiştirme, silme ve sorgulama işlemlerini** gerçekleştirmek için kullanılır.

SQL dili, **IBM tarafından 1970'lerin başında geliştirilmiş** ve daha sonra **ISO (International Organization for Standardization) ve ANSI (American National Standards Institute)** tarafından **standartlaştırılmıştır**. Günümüzde **MySQL, PostgreSQL, Microsoft SQL Server (MSSQL), Oracle, SQLite, MariaDB gibi birçok veritabanı yönetim sisteminde (DBMS) SQL kullanılmaktadır**.

---

## **📌 SQL'in Tarihçesi**
SQL'in kökeni **1970'li yıllara** dayanmaktadır. IBM’de çalışan **E. F. Codd**, ilişkisel veritabanı modelini geliştirdi ve bu modelde verilerin **tablolar halinde saklanması** gerektiğini önerdi. Bu model, günümüz modern veritabanlarının temelini oluşturdu.

### **🔹 1970'ler: İlk SQL Konsepti**
- 1970 yılında **Edgar F. Codd**, **"A Relational Model of Data for Large Shared Data Banks"** adlı makalesini yayımladı. Bu makalede **ilişkisel veritabanı modeli (Relational Database Model - RDBMS)** tanıtıldı.
- IBM, bu fikri kullanarak **System R** adlı bir ilişkisel veritabanı geliştirdi ve burada **"SEQUEL" (Structured English Query Language)** adı verilen bir sorgu dili kullandı. Ancak bu isim, başka bir şirket tarafından tescillendiği için kısaltılarak **SQL** olarak değiştirildi.

### **🔹 1980'ler: Standartlaşma ve Yaygınlaşma**
- 1986: **ANSI SQL (SQL-86) Standartı** oluşturuldu.
- 1987: **ISO SQL Standartı** kabul edildi.
- 1989: **SQL-89** adı verilen güncellenmiş sürüm yayımlandı.
- 1989: **Microsoft SQL Server, Sybase ve Ashton-Tate işbirliğiyle piyasaya sürüldü.**

### **🔹 1990'lar: SQL'in Gelişimi**
- **SQL-92 standardı** yayımlandı. Bu sürümle birlikte **JOIN, UNION ve CASE ifadeleri** tanıtıldı.
- MySQL, PostgreSQL ve Microsoft SQL Server gibi veritabanı yönetim sistemleri hızla yaygınlaşmaya başladı.

### **🔹 2000'ler: Modern SQL Dönemi**
- **SQL:1999** ile **nested queries (iç içe geçmiş sorgular), XML desteği** gibi yeni özellikler eklendi.
- **SQL:2003** sürümüyle birlikte **window functions (pencere fonksiyonları), auto-increment, XML tipi ve sequence nesneleri** tanıtıldı.
- **SQL:2011** ve sonrası sürümlerle **JSON veri tipi, NoSQL entegrasyonu, Big Data destekleri** geldi.

---

## **📌 SQL'in Temel Kullanım Alanları**
SQL, veritabanı işlemlerini yönetmek için kullanılan **evrensel bir dil** olup aşağıdaki işlemleri gerçekleştirmek için kullanılır:

1. **Veri Tanımlama (DDL - Data Definition Language)**
    - **Tablo, şema, indeks oluşturma ve değiştirme işlemleri** için kullanılır.
    - **Örnek komutlar:** `CREATE`, `ALTER`, `DROP`, `TRUNCATE`

2. **Veri Manipülasyonu (DML - Data Manipulation Language)**
    - **Verilere ekleme, güncelleme ve silme işlemleri** yapmak için kullanılır.
    - **Örnek komutlar:** `INSERT`, `UPDATE`, `DELETE`

3. **Veri Sorgulama (DQL - Data Query Language)**
    - **Verileri okumak ve filtrelemek için kullanılır.**
    - **Örnek komutlar:** `SELECT`

4. **Veri Kontrolü (DCL - Data Control Language)**
    - **Veritabanı kullanıcı izinlerini yönetir.**
    - **Örnek komutlar:** `GRANT`, `REVOKE`

5. **Veri İşleme (TCL - Transaction Control Language)**
    - **Veritabanı işlemlerini yönetir (Commit, Rollback).**
    - **Örnek komutlar:** `COMMIT`, `ROLLBACK`, `SAVEPOINT`

---

## **📌 SQL Komutları ve Kullanımı**
Aşağıda SQL’in **en sık kullanılan komutları** açıklanmıştır.

### **1️⃣ Veri Tanımlama (DDL - Data Definition Language)**
DDL, **veritabanı nesnelerini (tablolar, şemalar, indeksler) oluşturmak ve yönetmek için kullanılır**.

#### **📌 `CREATE TABLE` - Yeni Bir Tablo Oluşturma**
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);
```

#### **📌 `ALTER TABLE` - Tabloyu Güncelleme**
```sql
ALTER TABLE Customers ADD PhoneNumber VARCHAR(15);
```

#### **📌 `DROP TABLE` - Tabloyu Silme**
```sql
DROP TABLE Customers;
```

---

### **2️⃣ Veri Manipülasyonu (DML - Data Manipulation Language)**
DML, **veri ekleme, güncelleme ve silme işlemleri için kullanılır**.

#### **📌 `INSERT INTO` - Veri Ekleme**
```sql
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES (1, 'Hamit', 'Mızrak', 'Hamit@example.com');
```

#### **📌 `UPDATE` - Veri Güncelleme**
```sql
UPDATE Customers
SET Email = 'yeniemail@example.com'
WHERE CustomerID = 1;
```

#### **📌 `DELETE` - Veri Silme**
```sql
DELETE FROM Customers WHERE CustomerID = 1;
```

---

### **3️⃣ Veri Sorgulama (DQL - Data Query Language)**
DQL, **verileri okumak ve filtrelemek için kullanılır**.

#### **📌 `SELECT` - Veri Okuma**
```sql
SELECT * FROM Customers;
```

#### **📌 `SELECT WHERE` - Koşula Göre Filtreleme**
```sql
SELECT * FROM Customers WHERE FirstName = 'Hamit';
```

#### **📌 `JOIN` - Tabloları Birleştirme**
```sql
SELECT Orders.OrderID, Customers.FirstName, Customers.LastName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
```

---

### **4️⃣ Veri Kontrolü (DCL - Data Control Language)**
DCL, **veritabanı kullanıcı izinlerini yönetmek için kullanılır**.

#### **📌 `GRANT` - Kullanıcıya Yetki Verme**
```sql
GRANT SELECT, INSERT ON Customers TO 'kullanici_adi';
```

#### **📌 `REVOKE` - Kullanıcıdan Yetki Alma**
```sql
REVOKE INSERT ON Customers FROM 'kullanici_adi';
```

---

### **5️⃣ İşlem Yönetimi (TCL - Transaction Control Language)**
TCL, **veritabanı işlemlerini yönetmek için kullanılır**.

#### **📌 `COMMIT` - Değişiklikleri Kalıcı Yapma**
```sql
BEGIN TRANSACTION;
UPDATE Customers SET Email = 'test@example.com' WHERE CustomerID = 1;
COMMIT;
```

#### **📌 `ROLLBACK` - Değişiklikleri Geri Alma**
```sql
BEGIN TRANSACTION;
UPDATE Customers SET Email = 'yanlis@example.com' WHERE CustomerID = 1;
ROLLBACK;
```

---

## **📌 Sonuç**
SQL, **verileri yönetmek, analiz etmek ve işlemek için kullanılan en yaygın ve güçlü dillerden biridir**.  
✔ **İlişkisel veritabanlarında standarttır.**  
✔ **Basit, anlaşılır ve güçlüdür.**  
✔ **Büyük veri, yapay zeka ve veri bilimi ile entegre çalışır.**

🚀 **SQL, modern veri yönetiminin temel taşlarından biridir ve her geliştiricinin öğrenmesi gereken önemli bir beceridir.**


## Mssql Nedir ?
```sh

```
---
# **Microsoft SQL Server (MSSQL) Nedir? – Detaylı Açıklama**

---

## **📌 Giriş: MSSQL Nedir?**
Microsoft SQL Server (MSSQL), **Microsoft tarafından geliştirilen, ilişkisel veritabanlarını (RDBMS) yönetmek için kullanılan bir veritabanı yönetim sistemidir (DBMS - Database Management System)**.  
MSSQL, **verileri depolamak, işlemek ve yönetmek** için kullanılır ve **T-SQL (Transact-SQL) dili** ile çalışır.

**MSSQL'in başlıca özellikleri şunlardır:**
✅ **Yüksek performans ve ölçeklenebilirlik**  
✅ **Büyük veri ve analitik desteği**  
✅ **Yüksek güvenlik ve veri koruma mekanizmaları**  
✅ **İleri seviye veri replikasyonu ve yedekleme sistemleri**  
✅ **Cloud (Bulut) ve Hibrit desteği**

MSSQL, **Windows, Linux ve Azure platformlarında çalışabilen** güçlü bir sistemdir. **Bankalar, e-ticaret siteleri, sağlık ve finans uygulamaları** gibi birçok sektörde kullanılmaktadır.

---

## **📌 Microsoft SQL Server’ın Tarihçesi**
Microsoft SQL Server, **1980'lerden günümüze kadar gelişimini sürdürerek** en güçlü veritabanı yönetim sistemlerinden biri haline gelmiştir.  
İlk sürüm, Microsoft ve Sybase iş birliğiyle geliştirilmiş ve Windows NT sistemlerinde çalışmak üzere tasarlanmıştır.

| **Yıl** | **Sürüm** | **Önemli Yenilikler** |
|---------|----------|---------------------|
| **1989** | **SQL Server 1.0** | IBM OS/2 için Microsoft-Sybase-Ashton-Tate ortaklığıyla geliştirildi. |
| **1992** | **SQL Server 4.2** | İlk kez Windows NT işletim sistemi için yayımlandı. |
| **1995** | **SQL Server 6.0** | Microsoft ve Sybase yollarını ayırdı, Microsoft tamamen bağımsız oldu. |
| **1998** | **SQL Server 7.0** | 32-bit mimariye geçildi, grafiksel yönetim arayüzü (SSMS) tanıtıldı. |
| **2000** | **SQL Server 2000** | XML desteği eklendi, SQL Server Agent güçlendirildi. |
| **2005** | **SQL Server 2005** | Veritabanı Aynalama (Database Mirroring) ve SSIS (Integration Services) geldi. |
| **2008** | **SQL Server 2008** | Yeni veri türleri (Spatial Data, FILESTREAM) eklendi. |
| **2012** | **SQL Server 2012** | AlwaysOn Availability Groups (Yüksek erişilebilirlik) tanıtıldı. |
| **2016** | **SQL Server 2016** | JSON desteği ve Stretch Database özelliği geldi. |
| **2017** | **SQL Server 2017** | İlk kez Linux desteği sağlandı. |
| **2019** | **SQL Server 2019** | Big Data Clusters, Apache Spark entegrasyonu eklendi. |
| **2022** | **SQL Server 2022** | Hibrit bulut desteği, yapay zeka entegrasyonu ve performans iyileştirmeleri yapıldı. |

---

## **📌 MSSQL'in Mimari Yapısı**
Microsoft SQL Server, **çok katmanlı (multi-tier) bir mimariye** sahiptir.  
Aşağıdaki bileşenlerden oluşur:

### **1️⃣ SQL Server Database Engine (Veritabanı Motoru)**
- **Verileri saklama, yönetme ve işleme** görevlerini gerçekleştirir.
- **Transaction (İşlem) ve Concurrency (Eşzamanlılık) yönetimi** sağlar.

### **2️⃣ SQL Server Management Studio (SSMS)**
- **SQL Server’ın yönetimi için kullanılan grafiksel bir arayüzdür.**
- **Tablolar, sorgular, indeksler ve güvenlik ayarlarını yönetmek için kullanılır.**

### **3️⃣ SQL Server Agent**
- **Otomatik yedekleme, bakım görevleri ve zamanlanmış görevleri (Job) yönetir.**

### **4️⃣ SQL Server Integration Services (SSIS)**
- **Farklı veri kaynakları arasında veri taşıma (ETL) işlemlerini gerçekleştirmek için kullanılır.**

### **5️⃣ SQL Server Analysis Services (SSAS)**
- **Veri madenciliği ve iş zekası (BI - Business Intelligence) işlemleri için kullanılır.**

### **6️⃣ SQL Server Reporting Services (SSRS)**
- **Özelleştirilmiş raporlar oluşturmayı sağlar.**

---

## **📌 MSSQL Kullanım Alanları**
MSSQL, birçok farklı alanda kullanılmaktadır:

✔ **Kurumsal Veri Yönetimi** – Büyük şirketler, tüm iş süreçlerini yönetmek için MSSQL kullanır.  
✔ **E-Ticaret Siteleri** – Sipariş yönetimi, kullanıcı bilgileri ve ürün verileri MSSQL’de saklanır.  
✔ **Bankacılık ve Finans** – Yüksek güvenlik gerektiren finansal işlemler MSSQL ile gerçekleştirilir.  
✔ **Sağlık Sektörü** – Hasta kayıtları ve ilaç takibi MSSQL ile yönetilir.  
✔ **Büyük Veri ve Analitik** – Apache Spark ve Machine Learning modelleriyle veri analizi yapılabilir.

---

## **📌 MSSQL'in Avantajları**
MSSQL, birçok avantaj sunar:

✅ **Kolay Kullanım:** SSMS ile yönetimi kolaydır.  
✅ **Güçlü Güvenlik:** Veri şifreleme, erişim kontrolü ve güvenlik duvarı desteği sunar.  
✅ **Performans ve Ölçeklenebilirlik:** Büyük veri kümelerini yönetebilir.  
✅ **Bulut ve Hibrit Çözümler:** Azure ile tam entegre çalışabilir.  
✅ **Çoklu Platform Desteği:** Windows ve Linux üzerinde çalışabilir.

---

## **📌 MSSQL Versiyonları**
Microsoft SQL Server, farklı ihtiyaçlara yönelik **çeşitli sürümlerle sunulmaktadır**:

| **Sürüm** | **Kullanım Alanı** | **Özellikler** |
|-----------|--------------------|----------------|
| **Enterprise** | Büyük ölçekli şirketler | Tüm özellikler, en yüksek performans |
| **Standard** | Orta ölçekli şirketler | İş zekası, yüksek erişilebilirlik |
| **Developer** | Geliştiriciler için | Enterprise özellikleri, ancak üretimde kullanılamaz |
| **Express** | Küçük projeler | Ücretsiz, düşük kapasite (10 GB veritabanı limiti) |

📌 **Öneri:** Geliştirme ve öğrenme amaçlı kullanıyorsanız, **SQL Server Developer Edition veya Express Edition** kullanabilirsiniz.

---

## **📌 MSSQL Kullanımı: Temel SQL Komutları**
### **1️⃣ Veritabanı Oluşturma**
```sql
CREATE DATABASE MyDatabase;
GO
```

### **2️⃣ Tablo Oluşturma**
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);
```

### **3️⃣ Veri Ekleme**
```sql
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES (1, 'Hamit', 'Mızrak', 'hamitmizrak@gmail.com');
```

### **4️⃣ Veri Okuma (SELECT)**
```sql
SELECT * FROM Customers;
```

### **5️⃣ Veri Güncelleme**
```sql
UPDATE Customers SET Email = 'yeni@example.com' WHERE CustomerID = 1;
```

### **6️⃣ Veri Silme**
```sql
DELETE FROM Customers WHERE CustomerID = 1;
```

---

## **📌 Sonuç**
Microsoft SQL Server (**MSSQL**) **kurumsal seviyede veri yönetimi sağlayan en güçlü RDBMS sistemlerinden biridir**.  
✔ **İlk sürümü 1989'da Sybase ile ortak geliştirildi.**  
✔ **Günümüzde Windows ve Linux üzerinde çalışabiliyor.**  
✔ **Büyük veri, yapay zeka, iş zekası ve bulut bilişim ile entegre çalışıyor.**  
✔ **Tüm dünyada milyonlarca kullanıcı tarafından tercih ediliyor.**

🚀 **Eğer büyük ölçekli bir veritabanı yönetmek istiyorsanız, MSSQL en güçlü seçeneklerden biridir!** 😊


## Veritabanı:
```sh
-- Single Commet
/*
multiple commet
*/

İlişkisel Veritabanı (RDBMS)
İlişkisel Olmayan veritabanı (NoSql)

İlişkisel Veritabanı (RDBMS): Mssql
Veritabanı: 
- Organize edilmiş ve yapılandırılmış veri koleksiyonlarına denir.
- Veriyi düzenli,erişebilirliğini sağlayan, veri tekrarını önleyecek şekilde hazırlanmalıdır. (1NF,2NF,BCND)

Veritabanı Bileşenleri 
- Veri
- Tablolar
- Satırlar(rows)
- Sutunlar(cols)
- İlişkiler
- Anahtar 
  - Birincil Anahtar(Primary Key): Her tabloda mutlaka PK vardır ve kayıt() için benzersiz(unique) olmalıdır.
  - Yabancı Anahtar(Foreign Key): Başka tabloda bulunan PK'dir.

Veritabanı Türleri
- Hiyerarşik Veritabanları (IBM Information Management System)
- Ağ Veritabanları

Veritabanı Genel Kuralları (common rules) 
- sutun adlarını hepsi küçük ve yeni kelimeler arasında alt çizgi(_) exam: category_name
- Sutun adlarını isim,sıfat olarak kullananın.

İlişkisel Veritabanları (RDBMS)
NOT: Aşağıdaki RDBMS'ler Veritabanlarını oluşturmak, yönetmek, manipüle etmek(Delete,Update,Create)
- Mysql
- Postgresql
- Mssql
- Oracle
- H2DB
- Oracle
- MariaDB

İlişkisel Olmayan Veritabanları
- MongoDB
- Cassandra
- Redis
- Neo4j

İlişkisel Veritabanları (RDBMS) Başlıca İşlevleri
- Veri tanımlama
- Veri manipulasyonu
- Veri Güvenliği
- Veri Yedekleme, Geri Yükleme
- Çoklu Kullanıcılı Erişim
```
---


## Veritabanı Avantajları
```sh
Veri tutarlılığını
Veri Paylaşımı
Veri Güvenliği
Veri Yedekleme, Geri Yükleme
Veri Entegrasyonu
```
---

## Mysql
```sh
Geliştirici: Oracle
Platform:  Windows, Linux, MacOs
Kullanım Alanı: Küçük ve Orta ölçeklidir.
Mysql  Özelliği:
	- Basit Kurulumu
	- Geniş eklenti desteği InnoDB, MyISAM
	- Yüksek hızda veri yazma okuma
	- Performansı iyidir.
```
---

## Postgresql
```sh
Geliştirici: PostgreSQL Global Development Group
Platform:  Windows, Linux, MacOs
Kullanım Alanı: Küçük,Orta,Büyük ölçeklidir.
Postgresql  Özelllikleri:
	- Ver türleri çok zengin
	- JSON, XML veri türlerini dahi destekler.
```
---


## Mssql (Microsoft SQL Server)
```sh
Geliştirici: Microsoft
Platform:  Windows, Linux
Kullanım Alanı: Küçük,Orta,Büyük ölçeklidir.
Düşük Latans vardır(Tüm işlemler tek bir suunucuda gerçekleşir bundan dolayı işlem süreleri daha düşüktür.)
Mssql (Microsoft SQL Server) Özellikleri
- Zengin yönetim araçları SSMS
- Güçlü veri bütünlüğünü sağlar.
- Veri yedekleme, kurtama eşsizdir.
- Yüksek Performansa sahiptir.
- Yatay ve Dikey Ölçeklendirmeği destekler.
- Veri Bütünlüğü mekanizması sağlamdır(ACID)
- Rol tabanlı erişim kontrol özelliği vardır.
- SSMS(SQL Server Management Studio) ile yönetim sağlarız.
- Bulut desteği mevcuttur.


SQL Server Microsoft ve Sybase tarafından ortalaşa geliştiriliyor. (1989)
Dezavantaj: 
    - Dağıtık Sistem karmaşıklığı
    - Öğrenme Eğrisi biraz diktir.
    - Sınırlı ölçeklendirme
```
---



## Mssql Syntax
```sh
~~~~~Mssql Syntax ~~~~~
SELECT *, Distinct(Tekrarsız Veriler), Top(istenilen sayıda Listeleme), Min,Max,Avg(Ortalama),Sum, Count
FROM `databaseAdi`.`tabloAdi`
JOIN (Birden fazla tabloda ortak vb yapıları listelemek)
WHERE (Şart, BIL) (Between, In, Like)
GROUP BY (Belli kolon için gruplama yapmak içindir)
HAVING (Filtreleme) (Sum, Avg, Count, Min, Max)
ORDER BY (Sıralama)
```
---



## SQL:
```sh
SQL (Structured Query Langualage)
SQL 1970 IBM ilişkisel veri modeli üzerine inşa ederek şimdiki zamanımıza kadar gelmiştir.
SEQUEL: Structured English QUery Language
- Veri tabanı yönetim sistemlerinden(Mssql, Mysql, Postgresql vb) bunlar SQL üzerine inşaa edilmiştir.
- SQL, ANSI(Amerikan National Standarts Instute) ve ISO(International Organization for Standardization) tarafından standart hale gelmiştir.
```
---



## SQL NEdir ? Devam
```sh

```
---
### **SQL Nedir? (Detaylı Açıklama)**

#### **1. SQL'in Tanımı**
SQL (Structured Query Language - Yapılandırılmış Sorgu Dili), ilişkisel veritabanlarını yönetmek, sorgulamak, veri eklemek, güncellemek ve silmek için kullanılan standart bir dildir. SQL, özellikle **ilişkisel veritabanı yönetim sistemleri (RDBMS - Relational Database Management Systems)** ile birlikte çalışmak üzere tasarlanmıştır ve verilerin işlenmesi için güçlü bir dizi komut içerir.

SQL, 1970'lerin başında IBM tarafından geliştirilmiş olup, daha sonra ANSI (American National Standards Institute) ve ISO (International Organization for Standardization) tarafından bir standart haline getirilmiştir. Günümüzde MySQL, PostgreSQL, Microsoft SQL Server, Oracle, SQLite gibi birçok veritabanı yönetim sisteminde yaygın olarak kullanılmaktadır.

---

#### **2. SQL'in Kullanım Alanları**
SQL, geniş bir kullanım alanına sahiptir ve aşağıdaki gibi çeşitli görevleri yerine getirmek için kullanılır:

1. **Veri Tabanı Oluşturma ve Yönetme**
    - Yeni bir veritabanı oluşturma
    - Tablo, dizin (index) ve ilişkileri yönetme

2. **Veri Manipülasyonu**
    - Veri ekleme (`INSERT`)
    - Veri güncelleme (`UPDATE`)
    - Veri silme (`DELETE`)

3. **Veri Sorgulama ve Analiz**
    - Verileri filtreleme ve seçme (`SELECT`)
    - Veri gruplama (`GROUP BY`)
    - Koşullu sorgular (`WHERE`, `HAVING`)
    - Verileri sıralama (`ORDER BY`)
    - İleri seviye analizler için birleşimler (`JOIN`)

4. **Kullanıcı ve Yetkilendirme Yönetimi**
    - Kullanıcı oluşturma ve yetkilendirme (`GRANT`, `REVOKE`)
    - Güvenlik politikaları belirleme

5. **Veri Yedekleme ve Geri Yükleme**
    - Veritabanı yedekleme (`BACKUP DATABASE`)
    - Verileri kurtarma (`RESTORE`)

---

#### **3. SQL'in Temel Bileşenleri**
SQL birçok alt bölüme ayrılabilir. Bunların başlıcaları:

1. **DDL (Data Definition Language - Veri Tanımlama Dili)**  
   Veritabanı ve tablo yapısını oluşturan ve yöneten komutlardan oluşur.
    - `CREATE` – Yeni bir veritabanı veya tablo oluşturur.
    - `ALTER` – Var olan tabloları değiştirmek için kullanılır.
    - `DROP` – Bir veritabanını veya tablosunu tamamen siler.
    - `TRUNCATE` – Tablodaki tüm verileri hızlıca siler ancak tablo yapısını korur.

2. **DML (Data Manipulation Language - Veri İşleme Dili)**  
   Veriler üzerinde değişiklik yapmaya olanak tanır.
    - `INSERT` – Yeni veri ekler.
    - `UPDATE` – Mevcut veriyi günceller.
    - `DELETE` – Verileri siler.

3. **DQL (Data Query Language - Veri Sorgulama Dili)**  
   Veritabanındaki verileri sorgulamak için kullanılır.
    - `SELECT` – Verileri almak için kullanılır.
    - `WHERE` – Şartlı sorgular oluşturur.
    - `GROUP BY` – Verileri gruplandırır.
    - `ORDER BY` – Verileri belirli bir sıraya göre sıralar.

4. **DCL (Data Control Language - Veri Kontrol Dili)**  
   Kullanıcı yetkilendirmeleri ve erişim kontrolleri ile ilgilidir.
    - `GRANT` – Kullanıcılara yetki verir.
    - `REVOKE` – Kullanıcılardan yetki alır.

5. **TCL (Transaction Control Language - İşlem Kontrol Dili)**  
   Veritabanı işlemlerini yönetmek için kullanılır.
    - `COMMIT` – Yapılan değişiklikleri kalıcı hale getirir.
    - `ROLLBACK` – Yapılan değişiklikleri geri alır.
    - `SAVEPOINT` – Belirli bir noktada işlem kaydeder.

---

#### **4. SQL Komutlarına Detaylı Bakış**
Aşağıda yaygın olarak kullanılan SQL komutları detaylandırılmıştır.

##### **Veri Tabanı Oluşturma ve Yönetme**
```sql
CREATE DATABASE ornek_veritabani;
USE ornek_veritabani;
```
Yukarıdaki komut, `ornek_veritabani` adlı yeni bir veritabanı oluşturur ve onu kullanmaya başlar.

##### **Tablo Oluşturma**
```sql
CREATE TABLE Musteriler (
    MusteriID INT PRIMARY KEY AUTO_INCREMENT,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);
```
Bu SQL ifadesi, `Musteriler` adında bir tablo oluşturur. `MusteriID` otomatik artan birincil anahtar olarak belirlenmiştir.

##### **Veri Ekleme (INSERT)**
```sql
INSERT INTO Musteriler (Ad, Soyad, Email) 
VALUES ('Ali', 'Yılmaz', 'ali@example.com');
```
Bu komut, `Musteriler` tablosuna yeni bir müşteri ekler.

##### **Veri Sorgulama (SELECT)**
```sql
SELECT * FROM Musteriler WHERE Ad = 'Ali';
```
Bu komut, adı "Ali" olan müşterileri getirir.

##### **Veri Güncelleme (UPDATE)**
```sql
UPDATE Musteriler SET Email = 'ali.yeni@example.com' WHERE MusteriID = 1;
```
Belirli bir müşterinin e-posta adresini günceller.

##### **Veri Silme (DELETE)**
```sql
DELETE FROM Musteriler WHERE MusteriID = 1;
```
Belirli bir müşteriyi siler.

##### **Tabloları Birleştirme (JOIN)**
```sql
SELECT Musteriler.Ad, Siparisler.Tutar 
FROM Musteriler 
INNER JOIN Siparisler ON Musteriler.MusteriID = Siparisler.MusteriID;
```
Bu sorgu, müşterilerle siparişleri birleştirerek her müşterinin yaptığı alışverişleri gösterir.

##### **Gruplama ve Sıralama**
```sql
SELECT Ad, COUNT(*) AS SiparisSayisi 
FROM Musteriler 
JOIN Siparisler ON Musteriler.MusteriID = Siparisler.MusteriID
GROUP BY Ad
ORDER BY SiparisSayisi DESC;
```
Bu komut, müşterilerin sipariş sayılarını gruplar ve en çok sipariş verenleri sıralar.

---

#### **5. SQL'in Avantajları**
- **Kolay Öğrenilir:** SQL, İngilizceye benzeyen bir sözdizimine sahiptir.
- **Esneklik:** Farklı veritabanı yönetim sistemlerinde çalışabilir.
- **Hızlı ve Verimli:** Büyük veri kümeleri üzerinde hızlı işlemler gerçekleştirebilir.
- **Güvenlik:** Yetkilendirme ve erişim kontrolleri sağlar.
- **Standardizasyon:** ANSI ve ISO tarafından desteklenmektedir.

---

#### **6. SQL Kullanılan Popüler Veritabanı Yönetim Sistemleri**
- **MySQL:** Açık kaynak kodlu ve yaygın kullanılan bir RDBMS.
- **PostgreSQL:** Gelişmiş özelliklere sahip, açık kaynaklı bir veritabanı.
- **Microsoft SQL Server:** Kurumsal çözümler için güçlü bir seçenek.
- **Oracle Database:** Büyük ölçekli veri yönetimi için yaygın kullanılan bir sistem.
- **SQLite:** Hafif ve gömülü veritabanı çözümleri için ideal.

---

### **Sonuç**
SQL, veri yönetimi için vazgeçilmez bir araçtır. Kullanımı kolay, güçlü ve ölçeklenebilir yapısıyla hem küçük projeler hem de büyük kurumsal sistemlerde kullanılabilir. Verileri yönetmek, analiz etmek ve sorgulamak için SQL bilgisi, yazılım geliştirme ve veri bilimi gibi birçok alanda kritik bir beceridir.

DQL (Data Query Language)	Veriyi sorgulamak ve getirmek (SELECT)
DML (Data Manipulation Language)	Veri ekleme, güncelleme, silme (INSERT, UPDATE, DELETE)
DDL (Data Definition Language)	Tabloları, şemaları tanımlama (CREATE, ALTER, DROP)
DCL (Data Control Language)	Kullanıcı yetkilendirmeleri (GRANT, REVOKE)
TCL (Transaction Control Language)	İşlemleri yönetme (COMMIT, ROLLBACK, SAVEPOINT)

## DQL
```sh

```
---
## **SQL DQL (Data Query Language) Nedir?**

### **DQL (Data Query Language - Veri Sorgulama Dili) Tanımı**
DQL, **veritabanında kayıtlı verileri sorgulamak ve almak** için kullanılan SQL alt kümesidir. Diğer SQL alt dilleri gibi, DQL de **veriyle etkileşimi sağlamak** için kritik bir rol oynar. Ancak, DQL’in diğer SQL alt dillerinden (DDL, DML, DCL, TCL) farkı, **veri üzerinde değişiklik yapmadan yalnızca veri çekmesi** ve kullanıcıya sunmasıdır.

DQL'in temel amacı **SELECT** ifadesi ile veri tabanından **veri getirmek ve raporlar oluşturmak** üzerinedir.

---


## **DQL Komutları**
DQL, aslında tek bir temel komuttan oluşur:

- **SELECT** → Veritabanından belirli verileri almak için kullanılır.

Ancak, SELECT komutu çok güçlüdür ve çeşitli operasyonlarla genişletilebilir:
1. **Belli sütunları seçme**
2. **Filtreleme (WHERE)**
3. **Gruplama (GROUP BY, HAVING)**
4. **Sıralama (ORDER BY)**
5. **Birleştirme (JOIN)**
6. **Alt sorgular (Subqueries)**
7. **TOP, DISTINCT gibi kısıtlamalar**

---

## **DQL Komutlarının Kullanımı ve Örnekler**
Aşağıda **Microsoft SQL Server (MSSQL)** kullanılarak gerçekleştirilen çeşitli DQL işlemlerine dair örnekler verilmiştir.

---

### **1. Tüm Kayıtları Çekme**
Bir tablodaki **tüm verileri almak** için kullanılır.

```sql
SELECT * FROM Employees;
```
- `Employees` tablosundaki tüm sütunlar ve tüm satırlar döndürülür.

---

### **2. Belirli Sütunları Seçme**
Tablodaki **tüm sütunları değil, yalnızca belirli sütunları almak** için kullanılır.

```sql
SELECT FirstName, LastName, Email FROM Employees;
```
- `Employees` tablosundan sadece `FirstName`, `LastName` ve `Email` sütunları çekilir.

---

### **3. Koşul ile Veri Getirme (WHERE)**
Belirli koşulları sağlayan verileri almak için kullanılır.

```sql
SELECT * FROM Employees WHERE Department = 'IT';
```
- Sadece **IT departmanında** çalışanların bilgileri döndürülür.

```sql
SELECT * FROM Employees WHERE Salary > 50000;
```
- **Maaşı 50.000’den büyük olan** çalışanlar getirilir.

---

### **4. Tekrarlanan Kayıtları Engelleme (DISTINCT)**
DISTINCT, tekrarlanan verileri **bir kez göstermek** için kullanılır.

```sql
SELECT DISTINCT Department FROM Employees;
```
- `Employees` tablosundaki **farklı departmanları** getirir.

---

### **5. Sonuçları Sıralama (ORDER BY)**
ORDER BY, sonuçları belirli bir **düzen** içinde sıralamak için kullanılır.

```sql
SELECT * FROM Employees ORDER BY LastName ASC;
```
- `LastName` sütununa göre **artan** sırayla sıralanır.

```sql
SELECT * FROM Employees ORDER BY Salary DESC;
```
- `Salary` sütununa göre **azalan** sırayla sıralanır.

---

### **6. Belirli Sayıda Kayıt Getirme (TOP & LIMIT)**
**En fazla belirli sayıda kayıt almak** için kullanılır.

```sql
SELECT TOP 5 * FROM Employees ORDER BY Salary DESC;
```
- En yüksek maaşı alan **ilk 5 çalışanı** getirir.

---

### **7. Gruplama ve Koşullu Gruplama (GROUP BY & HAVING)**
**Benzer verileri gruplamak** ve gruplar üzerinde işlemler yapmak için kullanılır.

```sql
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;
```
- Her **departmanda kaç çalışan** olduğunu gösterir.

```sql
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 50000;
```
- **Maaş ortalaması 50.000’den büyük olan** departmanları getirir.

---

### **8. Birden Fazla Tabloyu Birleştirme (JOIN)**
Farklı tablolardaki verileri birleştirmek için **JOIN** kullanılır.

```sql
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
```
- `Employees` ve `Departments` tabloları birleştirilerek **çalışanların isimleri ve çalıştıkları departmanlar** gösterilir.

---

### **9. Alt Sorgular (Subqueries)**
Bir sorgunun içinde başka bir sorgu çalıştırmak için kullanılır.

```sql
SELECT FirstName, LastName FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
```
- **Maaşı, tüm çalışanların ortalama maaşından yüksek olan çalışanları** getirir.

---

### **10. BETWEEN, IN, LIKE Kullanımı**
- **BETWEEN** → Belirli bir aralıkta değerleri seçmek için
- **IN** → Belirli bir listedeki değerleri seçmek için
- **LIKE** → Belirli bir desene uyan verileri almak için

```sql
SELECT * FROM Employees WHERE Salary BETWEEN 40000 AND 60000;
```
- **Maaşı 40.000 ile 60.000 arasında** olanları getirir.

```sql
SELECT * FROM Employees WHERE Department IN ('IT', 'HR', 'Finance');
```
- **IT, HR veya Finance departmanındaki çalışanları** getirir.

```sql
SELECT * FROM Employees WHERE LastName LIKE 'A%';
```
- **Soyadı "A" harfi ile başlayan çalışanları** getirir.

---

## **DQL ve Diğer SQL Alt Dilleri Arasındaki Fark**
| **SQL Alt Dili**  | **Amaç** |
|-------------------|----------|
| **DQL (Data Query Language)** | Veriyi sorgulamak ve getirmek (SELECT) |
| **DML (Data Manipulation Language)** | Veri ekleme, güncelleme, silme (INSERT, UPDATE, DELETE) |
| **DDL (Data Definition Language)** | Tabloları, şemaları tanımlama (CREATE, ALTER, DROP) |
| **DCL (Data Control Language)** | Kullanıcı yetkilendirmeleri (GRANT, REVOKE) |
| **TCL (Transaction Control Language)** | İşlemleri yönetme (COMMIT, ROLLBACK, SAVEPOINT) |

---

## **Sonuç**
DQL, SQL’in **veriyi sadece okumaya** yönelik kullanılan alt dilidir. **SELECT** komutu sayesinde, tablolar arasındaki ilişkileri kullanarak, gelişmiş sorgular yazılabilir ve istenen veriler farklı kriterlere göre listelenebilir.

**DQL öğrenmek, verileri verimli şekilde analiz etmek ve SQL sorgularını optimize etmek için çok önemlidir.** Özellikle veri bilimi, yazılım geliştirme ve raporlama süreçlerinde DQL en çok kullanılan SQL bileşenlerinden biridir.

## WHERE 
```sh

```
---
### **MSSQL WHERE Koşulu ile İlgili Örnekler**
`WHERE` koşulu, SQL'de belirli bir kriteri karşılayan verileri filtrelemek için kullanılır. **MSSQL'de `WHERE` koşulu, `SELECT`, `UPDATE`, `DELETE` gibi sorgularla birlikte kullanılabilir.**

---

## **1. Temel WHERE Kullanımı**
Belirli bir departmanda çalışanları listeleyelim:

```sql
SELECT * FROM Employees WHERE Department = 'IT';
```
- `Employees` tablosundan **yalnızca IT departmanındaki** çalışanları getirir.

---

## **2. Sayısal Değer ile Filtreleme**
Maaşı 50.000'den büyük olan çalışanları listeleyelim:

```sql
SELECT * FROM Employees WHERE Salary > 50000;
```
- **Maaşı 50.000’den fazla olan** çalışanları getirir.

---

## **3. Birden Fazla Koşul Kullanımı (`AND` ve `OR`)**
### **3.1 AND Kullanımı**
Hem IT departmanında olup hem de maaşı 60.000’den fazla olanları getirir:

```sql
SELECT * FROM Employees WHERE Department = 'IT' AND Salary > 60000;
```
- **IT departmanındaki ve maaşı 60.000’den fazla olan çalışanları** listeler.

### **3.2 OR Kullanımı**
IT veya HR departmanında çalışanları getirir:

```sql
SELECT * FROM Employees WHERE Department = 'IT' OR Department = 'HR';
```
- **IT veya HR departmanındaki tüm çalışanları** listeler.

---

## **4. BETWEEN ile Aralık Belirleme**
Maaşı **40.000 ile 70.000 arasında** olan çalışanları getirir:

```sql
SELECT * FROM Employees WHERE Salary BETWEEN 40000 AND 70000;
```
- `BETWEEN` operatörü, **alt ve üst sınır dahil olmak üzere** belirtilen aralıktaki değerleri seçer.

Tarih aralığında sorgu yapalım:

```sql
SELECT * FROM Employees WHERE HireDate BETWEEN '2020-01-01' AND '2023-12-31';
```
- **2020 ile 2023 yılları arasında işe alınan çalışanları** listeler.

---

## **5. IN ile Belirli Değerleri Filtreleme**
IT, HR ve Finance departmanındaki çalışanları listeleyelim:

```sql
SELECT * FROM Employees WHERE Department IN ('IT', 'HR', 'Finance');
```
- `IN` operatörü, **belirtilen değerlerden herhangi birine eşit olan** satırları getirir.

---

## **6. LIKE ile Metinsel Desen Filtreleme**
`LIKE` operatörü, belirli **metin kalıplarını** aramak için kullanılır.

| **Joker Karakter** | **Anlamı** |
|--------------------|------------|
| `%` | **Herhangi bir karakter dizisini** temsil eder (sıfır veya daha fazla karakter). |
| `_` | **Tek bir karakter** yerine geçer. |

### **6.1 Belirli Harfle Başlayan Veriler**
Soyadı 'A' harfi ile başlayan çalışanları getirir:

```sql
SELECT * FROM Employees WHERE LastName LIKE 'A%';
```
- `A%` → "A" harfiyle başlayan tüm kayıtları listeler.

### **6.2 Belirli Harfle Biten Veriler**
Soyadı 'n' harfi ile biten çalışanları getirir:

```sql
SELECT * FROM Employees WHERE LastName LIKE '%n';
```
- `%n` → "n" harfi ile biten tüm kayıtları listeler.

### **6.3 Belirli Bir Kelimeyi İçeren Veriler**
İçinde "Tech" kelimesi geçen pozisyonları getirir:

```sql
SELECT * FROM Employees WHERE Position LIKE '%Tech%';
```
- **Pozisyon adı içinde "Tech" geçen tüm çalışanları** getirir.

### **6.4 Belirli Uzunluktaki Kelimeleri Getirme**
İlk harfi "J", ikinci harfi rastgele ve üçüncü harfi "n" olan çalışanları getirir:

```sql
SELECT * FROM Employees WHERE FirstName LIKE 'J_n%';
```
- `J_n%` → **İlk harfi "J", üçüncü harfi "n" olan adları** getirir (örn: "Jon", "Jan", "Jim").

---

## **7. NULL Değerleri Filtreleme (`IS NULL` ve `IS NOT NULL`)**
### **7.1 NULL Olan Kayıtları Getirme**
E-posta adresi olmayan çalışanları getirir:

```sql
SELECT * FROM Employees WHERE Email IS NULL;
```
- `NULL` olan satırları seçer.

### **7.2 NULL Olmayan Kayıtları Getirme**
E-posta adresi kayıtlı olan çalışanları getirir:

```sql
SELECT * FROM Employees WHERE Email IS NOT NULL;
```
- `NULL` **olmayan** satırları seçer.

---

## **8. NOT ile Koşulu Tersine Çevirme**
Belirli bir departmanda olmayan çalışanları getirir:

```sql
SELECT * FROM Employees WHERE NOT Department = 'HR';
```
- `HR` departmanında **çalışmayanları** getirir.

Baş harfi "A" olmayan çalışanları getirir:

```sql
SELECT * FROM Employees WHERE FirstName NOT LIKE 'A%';
```
- İsmi "A" ile başlamayanları getirir.

---

## **9. EXISTS ile Alt Sorgular Kullanma**
**EXISTS**, **alt sorgunun en az bir satır döndürmesi durumunda** TRUE döndürür.

Örneğin, en az bir siparişi olan müşterileri listeleyelim:

```sql
SELECT * FROM Customers WHERE EXISTS (
    SELECT 1 FROM Orders WHERE Orders.CustomerID = Customers.CustomerID
);
```
- `Customers` tablosunda, **en az bir siparişi olan müşterileri** listeler.

---

## **10. Subquery (Alt Sorgu) ile Koşul Kullanma**
Maaşı, şirket ortalama maaşından yüksek olan çalışanları getirir:

```sql
SELECT * FROM Employees WHERE Salary > (
    SELECT AVG(Salary) FROM Employees
);
```
- **Ortalama maaşın üzerinde maaş alan çalışanları** listeler.

---

## **Sonuç**
- `WHERE` **koşulu**, **MSSQL'de verileri filtrelemek** için en temel ve güçlü araçlardan biridir.
- **Farklı operatörler** ile (AND, OR, BETWEEN, LIKE, IN, IS NULL vb.) daha karmaşık sorgular oluşturulabilir.
- **JOIN, EXISTS ve Subquery** kullanarak daha **gelişmiş ve dinamik** filtreleme işlemleri yapılabilir.

**MSSQL'de WHERE ile verileri daha iyi yönetmek için yukarıdaki örnekleri farklı veri kümeleriyle denemenizi öneririm!** 🚀


## between yerine and veya or kullansam hangisi daha performanslı
```sh

```
---
## **`BETWEEN` vs. `AND` vs. `OR` Performans Karşılaştırması (MS SQL Server)**

MS SQL Server'da **`BETWEEN`** ve **`AND`** operatörleri genellikle aynı işlevi görür, ancak **performans açısından bazı farklılıklar** vardır. **`OR`** operatörü ise genellikle performans açısından daha düşük verimli olabilir.

---

### **1. `BETWEEN` ve `AND` Karşılaştırması**
**Temel olarak `BETWEEN`, `AND` kullanımı ile eşdeğerdir.** Ancak, `BETWEEN` ifadesi genellikle daha okunaklıdır ve **sorgu optimizasyonu açısından indekslerle daha iyi çalışabilir.**

📌 **Örnek 1: `BETWEEN` Kullanımı**
```sql
SELECT * FROM Orders WHERE OrderDate BETWEEN '2024-01-01' AND '2024-12-31';
```
Bu komut, **OrderDate değerleri 1 Ocak 2024 ile 31 Aralık 2024 arasında olan siparişleri getirir.**

📌 **Örnek 2: `AND` Kullanımı**
```sql
SELECT * FROM Orders WHERE OrderDate >= '2024-01-01' AND OrderDate <= '2024-12-31';
```
Bu komut, **mantıksal olarak `BETWEEN` ile aynıdır.** SQL Server **bu iki sorguyu genellikle aynı şekilde çalıştırır.**

### ✅ **Performans Karşılaştırması**
- **MS SQL Server Query Optimizer (`BETWEEN` ve `AND` ifadelerini aynı şekilde işler)**. Ancak, `BETWEEN` ifadesi daha **okunaklı** olduğu için tercih edilir.
- **İndeks kullanımında fark yoktur.** **Bunun nedeni `BETWEEN` operatörünün, SQL Server’ın sorgu planında `>=` ve `<=` şeklinde çalışmasıdır.**
- **Genellikle `BETWEEN`, `AND` kullanımıyla birebir aynı performansa sahiptir.**

---

### **2. `OR` Kullanımı ve Performans Sorunları**
📌 **Örnek 3: `OR` Kullanımı**
```sql
SELECT * FROM Orders WHERE OrderDate >= '2024-01-01' OR OrderDate <= '2024-12-31';
```
Bu sorgunun mantıksal hatası var çünkü:
- `OrderDate >= '2024-01-01'` tüm tarihleri kapsar.
- `OrderDate <= '2024-12-31'` tüm tarihleri kapsar.
- Bu nedenle, **bütün kayıtlar döner** ve anlamlı bir filtreleme yapılmaz.

📌 **Gerçekçi Bir `OR` Kullanımı**
```sql
SELECT * FROM Orders WHERE OrderDate < '2024-01-01' OR OrderDate > '2024-12-31';
```
Bu komut, **2024 yılına dahil olmayan siparişleri getirir.**

### ❌ **Performans Açısından `OR` Kullanımı Dezavantajlıdır**
- **İndeks kullanımı verimsiz olabilir.**
- **SQL Server `OR` ile iki ayrı filtreleme yapar** ve her iki durumu da ayrı ayrı kontrol eder.
- **Index Seek yerine genellikle Index Scan çalıştırır**, bu da büyük tablolar için performans düşüşüne neden olabilir.

**Genellikle `BETWEEN` ve `AND` daha hızlıdır, `OR` kullanımı daha yavaş olabilir.** Eğer `OR` kullanımı kaçınılmazsa, **`UNION ALL` veya `IN` kullanımı daha verimli olabilir**.

📌 **Performans için `OR` Yerine `UNION ALL` Kullanımı**
```sql
SELECT * FROM Orders WHERE OrderDate < '2024-01-01'
UNION ALL
SELECT * FROM Orders WHERE OrderDate > '2024-12-31';
```
- **`UNION ALL`, `OR` yerine kullanıldığında genellikle daha hızlı çalışır.**
- **Eğer iki farklı index varsa, her sorgu kendi index’i üzerinden çalışabilir.**
- **`OR` yerine `UNION ALL` tercih edilirse, SQL Server’ın sorgu optimizasyonu daha verimli olabilir.**

---

## **3. Sonuç: Hangisi Daha Performanslı?**
| Kullanım | Performans | Açıklama |
|----------|-----------|----------|
| `BETWEEN` | ✅ **En iyi performans** | SQL Server tarafından `>=` ve `<=` şeklinde optimize edilir. |
| `AND` | ✅ **Aynı performans** | `BETWEEN` ile eşdeğerdir, ancak daha uzun yazım gerektirir. |
| `OR` | ❌ **Düşük performans** | Index Scan ihtimali yüksek, büyük veri kümelerinde yavaş çalışır. |
| `UNION ALL` | ✅ **Daha iyi performans (Bazı durumlarda)** | Eğer iki ayrı index varsa, `OR` yerine kullanılması daha verimli olabilir. |

📌 **Genel Tavsiye:**
- **Sıralı veri (tarih, sayısal) filtrelemesi yaparken `BETWEEN` veya `AND` kullanın.**
- **Eğer `OR` kullanmanız gerekiyorsa, mümkünse `UNION ALL` veya `IN` kullanarak performansı artırabilirsiniz.**
- **Eğer indeksleme uygunsa, SQL Server genellikle `BETWEEN` ve `AND` kullanımlarını daha hızlı çalıştırır.** 🚀


## IN (WHERE)
```sh

```
---
Elbette! SQL'de `IN` ifadesi oldukça güçlü ve sık kullanılan bir yapıdır. Şimdi detaylı şekilde inceleyelim ve ardından **Northwind veritabanı** üzerinden örneklerle açıklayalım.

---

## 🔍 `IN` Operatörü Nedir?

### ✅ Tanım:
`IN` operatörü, bir sütunun değerinin, belirli bir değer kümesinden biri olup olmadığını kontrol eder. `WHERE` koşulu içinde kullanılır ve `OR` ifadesine göre daha okunabilir ve kısa bir yazım sunar.

---

## 🧠 Söz Dizimi (Syntax):
```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

---

## 🧾 Örnek Mantık:
```sql
SELECT * 
FROM Employees 
WHERE Country IN ('USA', 'UK', 'Germany');
```

Bu sorgu şu anlama gelir:
> "Ülke bilgisi sadece 'USA', 'UK' veya 'Germany' olan çalışanları getir."

Bu, aşağıdakiyle aynı işlemi yapar ama daha kısa ve okunur:
```sql
WHERE Country = 'USA' OR Country = 'UK' OR Country = 'Germany'
```

---

## 🔧 `IN` Kullanım Notları:

| Özellik | Açıklama |
|--------|----------|
| Çoklu değer kontrolü | `IN` bir sütunun birden fazla değerden birine eşit olup olmadığını kontrol eder |
| Alt sorgularla kullanılabilir | Liste yerine bir SELECT sorgusu verilebilir |
| NULL içerirse | NULL değerler `IN` listesinde doğru sonuç döndürmez (NULL özel durumdur) |

---

## 📦 NORTHWIND Veritabanı ile `IN` Örnekleri

---

### 🎯 Örnek 1: Belirli ülkelerdeki müşterileri listeleme
```sql
SELECT CustomerID, CompanyName, Country
FROM Customers
WHERE Country IN ('Germany', 'France', 'Brazil');
```
📌 Açıklama: Yalnızca Almanya, Fransa ve Brezilya’daki müşterileri getirir.

---

### 🎯 Örnek 2: Belirli ürün kategorilerine ait ürünleri listeleme
```sql
SELECT ProductName, CategoryID
FROM Products
WHERE CategoryID IN (1, 2, 5);
```
📌 Açıklama: Kategori ID’si 1, 2 veya 5 olan ürünleri listeler.

---

### 🎯 Örnek 3: Belirli çalışanlar tarafından alınan siparişler
```sql
SELECT OrderID, EmployeeID, OrderDate
FROM Orders
WHERE EmployeeID IN (2, 4, 5);
```
📌 Açıklama: Sadece belirtilen çalışanların aldığı siparişleri getirir.

---

### 🎯 Örnek 4: Belirli ürünleri sipariş detaylarında bulma
```sql
SELECT OrderID, ProductID, UnitPrice
FROM [Order Details]
WHERE ProductID IN (1, 2, 3);
```
📌 Açıklama: Ürün ID'si 1, 2 veya 3 olan ürünlerin sipariş detaylarını listeler.

---

### 🎯 Örnek 5: `IN` + Subquery → Belirli ülkelerdeki çalışanlar
```sql
SELECT FirstName, LastName, Country
FROM Employees
WHERE Country IN (
    SELECT DISTINCT Country
    FROM Customers
    WHERE Country IN ('USA', 'UK', 'France')
);
```
📌 Açıklama: Müşterilerin bulunduğu USA, UK ve France ülkelerinden olan çalışanları getirir.

---

### 🎯 Örnek 6: `IN` + JOIN Kullanımı
```sql
SELECT c.CompanyName, o.OrderID
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.Country IN ('Mexico', 'Spain');
```
📌 Açıklama: Meksika veya İspanya’daki müşterilerin verdiği siparişleri listeler.

---

## 🎓 SONUÇ

- `IN`, `WHERE` içinde çoklu değer kontrolü yapar.
- Kod okunabilirliğini artırır.
- `OR` ifadeleri yerine daha sade kullanım sunar.
- Alt sorgularla da kullanılabilir.
- Özellikle sabit listeler, filtreleme ve alt sorgularla çok etkilidir.

---


## CAST
```sh

```
### 📌 MSSQL `CAST` Nedir?

`CAST`, SQL Server'da bir veri türünü başka bir veri türüne dönüştürmek için kullanılan bir fonksiyondur. Örneğin, bir `float` değeri `int` yapmak ya da bir sayısal değeri `varchar` (metin) haline getirmek için kullanılır.

### 🔧 Söz Dizimi (Syntax):
```sql
CAST(expression AS target_data_type)
```

---

## 🎯 Örneklerle `CAST` Kullanımı (Northwind Veritabanı ile)

### 1. **Fiyatı (UnitPrice) Metin (VARCHAR) Olarak Getirme**
```sql
SELECT 
    ProductName,
    UnitPrice,
    CAST(UnitPrice AS VARCHAR(20)) AS PriceAsText
FROM Products;
```
📌 Açıklama: `UnitPrice` normalde `money` veya `decimal`. Bunu `VARCHAR`'a dönüştürerek metin gibi işlem yapabiliriz (örneğin birleştirme işlemlerinde).

---

### 2. **Miktarı Tam Sayıya Dönüştürme (`float` → `int`)**
```sql
SELECT 
    ProductName,
    UnitPrice,
    CAST(UnitPrice AS INT) AS RoundedPrice
FROM Products;
```
📌 Açıklama: `CAST` ile fiyatı tam sayıya çeviriyoruz. Virgülden sonrasını atar (yuvarlamaz, keser).

---

### 3. **Tarihi Sadece Yıl Olarak Gösterme**
```sql
SELECT 
    OrderID,
    OrderDate,
    CAST(YEAR(OrderDate) AS VARCHAR(4)) AS OrderYear
FROM Orders;
```
📌 Açıklama: `YEAR()` fonksiyonu ile yılı alıyoruz, `CAST` ile metne çeviriyoruz.

---

### 4. **İndirimli Tutar Hesaplama ve `money` Olarak Dönüştürme**
```sql
SELECT 
    OrderID,
    UnitPrice,
    Quantity,
    Discount,
    CAST((UnitPrice * Quantity * (1 - Discount)) AS MONEY) AS DiscountedTotal
FROM [Order Details];
```
📌 Açıklama: İndirimli fiyatı hesaplayıp sonucu `money` türüne dönüştürüyoruz.

---

### 5. **CustomerID ile Sipariş Sayısı (Sayı → VARCHAR Birleştirme)**
```sql
SELECT 
    CustomerID,
    CAST(COUNT(OrderID) AS VARCHAR) + ' adet sipariş' AS TotalOrders
FROM Orders
GROUP BY CustomerID;
```
📌 Açıklama: `COUNT` sayısını yazıya çevirip metinle birleştiriyoruz.

---

## 🎁 Ekstra: `CAST` ile `CONCAT` Kullanımı
```sql
SELECT 
    ProductName,
    'Fiyat: ' + CAST(UnitPrice AS VARCHAR) + ' $' AS PriceInfo
FROM Products;
```
📌 Açıklama: Sayısal bir değer (UnitPrice), metinle birleştirilmeden önce `CAST` ile dönüştürülmeli.

---


## ORDER BY
```sh

```
---


## CAST 
```sh

```
---
# **MS SQL’de ORDER BY Nedir?**
`ORDER BY` komutu, **verileri belirli bir sütuna göre sıralamak** için kullanılır. **Artan (ASC)** veya **Azalan (DESC)** sırayla sıralama işlemi gerçekleştirebilir.

## **ORDER BY Temel Kullanımı**
```sql
SELECT * FROM Category ORDER BY CategoryName ASC;
```
Bu sorgu, **Category** tablosundaki tüm verileri **CategoryName sütununa göre alfabetik (artan - A’dan Z’ye) sıralar**.

```sql
SELECT * FROM Category ORDER BY CategoryName DESC;
```
Bu sorgu, **CategoryName sütununa göre azalan (Z’den A’ya) sıralar**.

---

## **Northwind Veritabanındaki `Category` Tablosunda ORDER BY Kullanımı**

### **1. Kategori Adını Artan ve Azalan Şekilde Sıralama**
```sql
SELECT CategoryID, CategoryName FROM Category ORDER BY CategoryName ASC;
```
- **Kategori adlarını alfabetik olarak sıralar (A’dan Z’ye).**

```sql
SELECT CategoryID, CategoryName FROM Category ORDER BY CategoryName DESC;
```
- **Kategori adlarını ters alfabetik sırayla sıralar (Z’den A’ya).**

---

### **2. `CategoryID` Değerine Göre Sıralama**
```sql
SELECT * FROM Category ORDER BY CategoryID ASC;
```
- **Kategori ID’sine göre küçükten büyüğe sıralar.**

```sql
SELECT * FROM Category ORDER BY CategoryID DESC;
```
- **Kategori ID’sine göre büyükten küçüğe sıralar.**

---

### **3. Birden Fazla Sütuna Göre Sıralama**
Eğer birden fazla sütuna göre sıralama yapmak istiyorsak, **öncelik sırasına göre ORDER BY kullanabiliriz**.

```sql
SELECT * FROM Category ORDER BY CategoryName ASC, CategoryID DESC;
```
- **Önce CategoryName alfabetik sıralanır.**
- **Aynı isimdeki kategoriler varsa, bunlar CategoryID’ye göre büyükten küçüğe sıralanır.**

---

### **4. `ORDER BY` ve `WHERE` Kullanımı**
```sql
SELECT * FROM Category WHERE CategoryID > 3 ORDER BY CategoryName ASC;
```
- **CategoryID’si 3’ten büyük olan kategorileri alır.**
- **Kategori adlarını alfabetik sıralar.**

---

### **5. `ORDER BY` ile `TOP` Kullanımı**
**En yüksek veya en düşük değerleri almak için `TOP` ifadesi ile `ORDER BY` kullanılabilir.**
```sql
SELECT TOP 3 * FROM Category ORDER BY CategoryID ASC;
```
- **CategoryID’ye göre en küçük 3 kategoriyi getirir.**

```sql
SELECT TOP 3 * FROM Category ORDER BY CategoryID DESC;
```
- **CategoryID’ye göre en büyük 3 kategoriyi getirir.**

---

### **6. `ORDER BY` ile `CASE` Kullanımı (Özel Sıralama)**
Eğer belirli kategorilerin öncelikli gelmesini istiyorsak, **CASE ifadesiyle özel sıralamalar** yapabiliriz.

```sql
SELECT * FROM Category 
ORDER BY 
    CASE 
        WHEN CategoryName = 'Beverages' THEN 1
        WHEN CategoryName = 'Condiments' THEN 2
        ELSE 3 
    END, CategoryName ASC;
```
- **"Beverages" en üstte olur.**
- **"Condiments" ikinci sırada olur.**
- **Diğer kategoriler alfabetik sırayla gelir.**

---

### **Sonuç**
- `ORDER BY`, **verileri belirli sütunlara göre sıralamak için kullanılır.**
- `ASC` → **Artan sırayla sıralar (küçükten büyüğe, A’dan Z’ye).**
- `DESC` → **Azalan sırayla sıralar (büyükten küçüğe, Z’den A’ya).**
- `ORDER BY` **birden fazla sütun ile kullanılabilir.**
- **`TOP`, `WHERE`, `CASE` gibi ifadelerle birlikte kullanılarak özelleştirilmiş sıralamalar yapılabilir.**

📌 **Northwind veritabanındaki Category tablosu ile ORDER BY komutlarını kullanarak sıralama işlemlerini rahatça yapabilirsiniz!** 🚀

## Operator
```sh

```
---

MSSQL'de **Operatörler**, SQL ifadelerinde **veriler üzerinde işlem yapmak** için kullanılan özel semboller veya anahtar kelimelerdir. Operatörler sayesinde karşılaştırma yapılabilir, matematiksel işlemler gerçekleştirilebilir, mantıksal koşullar kontrol edilebilir veya bit düzeyinde işlemler yapılabilir. MSSQL'deki operatörler farklı kategorilere ayrılır ve her biri farklı işlemleri yerine getirir.

Aşağıda tüm detaylarıyla MSSQL'deki operatörler kategorilere ayrılarak açıklanmıştır:

---

## 🔹 1. Aritmetik Operatörler
Veri üzerinde temel matematiksel işlemleri yapar.

| Operatör | Açıklama              | Örnek                             | Açıklama |
|----------|------------------------|-----------------------------------|----------|
| `+`      | Toplama                | `SELECT 5 + 3 AS Toplam`          | 8        |
| `-`      | Çıkarma                | `SELECT 10 - 4 AS Fark`           | 6        |
| `*`      | Çarpma                 | `SELECT 7 * 2 AS Carpim`          | 14       |
| `/`      | Bölme                  | `SELECT 20 / 5 AS Bolum`          | 4        |
| `%`      | Mod (kalanı bulma)     | `SELECT 10 % 3 AS Kalan`          | 1        |

> Not: Integer bölme işleminde tam sayı döner. Eğer ondalık bekleniyorsa float ya da decimal ile çevirme yapılmalıdır.

---

## 🔹 2. Karşılaştırma (Comparison) Operatörleri
İki değeri karşılaştırmak için kullanılır. Genellikle `WHERE`, `CASE`, `IF`, `HAVING` gibi yapılarla birlikte kullanılır.

| Operatör | Açıklama                              | Örnek                                      |
|----------|----------------------------------------|--------------------------------------------|
| `=`      | Eşittir                               | `WHERE yas = 18`                           |
| `!=`     | Eşit değildir                          | `WHERE yas != 18`                          |
| `<>`     | Eşit değildir (alternatif)             | `WHERE yas <> 18`                          |
| `>`      | Büyüktür                              | `WHERE yas > 18`                           |
| `<`      | Küçüktür                              | `WHERE yas < 18`                           |
| `>=`     | Büyük veya eşittir                    | `WHERE yas >= 18`                          |
| `<=`     | Küçük veya eşittir                    | `WHERE yas <= 18`                          |
| `BETWEEN`| Arasında                              | `WHERE yas BETWEEN 18 AND 30`              |
| `LIKE`   | Benzerlik (karakter eşleşmeleri)      | `WHERE ad LIKE 'A%'`                       |
| `IN`     | Belirli bir kümede var mı             | `WHERE sehir IN ('Ankara', 'İstanbul')`    |
| `IS NULL`| Null kontrolü                         | `WHERE soyad IS NULL`                      |
| `IS NOT NULL` | Null değil kontrolü              | `WHERE soyad IS NOT NULL`                  |

---

## 🔹 3. Mantıksal (Logical) Operatörler
Koşullu ifadeleri birleştirmek veya mantıksal sonuçlar üretmek için kullanılır.

| Operatör | Açıklama                                    | Örnek                                                      |
|----------|----------------------------------------------|-------------------------------------------------------------|
| `AND`    | Her iki koşul da doğruysa `TRUE`            | `WHERE yas > 18 AND sehir = 'İstanbul'`                    |
| `OR`     | En az bir koşul doğruysa `TRUE`             | `WHERE yas > 18 OR sehir = 'İstanbul'`                     |
| `NOT`    | Koşulu tersine çevirir                      | `WHERE NOT (sehir = 'İstanbul')`                           |
| `ALL`    | Tüm sonuçlarla karşılaştırma                | `SELECT * FROM tablo WHERE yas > ALL (SELECT yas FROM ...)`|
| `ANY`    | Herhangi biriyle karşılaştırma              | `SELECT * FROM tablo WHERE yas = ANY (SELECT yas FROM ...)`|
| `EXISTS` | Alt sorguda kayıt var mı kontrol eder       | `WHERE EXISTS (SELECT * FROM ...)`                         |

---

## 🔹 4. Bit Düzeyinde (Bitwise) Operatörler
Verilerin bit düzeyinde işlem yapılmasını sağlar.

| Operatör | Açıklama                            | Örnek                           |
|----------|--------------------------------------|---------------------------------|
| `&`      | AND işlemi (bit düzeyinde)           | `SELECT 5 & 3` (0101 & 0011 = 0001 = 1) |
| `|`      | OR işlemi (bit düzeyinde)            | `SELECT 5 | 3` (0101 | 0011 = 0111 = 7) |
| `^`      | XOR işlemi (bit düzeyinde)           | `SELECT 5 ^ 3` (0101 ^ 0011 = 0110 = 6) |
| `~`      | NOT işlemi (bit düzeyinde tersleme)  | `SELECT ~5` (yani -6, çünkü 2'nin tamamlayanı) |

---

## 🔹 5. Atama Operatörleri
Değişkenlere veya kolonlara değer atamak için kullanılır.

| Operatör | Açıklama                       | Örnek                                   |
|----------|---------------------------------|-----------------------------------------|
| `=`      | Değer atamak için               | `SET @yas = 25`                         |
| `+=`     | Mevcut değere ekleme yapar      | `SET @yas += 1`                         |
| `-=`     | Mevcut değerden çıkarma         | `SET @yas -= 1`                         |
| `*=`     | Çarpma                          | `SET @maas *= 2`                        |
| `/=`     | Bölme                           | `SET @puan /= 2`                        |
| `%=`     | Mod alma ve atama               | `SET @puan %= 3`                        |

> Not: Bu tür atamalar genelde `DECLARE` ve `SET` ifadeleriyle kullanılır.

---

## 🔹 6. String (Metin) Operatörleri
String ifadelerle işlem yapılmasını sağlar.

| Operatör | Açıklama                       | Örnek                                   |
|----------|--------------------------------|-----------------------------------------|
| `+`      | String birleştirme             | `SELECT 'Ad' + ' ' + 'Soyad' AS TamAd` |
| `LIKE`   | Pattern eşleştirme             | `WHERE ad LIKE 'A%'`                    |
| `PATINDEX` | Patternin indexini verir     | `SELECT PATINDEX('%a%', 'Merhaba')`    |
| `CHARINDEX` | Belirli karakterin pozisyonu | `SELECT CHARINDEX('e', 'Merhaba')`     |

---

## 🔹 7. Özel SQL Operatörleri

### `IS`
`NULL` değerler için kullanılır.

```sql
SELECT * FROM personel WHERE soyad IS NULL;
```

### `CASE`
Koşullu durumlar için bir operatördür.

```sql
SELECT ad, 
       CASE 
            WHEN yas >= 18 THEN 'Yetişkin'
            ELSE 'Çocuk'
       END AS Durum
FROM personel;
```

---

## 🔹 Kullanım Senaryoları

### 1. Aritmetik + Karşılaştırma + Mantıksal
```sql
SELECT * 
FROM personel 
WHERE maas + prim > 10000 AND sehir = 'İzmir';
```

### 2. LIKE + OR
```sql
SELECT * 
FROM ogrenciler 
WHERE ad LIKE 'A%' OR soyad LIKE '%z';
```

### 3. Bitwise Kullanım
Yetki sistemi gibi yapılarda kullanılır:
```sql
-- Örnek: Kullanıcının yazma yetkisi var mı kontrolü (bit düzeyinde)
SELECT * 
FROM kullanicilar 
WHERE yetki & 2 = 2;
```

---

## 🔹 Önemli Notlar

- MSSQL operatörleri, **SQL Server’ın execution engine** tarafından optimize edilir.
- Özellikle `IN`, `EXISTS`, `BETWEEN`, `LIKE` gibi operatörler, performans açısından farklı davranışlar gösterebilir.
- Bit düzeyinde operatörler daha çok **low-level logic** gerektiren sistemlerde tercih edilir (örneğin yetkilendirme sistemleri, bayrak kontrolleri vs).

---


## Aggreagate
```sh

```
---
Microsoft SQL Server (MSSQL) üzerindeki **Aggregate Functions** (Toplama Fonksiyonları), bir grup satırdan tek bir özet değer döndürmek için kullanılan fonksiyonlardır. Genellikle `GROUP BY` ile birlikte kullanılırlar ama tek başlarına da çalışabilirler. Şimdi çok detaylı şekilde tüm yönleriyle açıklayalım.

---

## 📌 Aggregate Function Nedir?

Birden fazla veriden bir özet değer üretmek için kullanılan fonksiyonlardır. Bu özet değer genellikle:

- Toplam (sum)
- Ortalama (average)
- En küçük (min)
- En büyük (max)
- Sayı (count)

gibi istatistiksel bilgi sağlar.

---

## 🎯 Temel Aggregate Function'lar (Toplama Fonksiyonları)

### 1. **`SUM()`**
> Sayısal sütunların toplamını verir.

**Sözdizimi:**
```sql
SELECT SUM(column_name) FROM table_name;
```

**Örnek:**
```sql
SELECT SUM(Tutar) AS ToplamTutar FROM Satislar;
```

### 2. **`AVG()`**
> Sayısal bir sütunun ortalamasını verir.

**Sözdizimi:**
```sql
SELECT AVG(column_name) FROM table_name;
```

**Örnek:**
```sql
SELECT AVG(Maas) AS OrtalamaMaas FROM Calisanlar;
```

### 3. **`COUNT()`**
> Satır sayısını ya da belirli bir sütundaki dolu hücre sayısını verir.

**Sözdizimi:**
```sql
SELECT COUNT(*) FROM table_name;             -- Tüm satırları sayar
SELECT COUNT(column_name) FROM table_name;   -- NULL olmayan satırları sayar
```

**Örnek:**
```sql
SELECT COUNT(*) AS ToplamCalisan FROM Calisanlar;
SELECT COUNT(Maas) AS MaasGirenCalisan FROM Calisanlar;
```

### 4. **`MIN()`**
> En küçük değeri döndürür.

**Sözdizimi:**
```sql
SELECT MIN(column_name) FROM table_name;
```

**Örnek:**
```sql
SELECT MIN(Maas) AS EnDusukMaas FROM Calisanlar;
```

### 5. **`MAX()`**
> En büyük değeri döndürür.

**Sözdizimi:**
```sql
SELECT MAX(column_name) FROM table_name;
```

**Örnek:**
```sql
SELECT MAX(Maas) AS EnYuksekMaas FROM Calisanlar;
```

---

## 🧠 GROUP BY ile Kullanım

`GROUP BY` ifadesiyle birlikte aggregate fonksiyonlar çok daha anlamlı hale gelir. Aynı gruba ait verileri tek bir özet satırda toplar.

**Örnek Senaryo: Her departmandaki çalışan sayısını öğrenmek**
```sql
SELECT DepartmanID, COUNT(*) AS CalisanSayisi
FROM Calisanlar
GROUP BY DepartmanID;
```

**Örnek Senaryo: Ürün bazında toplam satış tutarı**
```sql
SELECT UrunID, SUM(Tutar) AS ToplamSatis
FROM Satislar
GROUP BY UrunID;
```

---

## ⚠️ NULL ile Aggregate Function Kullanımı

- `SUM`, `AVG`, `MIN`, `MAX` gibi fonksiyonlar **NULL değerleri yoksayar.**
- `COUNT(*)` tüm satırları sayar.
- `COUNT(column_name)` sadece NULL olmayanları sayar.

**Örnek:**
```sql
SELECT COUNT(*) AS TumSatirlar,
       COUNT(Maas) AS MaasGirenler
FROM Calisanlar;
```

---

## 🔍 HAVING ile Kullanımı

`WHERE` ifadesi bireysel satırları filtrelerken, `HAVING` ifadesi **aggregate edilen gruplar üzerinde koşul koymak için** kullanılır.

**Örnek: Ortalama maaşı 10.000'in üzerinde olan departmanlar**
```sql
SELECT DepartmanID, AVG(Maas) AS OrtalamaMaas
FROM Calisanlar
GROUP BY DepartmanID
HAVING AVG(Maas) > 10000;
```

---

## 👨‍💻 Örnek Tablo ile Uygulama

**Tablo Adı:** `Satislar`

| SatisID | UrunAdi    | Kategori   | Tutar |
|---------|------------|------------|-------|
| 1       | Laptop     | Teknoloji  | 15000 |
| 2       | Telefon    | Teknoloji  | 8000  |
| 3       | Kitap      | Kırtasiye  | 120   |
| 4       | Defter     | Kırtasiye  | 30    |
| 5       | Tablet     | Teknoloji  | 6000  |

### a. Tüm satışların toplamı:
```sql
SELECT SUM(Tutar) AS ToplamSatis FROM Satislar;
```

### b. Kategori bazında toplam satış:
```sql
SELECT Kategori, SUM(Tutar) AS KategoriToplami
FROM Satislar
GROUP BY Kategori;
```

### c. En pahalı ürünün tutarı:
```sql
SELECT MAX(Tutar) AS EnPahali FROM Satislar;
```

### d. Ortalama satış tutarı:
```sql
SELECT AVG(Tutar) AS OrtalamaTutar FROM Satislar;
```

### e. Kategorilerde ortalama satış tutarı 5000’in üstünde olanlar:
```sql
SELECT Kategori, AVG(Tutar) AS Ortalama
FROM Satislar
GROUP BY Kategori
HAVING AVG(Tutar) > 5000;
```

---

## 🔄 Aggregate Function + CASE WHEN

Koşullu toplama gibi işlemler yapılabilir.

**Örnek: Kadın ve erkek çalışan sayılarını ayrı ayrı sayma**
```sql
SELECT 
    COUNT(CASE WHEN Cinsiyet = 'Erkek' THEN 1 END) AS ErkekSayisi,
    COUNT(CASE WHEN Cinsiyet = 'Kadin' THEN 1 END) AS KadinSayisi
FROM Calisanlar;
```

---

## 🚀 Performans Notları

- `COUNT(*)` performanslıdır çünkü index’ler üzerinden hızlı sayım yapar.
- `GROUP BY` kullanırken çok fazla grup ve satır varsa performans düşebilir, bu yüzden `WHERE` ile ön filtreleme önerilir.
- `HAVING` ile filtreleme, `GROUP BY` sonrası gerçekleştiği için daha maliyetlidir.

---

## 📚 MSSQL Özel Aggregate Fonksiyonlar

### 1. `STRING_AGG()`
> MSSQL 2017+ ile geldi. Satırları tek bir string olarak birleştirir.

**Örnek:**
```sql
SELECT STRING_AGG(UrunAdi, ', ') AS Urunler
FROM Satislar;
```

### 2. `GROUPING()`, `GROUPING_ID()`
> `ROLLUP` ve `CUBE` gibi gelişmiş gruplamalarda hangi satırın toplama ait olduğunu gösterir.

---

## 🔄 Nested Aggregate

> MSSQL doğrudan iç içe aggregate fonksiyonları desteklemez. Ama alt sorgu (subquery) ile bu sağlanabilir.

**Örnek:**
En çok satış yapan kategorinin toplam satışı:
```sql
SELECT MAX(KategoriToplami) FROM (
    SELECT Kategori, SUM(Tutar) AS KategoriToplami
    FROM Satislar
    GROUP BY Kategori
) AS AltSorgu;
```

---

## 🧾 Özet

| Fonksiyon | Açıklama |
|-----------|----------|
| `SUM()`   | Toplam |
| `AVG()`   | Ortalama |
| `COUNT()` | Sayı |
| `MIN()`   | En küçük değer |
| `MAX()`   | En büyük değer |
| `STRING_AGG()` | Metinleri birleştirir |

---

## Math
```sh

```
---

SQL Server (MSSQL) içinde yer alan **matematiksel fonksiyonlar (Math Functions)**, veriler üzerinde çeşitli matematiksel işlemler yapmak için kullanılır. Bu fonksiyonlar; sayısal verileri yuvarlamak, mutlak değer almak, trigonometrik işlemler yapmak ve logaritmalar, üs alma, kök alma gibi hesaplamalar yapmak için kullanılır.

Aşağıda **çok detaylı** şekilde tüm yerleşik matematiksel fonksiyonları açıklamaları, sözdizimi ve örnekleriyle birlikte paylaşıyorum:

---

## 🔢 MSSQL Matematiksel Fonksiyonlar

| Fonksiyon        | Açıklama                                 |
|------------------|-------------------------------------------|
| `ABS()`          | Mutlak değer                              |
| `CEILING()`      | Yukarıya yuvarlama                        |
| `FLOOR()`        | Aşağıya yuvarlama                         |
| `ROUND()`        | Belirli basamağa yuvarlama                |
| `POWER()`        | Üs alma                                   |
| `SQRT()`         | Karekök alma                              |
| `SQUARE()`       | Sayının karesi                            |
| `LOG()`          | Logaritma (doğal log, e tabanlı)          |
| `LOG10()`        | Logaritma (10 tabanlı)                    |
| `EXP()`          | e sayısının belirtilen kuvveti            |
| `PI()`           | Pi sayısı                                 |
| `RAND()`         | 0 ile 1 arasında rastgele sayı            |
| `SIGN()`         | Sayının işareti (-1, 0, 1)                |
| `DEGREES()`      | Radyanı dereceye çevirir                  |
| `RADIANS()`      | Dereceyi radyana çevirir                  |
| `TRIGONOMETRİ`   | `SIN()`, `COS()`, `TAN()` ve tersleri     |

---

## 📘 Fonksiyonların Açıklamaları ve Örnekleri

### 1. `ABS()` – Mutlak Değer
Negatif sayıyı pozitife çevirir.

```sql
SELECT ABS(-15) AS MutlakDeger;  -- Çıktı: 15
```

---

### 2. `CEILING()` – Yukarı Yuvarlama
Ondalıklı sayıyı yukarı yuvarlar (kesinlikle daha büyük tamsayıya).

```sql
SELECT CEILING(12.3) AS Yukari;  -- Çıktı: 13
```

---

### 3. `FLOOR()` – Aşağı Yuvarlama
Ondalıklı sayıyı aşağı yuvarlar (kesinlikle daha küçük tamsayıya).

```sql
SELECT FLOOR(12.9) AS Asagi;  -- Çıktı: 12
```

---

### 4. `ROUND()` – Ondalık Basamağa Yuvarlama
İkinci parametreyle istediğin basamak sayısına yuvarlar.

```sql
SELECT ROUND(12.3456, 2) AS Yuvarlanmis;  -- Çıktı: 12.35
SELECT ROUND(12.3456, 0) AS Tamsayi;      -- Çıktı: 12
```

---

### 5. `POWER(x, y)` – x^y
Belirtilen sayının kuvvetini alır.

```sql
SELECT POWER(2, 3) AS Us;  -- Çıktı: 8 (2^3)
```

---

### 6. `SQRT()` – Karekök
Pozitif sayının karekökünü döndürür.

```sql
SELECT SQRT(49) AS Karekoku;  -- Çıktı: 7
```

---

### 7. `SQUARE()` – Karesini Alır
Sayının karesini alır (aynı şey: `POWER(x, 2)`)

```sql
SELECT SQUARE(5) AS Kare;  -- Çıktı: 25
```

---

### 8. `LOG()` – Doğal Logaritma (e tabanlı)
Sayının e tabanına göre logaritmasını verir.

```sql
SELECT LOG(10) AS ELog;  -- Çıktı: 2.30258...
```

---

### 9. `LOG10()` – 10 Tabanlı Logaritma
Sayının 10 tabanına göre logaritmasını verir.

```sql
SELECT LOG10(1000) AS Log10;  -- Çıktı: 3
```

---

### 10. `EXP()` – e^x
e sayısının belirtilen kuvvetini alır.

```sql
SELECT EXP(1) AS E_Us_1;  -- Çıktı: 2.7182818
```

---

### 11. `PI()` – Pi Sabiti
Pi sayısını verir (yaklaşık 3.14159).

```sql
SELECT PI() AS PiDegeri;
```

---

### 12. `RAND()` – Rastgele Sayı (0-1 arası)
0 ile 1 arasında rastgele sayı üretir.

```sql
SELECT RAND() AS Rastgele;
SELECT RAND(100) AS SabitRastgele; -- Aynı seed, aynı sonuç
```

---

### 13. `SIGN()` – İşaret Fonksiyonu
Sayının işaretini verir:
- Pozitif → 1
- Negatif → -1
- Sıfır → 0

```sql
SELECT SIGN(10) AS Pozitif, SIGN(-8) AS Negatif, SIGN(0) AS Sifir;
```

---

### 14. `DEGREES()` – Radyanı dereceye çevirir
```sql
SELECT DEGREES(PI()) AS Derece;  -- Çıktı: 180
```

---

### 15. `RADIANS()` – Dereceyi radyana çevirir
```sql
SELECT RADIANS(180) AS Radyan;  -- Çıktı: 3.14159...
```

---

### 16. 📐 Trigonometri Fonksiyonları

| Fonksiyon | Açıklama               |
|-----------|------------------------|
| `SIN(x)`  | Sinüs                  |
| `COS(x)`  | Kosinüs                |
| `TAN(x)`  | Tanjant                |
| `ASIN(x)` | Ark sinüs              |
| `ACOS(x)` | Ark kosinüs            |
| `ATAN(x)` | Ark tanjant            |
| `ATN2(y, x)` | İki eksenli tanjant |

#### Örnek:
```sql
SELECT 
    SIN(RADIANS(30)) AS Sinus_30,
    COS(RADIANS(60)) AS Cosinus_60,
    TAN(RADIANS(45)) AS Tanjant_45;
```

---

## 📌 Bonus: Sıfıra Bölmeyi Önleme (NULL yerine 0 gösterme)

```sql
SELECT 
    CASE 
        WHEN divisor = 0 THEN 0
        ELSE numerator * 1.0 / divisor 
    END AS SafeDivision
FROM TableName;
```

---

## 🧪 İleri Seviye: Matematiksel Fonksiyonlarla Sorgu

```sql
SELECT 
    ProductName,
    ROUND(Amount * 1.18, 2) AS PriceWithTax,
    POWER(Amount, 2) AS Square,
    SQRT(Amount) AS Root
FROM Sales;
```

---

## 🔚 Özet

- Sayı işlemleri: `ABS`, `SIGN`, `ROUND`, `CEILING`, `FLOOR`
- Logaritmalar: `LOG`, `LOG10`, `EXP`
- Üs, kare, karekök: `POWER`, `SQUARE`, `SQRT`
- Trigonometrik: `SIN`, `COS`, `TAN`, `DEGREES`, `RADIANS`
- Sabitler: `PI`, `RAND`

---


## CAST
```sh

```
---
MSSQL'deki `CAST` işlemi, veri tipleri arasında dönüşüm (type conversion) yapmamıza yarar ve SQL programlamada **olmazsa olmaz** bir konudur. Bu konuda seni hiç yarı yolda bırakmayacak kadar **detaylı ve açıklamalı** bir rehber sunuyorum 👇

---

# 🎯 CAST Nedir? Ne İşe Yarar?

`CAST`, bir veri türünü başka bir veri türüne dönüştürmek için kullanılır. Örneğin bir `VARCHAR` türündeki değeri `INT`'e veya `DATETIME` değerini `VARCHAR`'a çevirebilirsin.

> 🔁 Dönüştürülebilir veri türleri arasında işlem yaparken `CAST` ya da `CONVERT` fonksiyonları kullanılır.

---

## 🧠 CAST ile CONVERT Arasındaki Fark

| Özellik             | `CAST()`              | `CONVERT()`                         |
|---------------------|------------------------|--------------------------------------|
| ANSI Standardı      | ✅ Evet                 | ❌ Hayır (T-SQL'e özgü)              |
| Kullanımı           | Daha sade              | Format belirtme seçenekleri var     |
| Tarih format kontrolü | ❌ Yok                | ✅ VAR (style kodları ile)           |

Yani:
- Standart ve taşınabilir kod için `CAST()` kullan.
- Özelleştirilmiş tarih/saat biçimi için `CONVERT()` kullan.

---

# 🧪 CAST Sözdizimi

```sql
CAST(expression AS target_data_type)
```

| Parametre       | Açıklama                                |
|------------------|-------------------------------------------|
| `expression`     | Dönüştürmek istediğin veri                |
| `target_data_type` | Hedef veri tipi (örn: `INT`, `VARCHAR`, `FLOAT`) |

---

## 🔤 CAST ile Sayı -> Yazı (VARCHAR)

```sql
SELECT CAST(12345 AS VARCHAR(10)) AS SayisalMetin;
```
📌 `12345` artık bir metin gibi davranır (örneğin bir cümle içinde birleştirebilirsin).

---

## 🔢 CAST ile Yazı -> Sayı

```sql
SELECT CAST('456' AS INT) AS MetinSayiya;
```

📌 Sadece sayısal değeri olan metinler dönüştürülebilir.  
Aksi takdirde hata alırsın:

```sql
SELECT CAST('abc123' AS INT);  -- HATA verir
```

---

## 📅 CAST ile Tarih -> Metin

```sql
SELECT CAST(GETDATE() AS VARCHAR(50)) AS TarihMetin;
```

📌 Tarih bilgisini metne çevirerek string işlemler yapılabilir (örneğin substring alarak yıl bilgisi çekme gibi).

---

## 🔁 CAST ile Sayı Tipleri Arası Dönüşüm

```sql
SELECT 
    CAST(10 AS FLOAT) AS IntToFloat,
    CAST(12.75 AS INT) AS FloatToInt;
```

📌 Dikkat! `FLOAT` → `INT` dönüşümünde ondalık kısmı **kesilir**, yuvarlanmaz.

```sql
CAST(12.75 AS INT)  --> 12
```

---

## 🔐 CAST ile BIT (True/False) Dönüşümü

```sql
SELECT CAST(1 AS BIT) AS TrueDeger,
       CAST(0 AS BIT) AS FalseDeger;
```

📌 MSSQL'de `BIT` veri tipi 0 veya 1 (false / true) olarak temsil edilir.

---

## 🧮 Gerçek Hayat Örnekleri

### 🔹 1. Sayıları metin olarak birleştirme
```sql
SELECT 'Toplam Fiyat: ' + CAST(1500 AS VARCHAR(10)) + ' TL' AS Aciklama;
```

---

### 🔹 2. Ondalıklı bölme işlemlerinde `CAST` kullanımı
```sql
SELECT CAST(10 AS FLOAT) / 3 AS Sonuc;   -- Çıktı: 3.3333
```

📌 Eğer `INT / INT` yapılırsa sonuç da `INT` olur → 3.0 değil, **3**

---

### 🔹 3. Tarihi yıl olarak çekmek
```sql
SELECT 
    CAST(YEAR(GETDATE()) AS VARCHAR) + '-Yılı' AS YilBilgisi;
```

---

## ⚠️ Hatalı CAST Kullanımı ve Dikkat Edilecekler

### ❌ Örnek: Geçersiz metni sayıya çevirmek
```sql
SELECT CAST('abc' AS INT);  -- HATA: Dönüşüm başarısız
```

### ❌ Örnek: NULL değer dönüşümü
```sql
SELECT CAST(NULL AS INT);   -- NULL döner (hata değil)
```

### ❗ CAST ve `TRY_CAST`
`CAST` hata fırlatırken, `TRY_CAST` dönüşüm başarısızsa NULL döner.

```sql
SELECT TRY_CAST('abc' AS INT) AS Sonuc;  -- NULL
```

---

## 🔁 CAST ile Tablo Üzerinde Uygulama

```sql
SELECT 
    ProductName,
    CAST(UnitPrice AS VARCHAR) + ' TL' AS PriceText
FROM Products;
```

---

## 🧩 CAST + CASE WHEN ile Koşullu Kullanım

```sql
SELECT 
    OrderID,
    CASE 
        WHEN TotalAmount > 1000 THEN CAST(TotalAmount AS VARCHAR) + ' (VIP)' 
        ELSE CAST(TotalAmount AS VARCHAR)
    END AS AmountInfo
FROM Orders;
```

---

## 🧪 CAST ile CREATE TABLE – Tip dönüşüm kontrolü

```sql
CREATE TABLE TestCasting (
    OrjinalDeger VARCHAR(10),
    SayisalDeger AS CAST(OrjinalDeger AS INT)
);
```

---

## 🆚 CAST vs CONVERT

### 🔁 Aynı İşlem, İki Yöntem

```sql
SELECT 
    CAST(GETDATE() AS VARCHAR(20)) AS Tarih1,
    CONVERT(VARCHAR(20), GETDATE(), 104) AS Tarih2;
```

| Kullanım Durumu        | Önerilen |
|------------------------|----------|
| Temel dönüşüm          | `CAST()` |
| Tarih biçimlendirme    | `CONVERT()` |
| ANSI/taşınabilirlik    | `CAST()` |

---

## 🔚 Özetle `CAST` Kullanım Alanları

✅ Sayı → Yazı  
✅ Yazı → Sayı  
✅ Tarih → Metin  
✅ Metin → Tarih  
✅ Float → Int  
✅ Int → Float  
✅ NULL dönüşümü  
✅ Tabloda `AS` kolonlarında hesaplama  
✅ CASE WHEN gibi mantıksal ifadelerde

---

## Cast Örnekler (Mssql [SQL SERVER])
```sh

```
---
### 📌 MSSQL `CAST` Nedir?

`CAST`, SQL Server'da bir veri türünü başka bir veri türüne dönüştürmek için kullanılan bir fonksiyondur. Örneğin, bir `float` değeri `int` yapmak ya da bir sayısal değeri `varchar` (metin) haline getirmek için kullanılır.

### 🔧 Söz Dizimi (Syntax):
```sql
CAST(expression AS target_data_type)
```

---

## 🎯 Örneklerle `CAST` Kullanımı (Northwind Veritabanı ile)

### 1. **Fiyatı (UnitPrice) Metin (VARCHAR) Olarak Getirme**
```sql
SELECT 
    ProductName,
    UnitPrice,
    CAST(UnitPrice AS VARCHAR(20)) AS PriceAsText
FROM Products;
```
📌 Açıklama: `UnitPrice` normalde `money` veya `decimal`. Bunu `VARCHAR`'a dönüştürerek metin gibi işlem yapabiliriz (örneğin birleştirme işlemlerinde).

---

### 2. **Miktarı Tam Sayıya Dönüştürme (`float` → `int`)**
```sql
SELECT 
    ProductName,
    UnitPrice,
    CAST(UnitPrice AS INT) AS RoundedPrice
FROM Products;
```
📌 Açıklama: `CAST` ile fiyatı tam sayıya çeviriyoruz. Virgülden sonrasını atar (yuvarlamaz, keser).

---

### 3. **Tarihi Sadece Yıl Olarak Gösterme**
```sql
SELECT 
    OrderID,
    OrderDate,
    CAST(YEAR(OrderDate) AS VARCHAR(4)) AS OrderYear
FROM Orders;
```
📌 Açıklama: `YEAR()` fonksiyonu ile yılı alıyoruz, `CAST` ile metne çeviriyoruz.

---

### 4. **İndirimli Tutar Hesaplama ve `money` Olarak Dönüştürme**
```sql
SELECT 
    OrderID,
    UnitPrice,
    Quantity,
    Discount,
    CAST((UnitPrice * Quantity * (1 - Discount)) AS MONEY) AS DiscountedTotal
FROM [Order Details];
```
📌 Açıklama: İndirimli fiyatı hesaplayıp sonucu `money` türüne dönüştürüyoruz.

---

### 5. **CustomerID ile Sipariş Sayısı (Sayı → VARCHAR Birleştirme)**
```sql
SELECT 
    CustomerID,
    CAST(COUNT(OrderID) AS VARCHAR) + ' adet sipariş' AS TotalOrders
FROM Orders
GROUP BY CustomerID;
```
📌 Açıklama: `COUNT` sayısını yazıya çevirip metinle birleştiriyoruz.

---

## 🎁 Ekstra: `CAST` ile `CONCAT` Kullanımı
```sql
SELECT 
    ProductName,
    'Fiyat: ' + CAST(UnitPrice AS VARCHAR) + ' $' AS PriceInfo
FROM Products;
```
📌 Açıklama: Sayısal bir değer (UnitPrice), metinle birleştirilmeden önce `CAST` ile dönüştürülmeli.

---




## DATA TYPE (Mssql [SQL SERVER])
```sh

```
---
SQL Server (MSSQL) veri türleri (data types), **bir sütunun hangi türde veri tutacağını** tanımlayan temel yapı taşlarıdır. Doğru veri türünü seçmek, performans, bellek kullanımı, veri bütünlüğü ve doğru sonuçlar açısından hayati öneme sahiptir.

Bu açıklamada tüm **MSSQL veri türlerini kategorilere ayırarak**, **örneklerle**, **açıklamalı**, **derinlemesine** anlatıyorum. Tam bir başvuru kaynağı gibi düşünebilirsin. 📘

---

# 🔢 1. Sayısal Veri Türleri (Numeric Data Types)

| Veri Türü     | Açıklama                              | Bellek (Byte) | Aralık / Detay                       |
|---------------|----------------------------------------|----------------|--------------------------------------|
| `INT`         | Tamsayı                                | 4              | -2,147,483,648 → 2,147,483,647       |
| `BIGINT`      | Çok büyük tamsayı                      | 8              | ±9 katrilyon civarı                  |
| `SMALLINT`    | Küçük tamsayı                          | 2              | -32,768 → 32,767                     |
| `TINYINT`     | En küçük tamsayı (yalnızca pozitif)   | 1              | 0 → 255                              |
| `BIT`         | Boolean değeri (0 / 1)                 | 1              | 0 (false), 1 (true)                  |
| `DECIMAL(p,s)`| Ondalıklı, hassas değerler             | 5-17           | p: toplam basamak, s: ondalık basamak |
| `NUMERIC(p,s)`| DECIMAL ile aynı                      | 5-17           | Aynı                                 |
| `FLOAT(n)`    | Kayan noktalı, yaklaşık değer         | 4 veya 8       | Yaklaşık 15-17 basamak hassasiyet    |
| `REAL`        | FLOAT'un düşük hassasiyetli hali      | 4              | Yaklaşık 7 basamak                   |
| `MONEY`       | Finansal veri türü                    | 8              | ±922 trilyon (4 ondalıklı basamak)   |
| `SMALLMONEY`  | Daha küçük parasal değerler           | 4              | ±214 bin                             |

### 🧪 Örnek:
```sql
DECLARE @x DECIMAL(8,2) = 12345.67;  -- Maksimum 8 basamak, 2’si ondalıklı
```

---

# 🔤 2. Karakter ve Metin Veri Türleri (Character and String Data Types)

| Veri Türü       | Açıklama                            | Maks. Uzunluk         | Unicode |
|------------------|--------------------------------------|------------------------|---------|
| `CHAR(n)`        | Sabit uzunluklu karakter dizisi     | 1 → 8000               | ❌      |
| `VARCHAR(n)`     | Değişken uzunluklu metin            | 1 → 8000 (ya da MAX)   | ❌      |
| `VARCHAR(MAX)`   | 2 GB’ye kadar metin                 | 2^31 -1 karakter       | ❌      |
| `NCHAR(n)`       | Unicode, sabit uzunluklu metin      | 1 → 4000               | ✅      |
| `NVARCHAR(n)`    | Unicode, değişken uzunluklu         | 1 → 4000 (ya da MAX)   | ✅      |
| `NVARCHAR(MAX)`  | 2 GB’ye kadar Unicode metin         | 2^30 karakter          | ✅      |
| `TEXT` (eski)     | Büyük metin alanı                   | 2 GB                   | ❌      |
| `NTEXT` (eski)    | Unicode büyük metin                 | 2 GB                   | ✅      |

⚠️ `TEXT` ve `NTEXT` artık **kullanımdan kaldırılmıştır**, yerine `VARCHAR(MAX)` ve `NVARCHAR(MAX)` kullanılır.

### 🧪 Örnek:
```sql
DECLARE @ad NVARCHAR(50) = N'Ahmet Yılmaz';
```

---

# 📅 3. Tarih ve Saat Veri Türleri (Date and Time Data Types)

| Veri Türü         | Açıklama                         | Kapsam/Tarih Aralığı                       |
|--------------------|-----------------------------------|--------------------------------------------|
| `DATE`             | Yalnızca tarih (YYYY-MM-DD)      | 0001-01-01 → 9999-12-31                     |
| `TIME(p)`          | Yalnızca saat                    | 00:00:00.0000000 → 23:59:59.9999999         |
| `DATETIME`         | Tarih + Saat (standart)          | 1753-01-01 → 9999-12-31 (ms hassasiyet)     |
| `SMALLDATETIME`    | Daha düşük hassasiyetli          | 1900-01-01 → 2079-06-06 (1 dakika hassas)   |
| `DATETIME2(p)`     | Yeni nesil DATETIME              | 0001-01-01 → 9999-12-31 (100 ns hassas)     |
| `DATETIMEOFFSET(p)`| Zaman dilimi içerir              | +00:00 / -14:00 arası UTC offset desteği    |

### 🧪 Örnek:
```sql
DECLARE @tarih DATETIME = GETDATE();
DECLARE @saat TIME = SYSDATETIME();
```

---

# 🧮 4. Binary (İkili) Veri Türleri

| Veri Türü        | Açıklama                              |
|------------------|----------------------------------------|
| `BINARY(n)`      | Sabit uzunlukta ikili veri (n byte)   |
| `VARBINARY(n)`   | Değişken uzunlukta ikili veri         |
| `VARBINARY(MAX)` | Büyük dosya, resim, belge tutabilir   |
| `IMAGE`          | Eskiden resim için kullanılırdı (eski) |

⚠️ `IMAGE` artık `VARBINARY(MAX)` ile değiştirilmiştir.

### 🧪 Örnek:
```sql
DECLARE @dosya VARBINARY(MAX);
```

---

# ✅ 5. Diğer Özel Veri Türleri

### 📛 ID / Unik Tanımlayıcılar

| Veri Türü   | Açıklama                            |
|-------------|--------------------------------------|
| `UNIQUEIDENTIFIER` | GUID değeri (36 karakterlik benzersiz id) |

```sql
DECLARE @id UNIQUEIDENTIFIER = NEWID();
```

---

### 💾 CURSOR

| Veri Türü   | Açıklama                       |
|-------------|-------------------------------|
| `CURSOR`    | Teker teker satır gezmek için |

---

### 🎛️ TABLE (Değişken Tablolar)

```sql
DECLARE @MyTable TABLE (
  ID INT,
  Name NVARCHAR(100)
);
```

---

### 📦 SQL_VARIANT

| Veri Türü     | Açıklama                          |
|---------------|------------------------------------|
| `SQL_VARIANT` | Aynı sütunda farklı türlerde veri |

---

### 🔢 HIERARCHYID

| Veri Türü   | Açıklama                          |
|-------------|------------------------------------|
| `HIERARCHYID` | Ağaç yapıları, hiyerarşik veri için |

---

### 🌐 GEOGRAPHY / GEOMETRY

| Veri Türü   | Açıklama                                 |
|-------------|-------------------------------------------|
| `GEOGRAPHY` | Dünya üzerindeki koordinatlarla çalışır  |
| `GEOMETRY`  | 2B düzlemde noktalar, çizgiler, şekiller |

---

# 🔁 Dönüştürülebilirlik ve Uyum

- Bazı veri türleri birbiriyle **uyumlu** çalışır (örneğin `INT` ↔ `DECIMAL`)
- Bazı dönüşümler **veri kaybına** neden olabilir (örn: `FLOAT → INT`)
- `CAST()` ve `CONVERT()` bu dönüşümler için kullanılır

---

## 🎯 Hangi Durumda Hangi Veri Tipi Seçilmeli?

| Durum                              | En Uygun Veri Tipi           |
|------------------------------------|-------------------------------|
| Sayısal ID                         | `INT` (küçük veri için `SMALLINT`) |
| Yüksek performanslı büyük sayı     | `BIGINT`                      |
| Finansal hesaplama                 | `DECIMAL(18,2)` veya `MONEY`  |
| Uzun metin (makale, açıklama vb.) | `VARCHAR(MAX)` / `NVARCHAR(MAX)` |
| Kısa metin (isim, e-posta)        | `VARCHAR(50)`                 |
| Tarih + saat bilgisi               | `DATETIME2`                   |
| Saat bilgisi                       | `TIME`                        |
| Yalnızca tarih                     | `DATE`                        |
| Benzersiz kimlik                  | `UNIQUEIDENTIFIER`            |

---

# 📚 MSSQL Veri Türleri Özet Tablosu

| Kategori         | Örnek Veri Tipleri                              |
|------------------|--------------------------------------------------|
| Sayısal          | `INT`, `BIGINT`, `DECIMAL`, `FLOAT`, `BIT`     |
| Metin            | `CHAR`, `VARCHAR`, `NVARCHAR`, `TEXT`           |
| Tarih/Zaman      | `DATE`, `TIME`, `DATETIME`, `DATETIME2`         |
| Binary           | `VARBINARY`, `IMAGE`                            |
| Özel             | `UNIQUEIDENTIFIER`, `SQL_VARIANT`, `TABLE`     |
| Coğrafi          | `GEOGRAPHY`, `GEOMETRY`, `HIERARCHYID`          |

---



## DATE (TARIH)
```sh

```
---
SQL Server'da (MSSQL) tarih işlemleri veri yönetiminin kalbidir. Gerek finansal işlemler, gerekse kullanıcı aktiviteleri, kayıt tarihleri veya raporlamalar gibi konuların tamamında **tarih (date/time) işlemleri** kaçınılmazdır.

Bu cevapta, MSSQL'de **DATE** veri türünü ve genel olarak **tarih-saat veri türlerini**, bu türlerle yapılabilecek işlemleri, fonksiyonları, dönüşümleri ve pratik örnekleri **çok detaylı** şekilde açıklayacağım. 🚀

---

# 📅 1. MSSQL'de DATE Nedir?

`DATE`, SQL Server’da sadece **tarih bilgisini (gün/ay/yıl)** saklayan veri türüdür. Saat bilgisi içermez.

---

## 🔍 Sözdizimi (Syntax)
```sql
DATE
```

---

## 📌 Özellikler

| Özellik            | Değer                                  |
|--------------------|-----------------------------------------|
| Biçim (format)     | `YYYY-MM-DD` (ISO 8601)                |
| Sakladığı veri     | Sadece **tarih** (saat içermez)        |
| Tarih aralığı      | `0001-01-01` → `9999-12-31`            |
| Bellek kullanımı   | 3 byte                                 |
| Saat bilgisi       | ❌ Yok (sadece tarih)                   |

---

## 🧪 Örnek Kullanım
```sql
DECLARE @dogumTarihi DATE = '1995-06-15';
SELECT @dogumTarihi;
```

---

# 🧭 2. MSSQL Tarih Veri Türlerinin Karşılaştırması

| Veri Türü         | Açıklama                        | Tarih | Saat | Hassasiyet |
|--------------------|----------------------------------|-------|------|-------------|
| `DATE`             | Sadece tarih                    | ✅    | ❌   | Gün         |
| `TIME`             | Sadece saat                     | ❌    | ✅   | 100ns       |
| `DATETIME`         | Tarih + saat                    | ✅    | ✅   | ~3ms        |
| `SMALLDATETIME`    | Kısıtlı tarih + saat            | ✅    | ✅   | 1 dakika    |
| `DATETIME2`        | Gelişmiş tarih + saat           | ✅    | ✅   | 100ns       |
| `DATETIMEOFFSET`   | Saat dilimi içeren timestamp    | ✅    | ✅   | 100ns       |

---

# 🧩 3. DATE Veri Türü Nerede Kullanılır?

- Doğum tarihi, işe başlama tarihi gibi **yalnızca tarihin** önemli olduğu alanlarda
- Zaman diliminin ya da saat hassasiyetinin **önemli olmadığı** sistemlerde
- Raporlama, filtreleme, grup bazlı tarih işlemlerinde

---

# ⏱️ 4. MSSQL'de Tarih Fonksiyonları

Aşağıdaki fonksiyonların çoğu `DATE`, `DATETIME`, `DATETIME2` gibi tüm zamanlı veri türlerinde çalışır.

---

## 🎯 a. GETDATE() – Şu anki tarih + saat
```sql
SELECT GETDATE() AS TarihSaat;  -- Örnek: 2025-03-21 15:42:00.777
```

## 🕰️ b. CAST GETDATE() AS DATE → Sadece tarihi al
```sql
SELECT CAST(GETDATE() AS DATE) AS SadeceTarih;  -- Çıktı: 2025-03-21
```

## 📆 c. CURRENT_TIMESTAMP – GETDATE() ile aynıdır
```sql
SELECT CURRENT_TIMESTAMP;
```

## 📅 d. SYSDATETIME() – Daha hassas timestamp
```sql
SELECT SYSDATETIME();  -- Nanosecond hassasiyet
```

---

# 📚 5. Sık Kullanılan Tarih Fonksiyonları

| Fonksiyon           | Açıklama                                |
|---------------------|------------------------------------------|
| `GETDATE()`         | Sunucu saatine göre tarih + saat         |
| `SYSDATETIME()`     | Yüksek hassasiyetli tarih + saat         |
| `CAST(... AS DATE)` | Sadece tarih kısmını alır                |
| `YEAR()`, `MONTH()`, `DAY()` | Yıl, ay, gün ayrıştırır       |
| `DATEPART(part, tarih)` | Belirli kısmı (örn: yıl, hafta)      |
| `DATEDIFF(part, başlangıç, bitiş)` | İki tarih arası fark     |
| `EOMONTH(tarih)`    | Ayın son gününü verir                    |
| `DATEADD(part, sayı, tarih)` | Tarihe zaman ekler/çıkarır     |
| `FORMAT(tarih, 'yyyy-MM-dd')` | Tarihi biçimlendirir          |

---

## 🧪 Örneklerle

### 🎯 Yıl, Ay, Gün alma
```sql
SELECT 
    YEAR(GETDATE()) AS Yil,
    MONTH(GETDATE()) AS Ay,
    DAY(GETDATE()) AS Gun;
```

### 📆 Tarihe gün/ay/yıl ekleme
```sql
SELECT 
    DATEADD(DAY, 5, GETDATE()) AS BesGunSonra,
    DATEADD(YEAR, -1, GETDATE()) AS GecenYil;
```

### 🔁 İki tarih arasındaki fark
```sql
SELECT DATEDIFF(DAY, '2023-01-01', '2025-01-01') AS GunFarki;
```

### 📅 Ayın son günü
```sql
SELECT EOMONTH(GETDATE()) AS AyinSonu;
```

---

# 🔍 6. DATE ile Filtreleme Örnekleri

### 🔸 Belirli tarihten büyük kayıtları seç
```sql
SELECT * FROM Orders
WHERE OrderDate > '2024-01-01';
```

### 🔸 Aynı güne ait kayıtları çek (saat bilgisi yok sayılarak)
```sql
-- OrderDate bir DATETIME ise:
SELECT * FROM Orders
WHERE CAST(OrderDate AS DATE) = '2025-03-21';
```

---

# 🧮 7. DATE ile Formatlama

SQL Server 2012 ve sonrasında `FORMAT()` fonksiyonu ile özelleştirme yapılabilir:

```sql
SELECT FORMAT(GETDATE(), 'dd.MM.yyyy') AS TurkiyeFormat;
SELECT FORMAT(GETDATE(), 'yyyy/MM/dd') AS ISOFormat;
```

---

# 🚨 8. Dikkat Edilmesi Gerekenler

| Durum                                    | Açıklama                                           |
|------------------------------------------|----------------------------------------------------|
| Saat bilgisi yoktur                      | Sadece yıl, ay ve gün içerir                      |
| Saatli değerle karşılaştırırken dikkat   | `DATETIME` ile karşılaştırmalarda `CAST` gerekebilir |
| `VARCHAR` dönüşümlerinde format önemli   | `CAST()` veya `CONVERT()` ile doğru format sağlanmalı |
| Performans                               | `DATE` alanı küçük boyutludur, indeks dostudur     |

---

# 📌 9. Gerçek Hayat Kullanım Senaryoları

### 🔹 Doğum tarihi saklama
```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    FullName NVARCHAR(100),
    BirthDate DATE
);
```

### 🔹 Raporlama: Son 7 gün
```sql
SELECT * FROM Logs
WHERE LogDate >= DATEADD(DAY, -7, CAST(GETDATE() AS DATE));
```

### 🔹 Yıllık raporlama
```sql
SELECT 
    YEAR(OrderDate) AS Yil, 
    COUNT(*) AS SiparisSayisi
FROM Orders
GROUP BY YEAR(OrderDate);
```

---

# 📚 10. SQL Server'da Tarih Format Kodları (`CONVERT`)

| Style | Format            | Açıklama         |
|-------|-------------------|------------------|
| 101   | mm/dd/yyyy        | ABD formatı      |
| 103   | dd/mm/yyyy        | İngiltere formatı |
| 104   | dd.mm.yyyy        | Alman formatı    |
| 112   | yyyymmdd          | ISO formatı      |

```sql
SELECT CONVERT(VARCHAR, GETDATE(), 104) AS AlmancaFormat;
```

---

# 🔚 Özet

- `DATE`, MSSQL'de sadece tarihi tutmak için kullanılır (saat içermez).
- `GETDATE()` ve `SYSDATETIME()` fonksiyonlarıyla birlikte kullanılır.
- `CAST()` ile saatten ayrıştırılabilir.
- `DATEADD`, `DATEDIFF`, `FORMAT`, `YEAR`, `MONTH`, `DAY` gibi fonksiyonlarla birlikte kullanılarak tarih işlemleri yapılabilir.
- Performans açısından çok uygundur.
- Raporlamalarda, kayıt filtrelemelerinde, zaman aralığı analizlerinde çok sık kullanılır.

---


## STRING
```sh

```
---
 **MSSQL'de (Microsoft SQL Server) String (Metin) Veri Tipi ve String işlemleri** hakkında **çok detaylı, kapsamlı ve örnekli** bir açıklama bulacaksınız. Hiçbir kelime kısıtlaması olmadan, temel tanımdan ileri seviye fonksiyonlara kadar her şeyi içerecek şekilde hazırlanmıştır.

---

# 📌 MSSQL’de **String (Metin)** Nedir?

MSSQL’de **String (metin)**; harf, rakam, sembol veya özel karakterlerden oluşan veri tipidir. İsim, adres, açıklama, e-posta gibi karakter tabanlı bilgiler **string** olarak saklanır. SQL Server, string ifadeler için çeşitli **veri tipleri** ve **fonksiyonlar** sağlar.

---

## 🔹 MSSQL String Veri Tipleri

MSSQL’de string’ler farklı türlerde tanımlanabilir. İşte en yaygın kullanılan string veri tipleri:

| Veri Tipi | Açıklama |
|-----------|----------|
| `CHAR(n)` | Sabit uzunluklu string. Her zaman `n` karakterlik yer kaplar. Eksik kalan boşluklarla doldurulur. Performans açısından hızlıdır ama yer israfı olabilir. |
| `VARCHAR(n)` | Değişken uzunluklu string. Maksimum `n` karaktere kadar saklar. Boş karakterleri saklamaz, alan tasarrufu sağlar. |
| `TEXT` | Büyük metin verilerini saklamak için kullanılır (maksimum 2 GB’a kadar). **Deprecated** (kaldırılacak), artık yerine `VARCHAR(MAX)` kullanılır. |
| `NCHAR(n)` | Unicode sabit uzunluklu string. Her karakter için 2 byte yer kullanır. |
| `NVARCHAR(n)` | Unicode değişken uzunluklu string. Çok dilli sistemlerde önerilir. `VARCHAR`’dan farkı Unicode desteğidir. |
| `NVARCHAR(MAX)` / `VARCHAR(MAX)` | 2 GB’a kadar değişken uzunluklu veri saklayabilir. Büyük metin verileri için idealdir. |

### Örnek:
```sql
CREATE TABLE Kullanici (
    id INT,
    ad VARCHAR(50),
    soyad NVARCHAR(50),
    aciklama TEXT
);
```

---

## 🔹 MSSQL’de String Literalleri

Metin değerleri tek tırnak `'` içinde tanımlanır.

```sql
SELECT 'Merhaba Dünya' AS Mesaj;
```

Unicode metin için `N` öneki kullanılır:

```sql
SELECT N'İstanbul' AS Sehir;
```

---

## 🔹 MSSQL String Fonksiyonları (ÇOK DETAYLI)

Aşağıda MSSQL'deki en sık kullanılan string fonksiyonları ve açıklamaları yer alır.

---

### 🔸 1. `LEN(string)`
String’in karakter uzunluğunu döner. **Boşlukları saymaz.**

```sql
SELECT LEN('Merhaba') AS Uzunluk; -- 7
```

---

### 🔸 2. `DATALENGTH(string)`
Verinin **bayt** olarak uzunluğunu verir. Boşluklar dahil edilir.

```sql
SELECT DATALENGTH('Merhaba') AS BaytUzunlugu; -- 7
SELECT DATALENGTH(N'Merhaba') AS BaytUzunlugu; -- 14
```

---

### 🔸 3. `LEFT(string, n)` ve `RIGHT(string, n)`
Metnin solundan veya sağından `n` karakter alır.

```sql
SELECT LEFT('Merhaba', 3);  -- 'Mer'
SELECT RIGHT('Merhaba', 2); -- 'ba'
```

---

### 🔸 4. `SUBSTRING(string, start, length)`
Metnin belirli bir konumundan itibaren `length` kadar karakter alır.

```sql
SELECT SUBSTRING('Merhaba Dünya', 9, 5); -- 'Dünya'
```

---

### 🔸 5. `CHARINDEX(substring, string)`
Bir alt string’in başlangıç konumunu verir.

```sql
SELECT CHARINDEX('a', 'Merhaba'); -- 4
```

---

### 🔸 6. `PATINDEX('%pattern%', string)`
Pattern’in başladığı yeri döner. `LIKE` ile benzerlik gösterir.

```sql
SELECT PATINDEX('%ba%', 'Merhaba'); -- 6
```

---

### 🔸 7. `REPLACE(string, eski, yeni)`
Belirli bir alt string’i başka bir string ile değiştirir.

```sql
SELECT REPLACE('Merhaba Dünya', 'a', '*'); -- 'Merh*b* Düny*'
```

---

### 🔸 8. `REPLICATE(string, n)`
Bir string’i `n` kadar tekrar eder.

```sql
SELECT REPLICATE('*', 5); -- '*****'
```

---

### 🔸 9. `REVERSE(string)`
String’i tersine çevirir.

```sql
SELECT REVERSE('Merhaba'); -- 'abahreM'
```

---

### 🔸 10. `LTRIM(string)` ve `RTRIM(string)`
Başındaki (`LTRIM`) veya sonundaki (`RTRIM`) boşlukları siler.

```sql
SELECT LTRIM('   Merhaba'); -- 'Merhaba'
SELECT RTRIM('Merhaba   '); -- 'Merhaba'
```

---

### 🔸 11. `UPPER(string)` ve `LOWER(string)`
Tüm harfleri büyük (`UPPER`) veya küçük (`LOWER`) yapar.

```sql
SELECT UPPER('merhaba'); -- 'MERHABA'
SELECT LOWER('MERHABA'); -- 'merhaba'
```

---

### 🔸 12. `FORMAT(value, format_string)`
Sayısal ya da tarihsel verileri belirli bir biçimde string olarak döner.

```sql
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd') AS Tarih;
```

---

### 🔸 13. `STRING_AGG(expression, delimiter)`
SQL Server 2017+ ile gelen, birden fazla string’i gruplu şekilde birleştirmek için kullanılır.

```sql
SELECT STRING_AGG(ad, ', ') AS Adlar
FROM Ogrenciler;
```

---

### 🔸 14. `CONCAT(...)`
Verilen tüm stringleri güvenli biçimde birleştirir. Null varsa bile birleştirme devam eder.

```sql
SELECT CONCAT(ad, ' ', soyad) AS TamAd
FROM Ogrenciler;
```

---

## 🔹 MSSQL’de String Karşılaştırmaları

String ifadeleri karşılaştırırken **büyük/küçük harf duyarlılığı**, **kültür** (collation) gibi faktörler önemlidir.

```sql
SELECT * FROM Kisiler
WHERE ad = 'ahmet';  -- Duyarlı mı değil mi? COLLATE ayarına bağlıdır.
```

### Karakter karşılaştırmalarında `COLLATE` kullanılabilir:

```sql
SELECT * FROM Kisiler
WHERE ad COLLATE Latin1_General_CS_AS = 'Ahmet'; -- Case Sensitive (büyük/küçük fark var)
```

---

## 🔹 Unicode ve Çok Dilli Destek

- `NCHAR`, `NVARCHAR`, `NVARCHAR(MAX)` veri tipleri Unicode karakterleri destekler.
- Çok dilli uygulamalarda `NVARCHAR` kullanmak önerilir.

```sql
CREATE TABLE Diller (
    id INT,
    cumle NVARCHAR(100)
);

INSERT INTO Diller VALUES (1, N'你好'), (2, N'مرحبا'), (3, N'שלום');
```

---

## 🔹 SQL ile String Manipülasyonu – İleri Seviye Örnekler

### 1. String Bölme (`STRING_SPLIT` - SQL Server 2016+)
```sql
SELECT value 
FROM STRING_SPLIT('elma,armut,çilek', ',');
```

### 2. Dinamik cümle kurma:
```sql
SELECT 'Sayın ' + ad + ' ' + soyad + ', kaydınız tamamlandı.'
FROM Musteriler;
```

### 3. Bir alanda e-posta kontrolü
```sql
SELECT *
FROM Kullanici
WHERE email LIKE '%@%.%';
```

---

## 🔹 Sık Yapılan Hatalar ve Dikkat Edilmesi Gerekenler

- **VARCHAR ile NVARCHAR** farkı: Unicode karakter kullanıyorsan `N` öneki ve `NVARCHAR` kullanmalısın.
- **Boşluklar:** `LEN()` boşlukları saymaz ama `DATALENGTH()` sayar.
- **NULL ile + işareti:** `NULL + 'text'` işlemi `NULL` döner. Ama `CONCAT()` null’ları yönetir.
- **CASE SENSITIVITY:** Collation’a göre eşleştirme duyarlı veya duyarsız olabilir.

---

## 📌 Özetle

| Konu | Açıklama |
|------|----------|
| Veri Tipleri | `VARCHAR`, `CHAR`, `NVARCHAR`, `TEXT`, `NCHAR` |
| Fonksiyonlar | `LEN`, `SUBSTRING`, `REPLACE`, `CONCAT`, `STRING_AGG`, `LEFT`, `RIGHT`, `REVERSE`, `FORMAT`, `UPPER`, `LOWER`, vs. |
| Unicode | Çok dilli içerikler için `NVARCHAR` kullanılır. |
| Performans | `VARCHAR` disk alanı tasarrufu sağlar, `CHAR` performanslıdır ama sabittir. |
| Null Yönetimi | `+` yerine `CONCAT()` önerilir. |
| Yeni Özellikler | SQL Server 2016+ ile gelen `STRING_SPLIT`, `STRING_AGG` gibi fonksiyonlar önemlidir. |

---




## DML
```sh

```
---
# **MS SQL (RDBMS) DML (Data Manipulation Language - Veri İşleme Dili) Nedir? (Detaylı Anlatım ve Örnekler)**

## **1. DML (Data Manipulation Language) Nedir?**
**DML (Veri İşleme Dili - Data Manipulation Language)**, SQL'de veritabanındaki **mevcut verileri değiştirmek, eklemek, silmek ve güncellemek** için kullanılan bir alt dildir. **DML, doğrudan veritabanındaki verileri etkiler ve genellikle DQL (SELECT) ile birlikte kullanılır**.

DML, **MS SQL Server gibi İlişkisel Veritabanı Yönetim Sistemleri (RDBMS - Relational Database Management Systems)** için oldukça önemli bir bileşendir. Veritabanında veriler **DML komutları** ile dinamik olarak işlenir.

---

DQL (Data Query Language)	Veriyi sorgulamak ve getirmek (SELECT)
DML (Data Manipulation Language)	Veri ekleme, güncelleme, silme (INSERT, UPDATE, DELETE)
DDL (Data Definition Language)	Tabloları, şemaları tanımlama (CREATE, ALTER, DROP)
DCL (Data Control Language)	Kullanıcı yetkilendirmeleri (GRANT, REVOKE)
TCL (Transaction Control Language)	İşlemleri yönetme (COMMIT, ROLLBACK, SAVEPOINT)

## **2. DML Komutları**
MS SQL Server'da DML, **veritabanındaki verileri değiştirmek için kullanılan dört temel komuttan** oluşur:

| **DML Komutu** | **Açıklama** |
|--------------|-----------------------------|
| **`INSERT`** | Yeni kayıt ekler |
| **`UPDATE`** | Mevcut kayıtları günceller |
| **`DELETE`** | Kayıtları siler |
| **`MERGE`** | Bir tabloya yeni kayıt ekleyebilir, mevcut kayıtları güncelleyebilir veya silebilir |

---

## **3. DML Komutlarının Kullanımı**
Aşağıda her DML komutunu detaylı bir şekilde ele alacağız.

---

## **3.1. `INSERT` ile Veri Ekleme**
**INSERT**, bir tabloya yeni bir satır eklemek için kullanılır.

### **Temel Kullanım**
```sql
INSERT INTO Musteriler (MusteriID, Ad, Soyad, Sehir, Telefon) 
VALUES (1, 'Ali', 'Yılmaz', 'İstanbul', '05555555555');
```
Bu komut, **Musteriler** tablosuna yeni bir müşteri ekler.

---

### **Tüm Sütunlara Değer Eklemek**
```sql
INSERT INTO Musteriler 
VALUES (2, 'Ayşe', 'Kaya', 'Ankara', '05444444444');
```
Burada **tüm sütunlara değer atanmalıdır**. Eğer bir sütunu boş bırakmak istiyorsak, **NULL veya DEFAULT değerini kullanmalıyız**.

---

### **Birden Fazla Kayıt Ekleme**
```sql
INSERT INTO Musteriler (MusteriID, Ad, Soyad, Sehir, Telefon)
VALUES 
(3, 'Mehmet', 'Demir', 'İzmir', '05333333333'),
(4, 'Zeynep', 'Arslan', 'Bursa', '05222222222');
```
Bu komut **Musteriler** tablosuna **birden fazla kayıt ekler**.

---

### **SELECT ile Veri Ekleyerek Kopyalama**
```sql
INSERT INTO MusteriYedek (MusteriID, Ad, Soyad, Sehir, Telefon)
SELECT MusteriID, Ad, Soyad, Sehir, Telefon FROM Musteriler;
```
Bu komut, **Musteriler tablosundaki verileri MusteriYedek tablosuna kopyalar**.

---

## **3.2. `UPDATE` ile Veri Güncelleme**
**UPDATE**, mevcut kayıtları değiştirmek için kullanılır.

### **Temel Kullanım**
```sql
UPDATE Musteriler 
SET Sehir = 'İzmir' 
WHERE MusteriID = 1;
```
Bu komut, **MusteriID = 1 olan müşterinin şehrini "İzmir" olarak değiştirir**.

---

### **Birden Fazla Sütunu Güncelleme**
```sql
UPDATE Musteriler 
SET Sehir = 'Antalya', Telefon = '05000000000' 
WHERE Ad = 'Ayşe' AND Soyad = 'Kaya';
```
Bu komut, **adı "Ayşe" ve soyadı "Kaya" olan müşterinin şehrini "Antalya", telefonunu "05000000000" olarak günceller**.

---

### **Tüm Kayıtları Güncelleme**
```sql
UPDATE Musteriler 
SET Sehir = 'Türkiye';
```
**DİKKAT:** `WHERE` kullanmazsanız, **tablodaki tüm kayıtlar güncellenir**. Bu komut, **tüm müşterilerin "Sehir" sütununu "Türkiye" olarak değiştirir**.

---

## **3.3. `DELETE` ile Veri Silme**
**DELETE**, belirli bir kriteri sağlayan verileri silmek için kullanılır.

### **Temel Kullanım**
```sql
DELETE FROM Musteriler WHERE MusteriID = 3;
```
Bu komut, **MusteriID = 3 olan müşteriyi siler**.

---

### **Koşullu Silme**
```sql
DELETE FROM Musteriler WHERE Sehir = 'Ankara';
```
Bu komut, **Ankara'da bulunan tüm müşterileri siler**.

---

### **Tüm Kayıtları Silme (`TRUNCATE` Alternatif)**
```sql
DELETE FROM Musteriler;
```
Bu komut, **Musteriler tablosundaki tüm verileri siler** ama tablo yapısını korur.

> **Not:** Eğer tüm verileri hızla silmek istiyorsanız, `TRUNCATE TABLE Musteriler;` kullanabilirsiniz. Ancak `TRUNCATE`, `DELETE` komutundan farklı olarak **geri alınamaz (ROLLBACK çalışmaz).**

---

## **3.4. `MERGE` ile Birleştirme ve Koşullu Veri İşleme**
`MERGE` komutu, bir tabloya veri eklemek, güncellemek veya silmek için kullanılır.

### **MERGE Kullanımı**
```sql
MERGE INTO Musteriler AS hedef
USING MusteriGuncel AS kaynak
ON hedef.MusteriID = kaynak.MusteriID
WHEN MATCHED THEN
    UPDATE SET hedef.Telefon = kaynak.Telefon
WHEN NOT MATCHED THEN
    INSERT (MusteriID, Ad, Soyad, Sehir, Telefon)
    VALUES (kaynak.MusteriID, kaynak.Ad, kaynak.Soyad, kaynak.Sehir, kaynak.Telefon)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE;
```
- Eğer `MusteriGuncel` tablosundaki `MusteriID` **Musteriler** tablosunda varsa, `Telefon` sütununu günceller.
- Eğer `MusteriGuncel` tablosundaki bir müşteri **Musteriler** tablosunda yoksa, onu ekler.
- Eğer `Musteriler` tablosunda ama `MusteriGuncel` tablosunda olmayan kayıtlar varsa, onları siler.

---

## **4. DML Komutlarında Transaction (İşlem Kontrolü)**
DML komutları doğrudan **veritabanında değişiklik yapar**, ancak **bazı durumlarda hatalı işlemleri geri almak (rollback) için transaction kullanmak gerekir**.

### **Transaction Kullanımı**
```sql
BEGIN TRANSACTION;

UPDATE Musteriler 
SET Sehir = 'Eskişehir' 
WHERE MusteriID = 2;

-- Eğer hatasızsa işlemi kaydet
COMMIT;

-- Eğer hata olursa geri al
-- ROLLBACK;
```
Bu komut, eğer güncelleme işlemi sorunsuz gerçekleşirse `COMMIT` ile değişiklikleri kalıcı hale getirir. Bir hata olursa, `ROLLBACK` ile işlemi geri alır.

---

## **5. Sonuç**
- **DML (Data Manipulation Language)**, SQL’de verileri değiştirmek için kullanılan bir alt dildir.
- **INSERT** → Yeni veri ekler.
- **UPDATE** → Mevcut verileri değiştirir.
- **DELETE** → Verileri siler.
- **MERGE** → Birden fazla işlemi tek seferde gerçekleştirir.
- **DML işlemleri ROLLBACK ve COMMIT ile yönetilebilir.**
- **MS SQL Server gibi RDBMS sistemlerinde veri işleme işlemleri için kritik öneme sahiptir.**

📌 **DML komutlarını etkin kullanmak, veritabanı yönetimi için hayati önem taşır!** 🚀



## DDL
```sh

```
---
DQL (Data Query Language)	Veriyi sorgulamak ve getirmek (SELECT)
DML (Data Manipulation Language)	Veri ekleme, güncelleme, silme (INSERT, UPDATE, DELETE)
DDL (Data Definition Language)	Tabloları, şemaları tanımlama (CREATE, ALTER, DROP)
DCL (Data Control Language)	Kullanıcı yetkilendirmeleri (GRANT, REVOKE)
TCL (Transaction Control Language)	İşlemleri yönetme (COMMIT, ROLLBACK, SAVEPOINT)




## DCL:
```sh
DCL: Data Control Language [Veri Kontol Dili (GRANT, REVOKE)]
```
---


## TCL
```sh
TCL: Transaction Control Language [Veri İşlem Dili (TRANSACTION)]
 
```
---



## Transaction
```sh

```
---

## Relation
```sh

```
---

## Storage Procudure
```sh

```
---

## NF
```sh

```
---



## View
```sh

```
---




## Trigger
```sh

```
---


## Mssql
```sh 
```


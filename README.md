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


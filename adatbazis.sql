CREATE DATABASE konyvek_db utf8mb4_hungarian_ci;
USE konyvek_db;

CREATE TABLE konyvek (
    id INT NOT NULL AUTO_INCREMENT,
    cim VARCHAR(60) NOT NULL,
    szerzo VARCHAR(40) NOT NULL,
    orszag VARCHAR(25) NOT NULL,
    mufaj VARCHAR(25) NOT NULL,
    kiadasi_ev INT NOT NULL,
    oldalszam INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO konyvek (id, cim, szerzo, orszag, mufaj, kiadasi_ev, oldalszam) VALUES
(1,'Egri csillagok','Gárdonyi Géza','Magyarország','történelmi regény',1901,520),
(2,'A Pál utcai fiúk','Molnár Ferenc','Magyarország','ifjúsági regény',1906,240),
(3,'Az arany ember','Jókai Mór','Magyarország','regény',1872,400),
(4,'Abigél','Szabó Magda','Magyarország','ifjúsági regény',1970,400),
(5,'Légy jó mindhalálig','Móricz Zsigmond','Magyarország','regény',1920,200),
(6,'Sorstalanság','Kertész Imre','Magyarország','regény',1975,280),
(7,'Az ajtó','Szabó Magda','Magyarország','regény',1987,270),
(8,'Tüskevár','Fekete István','Magyarország','ifjúsági regény',1957,330),
(9,'Szent Péter esernyője','Mikszáth Kálmán','Magyarország','regény',1895,300),
(10,'A kőszívű ember fiai','Jókai Mór','Magyarország','történelmi regény',1869,500),
(11,'Harry Potter és a bölcsek köve','J. K. Rowling','Egyesült Királyság','fantasy',1997,330),
(12,'A Gyűrűk Ura','J. R. R. Tolkien','Egyesült Királyság','fantasy',1954,1200),
(13,'A hobbit','J. R. R. Tolkien','Egyesült Királyság','fantasy',1937,300),
(14,'A kis herceg','Antoine de Saint-Exupéry','Franciaország','mese',1943,100),
(15,'Az alkimista','Paulo Coelho','Brazília','regény',1988,200),
(16,'A Da Vinci-kód','Dan Brown','USA','thriller',2003,480),
(17,'Az éhezők viadala','Suzanne Collins','USA','sci-fi',2008,380),
(18,'Száz év magány','Gabriel García Márquez','Kolumbia','regény',1967,450),
(19,'1984','George Orwell','Egyesült Királyság','disztópia',1949,330),
(20,'És sorra eltűntek','Agatha Christie','Egyesült Királyság','krimi',1939,260);

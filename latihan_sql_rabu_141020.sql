CREATE DATABASE latihan_tipedata;
USE latihan_tipedata;
CREATE TABLE negara (id TINYINT, nama_negara VARCHAR(30), ibukota VARCHAR(30), luas_wilayah FLOAT, jumlah_penduduk INT);
SHOW COLUMNS FROM negara;
INSERT INTO negara VALUES
(1, "Indonesia", "Jakarta", 1904569, 267026366),
(2, "Malaysia", "Kuala Lumpur", 329847, 32652083),
(3, "Thailand", "Bangkok", 513120, 68977400),
(4, "Filipina", "Manila", 300000, 109180815),
(5, "Singapura", "Singapura", 697, 6209660),
(6, "Brunei Darussalam", "Bandar Seri Begawan", 5765, 464478),
(7, "Vietnam", "Hanoi", 331210, 98721275),
(8, "Laos", "Vientiane", 236800, 7447396),
(9, "Myanmar", "Rangoon", 676578, 56590071),
(10, "Kamboja", "Phnom Penh", 181035, 16926984);
SELECT * FROM negara;

CREATE DATABASE latihan_string;
USE latihan_string;
CREATE TABLE cabang (id TINYINT, a VARBINARY(30), b VARCHAR(20), c CHAR(40), d BINARY(20));
INSERT INTO cabang VALUES
(1, "Bandar Lampung", "Metro", "Ap #688-7025 Non, Rd.", "LA"),
(2, "Katowice", "Katowice", "Ap #857-566 Nibh. Avenue", "Slaskie"),
(3, "Gojal Upper Hanza", "Diamer", "2653 Orci. St.", "Gilgit Baltistan"),
(4, "Alingsas", "Uddevalla", "Ap #424-7612 Mauris Rd.", "Vastra Gotalands lan"),
(5, "Itagui", "Apartado", "Ap #638-8111 Elementum Road", "ANT"),
(6, "Rionegoro", "Itagui", "P.O Box 865, 6270 Lorem Ave", "Antioqua"),
(7, "Villata", "Valmacca", "Ap #769-537 Penatibus St.", "Piemonte"),
(8, "Orizaba", "Minatitlan", "P.O. Box 173, 3247 Pellentesque St.", "Veracruz");
SELECT * FROM cabang WHERE d = "veracruz";
SELECT * FROM cabang WHERE a = "villata";
SELECT * FROM cabang WHERE c LIKE "%173%";

CREATE DATABASE latihan_enum;
CREATE TABLE film (id TINYINT, judul ENUM("Avatar", "Titanic", "Star Wars : The Force Awakens", "Jurassic World", "The Avengers"), pendapatan_USD BIGINT, tahun_produksi YEAR(4));
SHOW COLUMNS FROM film;
INSERT INTO film VALUES (1, "Avatar", 2787965087, 2009), (2, "Titanic", 2186772302, 1997), (3, "Star Wars : The Force Awakens", 2068223624, 2015), (4, "Jurassic World", 1671713208, 2015), (5, "The Avengers", 1518812988, 2012);
SELECT * FROM film;
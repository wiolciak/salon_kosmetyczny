create database salon_kosmetyczny;


use salon_kosmetyczny;

create table klienci
(
	klient_id int primary key auto_increment,
    imie varchar(20) not null,
    nazwisko varchar(20) not null,
    telefon varchar(15) not null,
    email varchar(40) not null
);

create table pracownicy
(
	pracownik_id int primary key auto_increment,
    imie varchar(20) not null,
    nazwisko varchar(20) not null,
    telefon varchar(15) not null,
    email varchar(40) not null,
    specjalizacja varchar(30) not null
);

create table materialy
(
	material_id int primary key auto_increment,
    nazwa varchar(40) not null,
    opis varchar(200)
);

create table zabieg
(
	zabieg_id int primary key auto_increment,
    nazwa varchar(40) not null,
    cena decimal(18,2) not null,
    opis varchar(200)
);

create table zabieg_material
(
	zabieg_id int not null,
	material_id int not null,
    ilosc int not null,
    FOREIGN KEY (zabieg_id) REFERENCES zabieg(zabieg_id),
    FOREIGN KEY (material_id) REFERENCES materialy(material_id),
    primary key(zabieg_id,material_id)
);

create table wizyta
(
	wizyta_id int primary key auto_increment,
    klient_id int not null,
    pracownik_id int not null,
    data_wizyty datetime not null,
    FOREIGN KEY (klient_id) REFERENCES klienci(klient_id),
    FOREIGN KEY (pracownik_id) REFERENCES pracownicy(pracownik_id)
);


create table wizyta_zabieg
(
	wizyta_id int not null,
    zabieg_id int not null,
    primary key(wizyta_id,zabieg_id),
	FOREIGN KEY (wizyta_id) REFERENCES wizyta(wizyta_id),
    FOREIGN KEY (zabieg_id) REFERENCES zabieg(zabieg_id)
);

insert into klienci(imie,nazwisko,telefon,email) values("Jan","Kowalski","606909101","jkowalski@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Adam","Nowak","806909102","anowak@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Michał","Iksiński","506909103","miksinski@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Wiesław","Długi","706909104","wdlugi@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Anna","Krótka","806909105","akrotka@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Monika","Malinowska","406909106","mmalinowska@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Dorota","Kowalska","506909107","dkowalska@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Andrzej","Warszawski","806909108","awarszaski@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Anna","Wolska","706909109","awolska@gmail.com");
insert into klienci(imie,nazwisko,telefon,email) values("Weronika","Bąk","506909110","wbak@gmail.com");

insert into pracownicy(imie,nazwisko,telefon,email,specjalizacja) values("Gabriela","Kot","777111222","gkot@gmail.com","rzęsy");
insert into pracownicy(imie,nazwisko,telefon,email,specjalizacja) values("Monika","Kowalewska","666777111","mkowalewska@gmail.com","manicure");
insert into pracownicy(imie,nazwisko,telefon,email,specjalizacja) values("Adam","Kotowski","888123444","akotowski@gmail.com","manicure");
insert into pracownicy(imie,nazwisko,telefon,email,specjalizacja) values("Michalina","Dąbrowska","765444123","mdabrowska@gmail.com","kosmetyka");


INSERT INTO wizyta (klient_id, pracownik_id, data_wizyty) VALUES
(1, 1, '2023-01-03 09:00:00'),
(2, 2, '2023-01-05 11:30:00'),
(3, 3, '2023-01-10 14:45:00'),
(4, 4, '2023-01-12 16:00:00'),
(5, 1, '2023-01-15 13:30:00'),
(6, 2, '2023-01-18 10:00:00'),
(7, 3, '2023-01-20 15:00:00'),
(8, 4, '2023-01-25 17:15:00'),
(9, 1, '2023-01-28 09:30:00'),
(10, 2, '2023-01-30 12:00:00'),
(1, 3, '2023-02-02 13:45:00'),
(2, 4, '2023-02-05 08:15:00'),
(3, 1, '2023-02-08 10:30:00'),
(4, 2, '2023-02-12 14:00:00'),
(5, 3, '2023-02-14 15:45:00'),
(6, 4, '2023-02-18 17:30:00'),
(7, 1, '2023-02-22 09:15:00'),
(8, 2, '2023-02-25 11:45:00'),
(9, 3, '2023-02-28 13:30:00'),
(10, 4, '2023-03-03 16:00:00'),
(1, 1, '2023-03-05 09:00:00'),
(2, 2, '2023-03-07 11:30:00'),
(3, 3, '2023-03-09 14:00:00'),
(4, 4, '2023-03-13 17:15:00'),
(5, 1, '2023-03-15 12:00:00'),
(6, 2, '2023-03-18 08:30:00'),
(7, 3, '2023-03-20 10:00:00'),
(8, 4, '2023-03-23 13:30:00'),
(9, 1, '2023-03-27 14:45:00'),
(10, 2, '2023-03-29 16:30:00'),
(1, 3, '2023-04-01 08:00:00'),
(2, 4, '2023-04-04 09:30:00'),
(3, 1, '2023-04-07 12:00:00'),
(4, 2, '2023-04-10 15:45:00'),
(5, 3, '2023-04-12 17:00:00'),
(6, 4, '2023-04-14 13:15:00'),
(7, 1, '2023-04-17 08:45:00'),
(8, 2, '2023-04-20 11:00:00'),
(9, 3, '2023-04-23 15:30:00'),
(10, 4, '2023-04-26 09:15:00'),
(1, 1, '2023-04-29 11:45:00'),
(2, 2, '2023-05-02 16:00:00'),
(3, 3, '2023-05-05 13:30:00'),
(4, 4, '2023-05-08 08:30:00'),
(5, 1, '2023-05-11 10:15:00'),
(6, 2, '2023-05-14 12:00:00'),
(7, 3, '2023-05-16 09:45:00'),
(8, 4, '2023-05-18 14:00:00'),
(9, 1, '2023-05-21 15:30:00'),
(10, 2, '2023-05-24 17:00:00'),
(1, 3, '2023-05-26 10:00:00'),
(2, 4, '2023-05-29 08:15:00'),
(3, 1, '2023-06-01 11:45:00'),
(4, 2, '2023-06-03 13:00:00'),
(5, 3, '2023-06-06 14:30:00'),
(6, 4, '2023-06-09 16:00:00'),
(7, 1, '2023-06-12 09:00:00'),
(8, 2, '2023-06-14 11:00:00'),
(9, 3, '2023-06-17 12:30:00'),
(10, 4, '2023-06-20 15:15:00'),
(1, 1, '2023-06-23 09:30:00'),
(2, 2, '2023-06-26 13:00:00'),
(3, 3, '2023-06-29 14:30:00'),
(4, 4, '2023-07-01 17:00:00'),
(5, 1, '2023-07-03 08:30:00'),
(6, 2, '2023-07-06 11:15:00'),
(7, 3, '2023-07-09 13:45:00'),
(8, 4, '2023-07-12 16:00:00'),
(9, 1, '2023-07-15 09:00:00'),
(10, 2, '2023-07-17 12:00:00'),
(1, 3, '2023-07-20 14:45:00'),
(2, 4, '2023-07-23 16:15:00'),
(3, 1, '2023-07-26 09:30:00'),
(4, 2, '2023-07-29 11:00:00'),
(5, 3, '2023-08-01 13:15:00'),
(6, 4, '2023-08-04 15:45:00'),
(7, 1, '2023-08-07 08:30:00'),
(8, 2, '2023-08-10 11:00:00'),
(9, 3, '2023-08-13 14:00:00'),
(10, 4, '2023-08-15 17:15:00'),
(1, 1, '2023-08-18 09:45:00'),
(2, 2, '2023-08-20 12:30:00'),
(3, 3, '2023-08-23 14:15:00'),
(4, 4, '2023-08-26 16:00:00'),
(5, 1, '2023-08-29 08:15:00'),
(6, 2, '2023-09-01 10:30:00'),
(7, 3, '2023-09-04 12:00:00'),
(8, 4, '2023-09-07 13:45:00'),
(9, 1, '2023-09-10 15:00:00'),
(10, 2, '2023-09-13 17:30:00');

INSERT INTO materialy (nazwa, opis) VALUES
('Krem nawilżający', 'Krem o głębokim działaniu nawilżającym, idealny do suchej skóry.'),
('Serum witaminowe', 'Serum z witaminą C, które rozjaśnia i rewitalizuje skórę.'),
('Maseczka algowa', 'Naturalna maseczka algowa o działaniu regenerującym i wygładzającym.'),
('Peeling enzymatyczny', 'Peeling na bazie enzymów, delikatnie usuwa martwy naskórek.'),
('Tonik z kwasem hialuronowym', 'Tonik nawilżający z dodatkiem kwasu hialuronowego, który poprawia elastyczność skóry.'),
('Krem liftingujący', 'Krem o działaniu liftingującym, który ujędrnia skórę twarzy.'),
('Olej arganowy', 'Naturalny olej arganowy, bogaty w witaminy, który intensywnie nawilża i odżywia skórę.'),
('Mleczko oczyszczające', 'Mleczko do demakijażu, które skutecznie usuwa makijaż i zanieczyszczenia.'),
('Maska kolagenowa', 'Maska na bazie kolagenu, która ujędrnia skórę i zmniejsza widoczność zmarszczek.'),
('Krem z filtrem UV', 'Krem ochronny z filtrem UV, chroniący skórę przed szkodliwym działaniem promieni słonecznych.');

INSERT INTO zabieg (nazwa, cena, opis) VALUES
('Mikrodermabrazja', 150.00, 'Zabieg złuszczania martwego naskórka, poprawiający kondycję skóry.'),
('Peeling kawitacyjny', 120.00, 'Delikatne oczyszczanie skóry za pomocą ultradźwięków.'),
('Mezoterapia igłowa', 300.00, 'Wprowadzanie substancji aktywnych w głębsze warstwy skóry.'),
('Oczyszczanie manualne', 180.00, 'Klasyczne oczyszczanie skóry twarzy z zanieczyszczeń.'),
('Zabieg liftingujący', 250.00, 'Ujędrnianie skóry z efektem liftingu, redukcja zmarszczek.'),
('Maska algowa', 100.00, 'Maseczka algowa o działaniu nawilżającym i regenerującym.'),
('Zabieg z kwasem migdałowym', 180.00, 'Złuszczanie naskórka przy użyciu kwasu migdałowego.'),
('Terapia światłem LED', 200.00, 'Terapia światłem LED poprawiająca elastyczność skóry i redukcję stanów zapalnych.'),
('Mezoterapia bezigłowa', 220.00, 'Nieinwazyjna metoda wprowadzania składników aktywnych w skórę.'),
('Laminacja brwi', 120.00, 'Zabieg stylizacji brwi z efektem ich wygładzenia i ułożenia.'),
('Henna brwi i rzęs', 80.00, 'Podkreślenie koloru brwi i rzęs za pomocą naturalnej henny.'),
('Depilacja woskiem', 70.00, 'Usuwanie owłosienia woskiem, długotrwały efekt gładkiej skóry.'),
('Botox na zmarszczki mimiczne', 400.00, 'Wygładzanie zmarszczek mimicznych przy użyciu botoksu.'),
('Zabieg nawilżający twarz', 150.00, 'Intensywne nawilżenie skóry z zastosowaniem serum witaminowego.'),
('Laserowe usuwanie przebarwień', 350.00, 'Zabieg laserowy na redukcję przebarwień na skórze.'),
('Manicure hybrydowy', 100.00, 'Stylizacja paznokci przy użyciu lakieru hybrydowego o przedłużonej trwałości.'),
('Pedicure SPA', 180.00, 'Kompleksowy zabieg pielęgnacyjny stóp wraz z masażem i maską regenerującą.'),
('Makijaż okolicznościowy', 200.00, 'Profesjonalny makijaż na specjalne okazje.'),
('Zabieg anti-aging', 300.00, 'Zaawansowana pielęgnacja anti-aging, redukująca oznaki starzenia.'),
('Radiofrekwencja RF', 350.00, 'Zabieg ujędrniający skórę za pomocą fal radiowych, poprawiający elastyczność.');

INSERT IGNORE INTO zabieg_material (zabieg_id, material_id, ilosc) VALUES
(1, 4, 1), -- Mikrodermabrazja - Peeling enzymatyczny
(1, 2, 2), -- Mikrodermabrazja - Serum witaminowe
(2, 4, 1), -- Peeling kawitacyjny - Peeling enzymatyczny
(2, 1, 1), -- Peeling kawitacyjny - Krem nawilżający
(3, 2, 1), -- Mezoterapia igłowa - Serum witaminowe
(3, 7, 2), -- Mezoterapia igłowa - Olej arganowy
(4, 1, 1), -- Oczyszczanie manualne - Krem nawilżający
(5, 6, 1), -- Zabieg liftingujący - Krem liftingujący
(5, 8, 1), -- Zabieg liftingujący - Mleczko oczyszczające
(6, 3, 1), -- Maska algowa - Maseczka algowa
(7, 5, 1), -- Zabieg z kwasem migdałowym - Tonik z kwasem hialuronowym
(8, 9, 1), -- Terapia światłem LED - Maska kolagenowa
(9, 2, 1), -- Mezoterapia bezigłowa - Serum witaminowe
(10, 7, 1), -- Laminacja brwi - Olej arganowy
(14, 1, 1), -- Zabieg nawilżający twarz - Krem nawilżający
(14, 2, 1), -- Zabieg nawilżający twarz - Serum witaminowe
(15, 9, 1), -- Laserowe usuwanie przebarwień - Maska kolagenowa
(19, 10, 1), -- Zabieg anti-aging - Krem z filtrem UV
(19, 2, 1), -- Zabieg anti-aging - Serum witaminowe
(20, 6, 1); -- Radiofrekwencja RF - Krem liftingujący

INSERT IGNORE INTO wizyta_zabieg (wizyta_id, zabieg_id) VALUES
(1, 2), -- Wizyta 1: Mikrodermabrazja
(1, 4), -- Wizyta 1: Oczyszczanie manualne
(2, 2), -- Wizyta 2: Peeling kawitacyjny
(2, 6), -- Wizyta 2: Maska algowa
(3, 3), -- Wizyta 3: Mezoterapia igłowa
(4, 5), -- Wizyta 4: Zabieg liftingujący
(5, 7), -- Wizyta 5: Zabieg z kwasem migdałowym
(6, 8), -- Wizyta 6: Terapia światłem LED
(7, 9), -- Wizyta 7: Mezoterapia bezigłowa
(8, 10), -- Wizyta 8: Laminacja brwi
(9, 11), -- Wizyta 9: Henna brwi i rzęs
(10, 12), -- Wizyta 10: Depilacja woskiem
(11, 13), -- Wizyta 11: Botox na zmarszczki mimiczne
(11, 14), -- Wizyta 11: Zabieg nawilżający twarz
(12, 15), -- Wizyta 12: Laserowe usuwanie przebarwień
(13, 16), -- Wizyta 13: Manicure hybrydowy
(14, 17), -- Wizyta 14: Pedicure SPA
(15, 18), -- Wizyta 15: Makijaż okolicznościowy
(16, 19), -- Wizyta 16: Zabieg anti-aging
(17, 20), -- Wizyta 17: Radiofrekwencja RF
(18, 1), -- Wizyta 18: Mikrodermabrazja
(18, 5), -- Wizyta 18: Zabieg liftingujący
(19, 7), -- Wizyta 19: Zabieg z kwasem migdałowym
(20, 14), -- Wizyta 20: Zabieg nawilżający twarz
(20, 19), -- Wizyta 20: Zabieg anti-aging
(21, 2), -- Wizyta 21: Peeling kawitacyjny
(22, 1), -- Wizyta 22: Mikrodermabrazja
(23, 3), -- Wizyta 23: Mezoterapia igłowa
(24, 5), -- Wizyta 24: Zabieg liftingujący
(25, 6), -- Wizyta 25: Maska algowa
(26, 7), -- Wizyta 26: Zabieg z kwasem migdałowym
(27, 8), -- Wizyta 27: Terapia światłem LED
(28, 4), -- Wizyta 28: Oczyszczanie manualne
(29, 9), -- Wizyta 29: Mezoterapia bezigłowa
(30, 10), -- Wizyta 30: Laminacja brwi
(31, 11), -- Wizyta 31: Henna brwi i rzęs
(32, 12), -- Wizyta 32: Depilacja woskiem
(33, 13), -- Wizyta 33: Botox na zmarszczki mimiczne
(34, 14), -- Wizyta 34: Zabieg nawilżający twarz
(35, 15), -- Wizyta 35: Laserowe usuwanie przebarwień
(36, 16), -- Wizyta 36: Manicure hybrydowy
(37, 17), -- Wizyta 37: Pedicure SPA
(38, 18), -- Wizyta 38: Makijaż okolicznościowy
(39, 19), -- Wizyta 39: Zabieg anti-aging
(40, 20), -- Wizyta 40: Radiofrekwencja RF
(41, 2), -- Wizyta 41: Peeling kawitacyjny
(42, 1), -- Wizyta 42: Mikrodermabrazja
(43, 3), -- Wizyta 43: Mezoterapia igłowa
(44, 5), -- Wizyta 44: Zabieg liftingujący
(45, 6), -- Wizyta 45: Maska algowa
(46, 7), -- Wizyta 46: Zabieg z kwasem migdałowym
(47, 8), -- Wizyta 47: Terapia światłem LED
(48, 9), -- Wizyta 48: Mezoterapia bezigłowa
(49, 11), -- Wizyta 49: Henna brwi i rzęs
(50, 14), -- Wizyta 50: Zabieg nawilżający twarz
(51, 12), -- Wizyta 51: Depilacja woskiem
(52, 13), -- Wizyta 52: Botox na zmarszczki mimiczne
(53, 19), -- Wizyta 53: Zabieg anti-aging
(54, 15), -- Wizyta 54: Laserowe usuwanie przebarwień
(55, 20), -- Wizyta 55: Radiofrekwencja RF
(56, 17), -- Wizyta 56: Pedicure SPA
(57, 10), -- Wizyta 57: Laminacja brwi
(58, 4), -- Wizyta 58: Oczyszczanie manualne
(59, 16), -- Wizyta 59: Manicure hybrydowy
(60, 18), -- Wizyta 60: Makijaż okolicznościowy
(61, 1), -- Wizyta 61: Mikrodermabrazja
(62, 2), -- Wizyta 62: Peeling kawitacyjny
(63, 3), -- Wizyta 63: Mezoterapia igłowa
(64, 6), -- Wizyta 64: Maska algowa
(65, 5), -- Wizyta 65: Zabieg liftingujący
(66, 7), -- Wizyta 66: Zabieg z kwasem migdałowym
(67, 9), -- Wizyta 67: Mezoterapia bezigłowa
(68, 15), -- Wizyta 68: Laserowe usuwanie przebarwień
(69, 19), -- Wizyta 69: Zabieg anti-aging
(70, 12), -- Wizyta 70: Depilacja woskiem
(71, 4), -- Wizyta 71: Oczyszczanie manualne
(72, 8), -- Wizyta 72: Terapia światłem LED
(73, 11), -- Wizyta 73: Henna brwi i rzęs
(74, 18), -- Wizyta 74: Makijaż okolicznościowy
(75, 20), -- Wizyta 75: Radiofrekwencja RF
(76, 17), -- Wizyta 76: Pedicure SPA
(77, 14), -- Wizyta 77: Zabieg nawilżający twarz
(78, 10), -- Wizyta 78: Laminacja brwi
(79, 16), -- Wizyta 79: Manicure hybrydowy
(80, 13), -- Wizyta 80: Botox na zmarszczki mimiczne
(81, 2), -- Wizyta 81: Peeling kawitacyjny
(82, 1), -- Wizyta 82: Mikrodermabrazja
(83, 3), -- Wizyta 83: Mezoterapia igłowa
(84, 5), -- Wizyta 84: Zabieg liftingujący
(85, 6), -- Wizyta 85: Maska algowa
(86, 9), -- Wizyta 86: Mezoterapia bezigłowa
(87, 15), -- Wizyta 87: Laserowe usuwanie przebarwień
(88, 19), -- Wizyta 88: Zabieg anti-aging
(89, 12), -- Wizyta 89: Depilacja woskiem
(90, 14); -- Wizyta 90: Zabieg nawilżający twarz


-- 1. Wyswietla wszystkie zabiegi powyzej 200 zł 
	select * from zabieg where cena > 200;
-- 2. Wyswietla wszystkich klientow których nazwisko konczy sie na ski  
	select * from klienci where nazwisko like '%ski';
-- 3. Wyswietla wszystkich klientów którzy mają w numerze '90' oraz maja litere 'o' w imieniu 
	select * from klienci where telefon like '%90%' and imie like '%o%';
-- 4. Wyswietla wszystkie zabiegi z przedzialu od 100 do 300 zł oraz w opisie mają słowo 'skóra' lub 'skórę lub 'skóry' 
	select * from zabieg where cena between 100 and 300 and opis like '%skór%';
-- 5. Wyświetlenie wszystkich klientów 
SELECT * FROM klienci;
-- 6. Zaktualizowanie danych klienta
UPDATE klienci SET telefon = "987654321" WHERE klient_id = 1;
-- 6b. Wyświetla ile materiału do zabiegów wykorzystano
select zabieg.zabieg_id, nazwa, sum(ilosc) as laczna_ilosc from zabieg
join zabieg_material on zabieg.zabieg_id = zabieg_material.zabieg_id
group by zabieg.zabieg_id, nazwa 
order by sum(ilosc) desc;
-- 7.  ile wizyt mają/ mieli poszczególni pracownicy
select pracownicy.pracownik_id, imie, nazwisko, count(*) as ile_wizyt from pracownicy
join wizyta on wizyta.pracownik_id = pracownicy.pracownik_id
group by pracownik_id, imie, nazwisko;

 -- 8. ile łącznie klienci wydali w salonie
 select klienci.klient_id, imie, nazwisko, sum(cena) from klienci
 join wizyta on wizyta.klient_id = klienci.klient_id
 join wizyta_zabieg on wizyta_zabieg.wizyta_id = wizyta.wizyta_id
 join zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
 group by klienci.klient_id, imie, nazwisko
 order by sum(cena) desc;
 
--  9. Wyświetla pracowników którzy wykonali zabiegi na kwote powyżej średniej
select pracownicy.pracownik_id, imie, nazwisko, sum(cena) as laczny_koszt from pracownicy
join wizyta on wizyta.pracownik_id = pracownicy.pracownik_id
join wizyta_zabieg on wizyta_zabieg.wizyta_id = wizyta.wizyta_id
join zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
group by pracownicy.pracownik_id, imie, nazwisko
having sum(cena) > (select avg(laczny_koszt)
from
(select pracownicy.pracownik_id, imie, nazwisko, sum(cena) as laczny_koszt from pracownicy
join wizyta on wizyta.pracownik_id = pracownicy.pracownik_id
join wizyta_zabieg on wizyta_zabieg.wizyta_id = wizyta.wizyta_id
join zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
group by pracownicy.pracownik_id, imie, nazwisko) podz);

-- 10. Pokazuje ile wizyt w poszczególnych miesiacach za ile złotych
select month(data_wizyty), monthname(data_wizyty), count(distinct wizyta.wizyta_id) as ile_wizyt, sum(cena) as laczny_koszt from wizyta
join wizyta_zabieg on wizyta_zabieg.wizyta_id = wizyta.wizyta_id
join zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
group by month(data_wizyty), monthname(data_wizyty);

-- 11. Jaki zabieg najchętniej był wykonywany
select nazwa, count(*) as ile from zabieg
join wizyta_zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
group by nazwa 
order by count(*) desc; 

-- Widoki
-- Tworzenie widoku wizyt z informacją o klientach i pracownikach
CREATE VIEW wizyty_klienci_pracownicy AS
SELECT 
    wiwidok_pracownikow_wizytyzyta.*, 
    klienci.imie AS klient_imie,
    klienci.nazwisko AS klient_nazwisko,
    pracownicy.imie AS pracownik_imie,
    pracownicy.nazwisko AS pracownik_nazwisko
FROM 
    wizyta 
JOIN 
    klienci ON klienci.klient_id = wizyta.klient_id
JOIN 
    pracownicy ON pracownicy.pracownik_id = wizyta.pracownik_id;

-- Tworzenie widoku liczby wizyt dla każdego klienta
CREATE VIEW klienci_ilosc_wizyt AS
SELECT 
    wizyta.klient_id, 
    klienci.imie, 
    klienci.nazwisko, 
    COUNT(*) AS ile_wizyt 
FROM 
    wizyta 
JOIN 
    klienci ON klienci.klient_id = wizyta.klient_id
GROUP BY 
    wizyta.klient_id, klienci.imie, klienci.nazwisko;


-- pokaże liczbę wizyt przypisanych do każdego pracownika--
create view widok_pracownikow_wizyty as
select
    p.pracownik_id,
    p.imie,
    p.nazwisko,
    count(w.wizyta_id) as liczba_wizyt
from
    pracownicy p
left join
    wizyta w on p.pracownik_id = w.pracownik_id
group by
    p.pracownik_id, p.imie, p.nazwisko;

-- #FUNKCJE-- 
-- Funkacja z rabatem--  
DELIMITER //

CREATE FUNCTION rabat(cena DECIMAL(18,2), procent DECIMAL(18,2)) 
RETURNS DECIMAL(18,2)
DETERMINISTIC
BEGIN
    RETURN ((100 - procent) / 100) * cena;
END //klienci_ilosc_wizytklient_id

DELIMITER ;

-- Testowanie funkcji
SELECT rabat(200,20);

-- Wyświetlenie tabeli `zabieg` z rabatem
SELECT *, rabat(cena, 20) AS cena_po_rabacie FROM zabieg;


-- Łączenie imienia i nazwiska 
DELIMITER //

CREATE FUNCTION pelne_imie_klienta(klient_id INT) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE pelne_imie VARCHAR(255);

    SELECT CONCAT(imie, ' ', nazwisko) 
    INTO pelne_imie
    FROM klienci
    WHERE klienci.klient_id = klient_id;

    RETURN pelne_imie;
END //

DELIMITER ;
--  ile klientow
DELIMITER //

CREATE FUNCTION ile_klientow()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE liczba_klientow INT;

    -- Liczymy ilość klientów
    SELECT COUNT(*) INTO liczba_klientow FROM klienci;

    -- Zwracamy wynik
    RETURN liczba_klientow;
END //

DELIMITER ;
-- --zmień numer--  
DELIMITER //
CREATE FUNCTION zmien_nr(id int, numer varchar(15))
	RETURNS INT
    DETERMINISTIC
    BEGIN
		update klenci set telefon = numer where klient_id = id;
        return 1;
	end//
DELIMITER ;
select zmien_nr(6,'606505404');

select* from klienci;

delimiter //
create procedure nowy_klient(im varchar(20), nazwis varchar(20), tel varchar(15), eml varchar(40))
begin
insert into klienci (imie, nazwisko, telefon, email) values(im, nazwis, tel, eml);
end//
delimiter ;

call nowy_klient("Hubert", "Bądk", "6746838","huber@onet");

-- dodaje materiały
delimiter //
create procedure materialy_dodaj(n int)
begin
	declare i  int default 1;
    while i <=n do
		insert into materiałt(nazwa, opis) values (concat("nazwa",i), concat("opis", i));
		set i = i + 1;
	end while;
end//
delimiter ;

call  materialy_dodaj(10);

alter table klienci add column znizka bool default false;

select klient_id, sum(cena)
from wizyta
join wizyta_zabieg on wizyta_zabieg.wizyta_id = wizyta.wizyta_id
join zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
group by klient_id
having sum(cena) > 2000;


-- dodaje zniżkę  
delimiter //
create procedure nadaj_znizke(out ile int)
begin
    select count(*)
    into ile
    from (
        select klient_id
        from wizyta
        join wizyta_zabieg on wizyta_zabieg.wizyta_id = wizyta.wizyta_id
        join zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
        group by klient_id
        having sum(cena) > 2000
    ) s;

    update klienci
    set znizka = true
    where klient_id in (
        select klient_id
        from wizyta
        join wizyta_zabieg on wizyta_zabieg.wizyta_id = wizyta.wizyta_id
        join zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
        group by klient_id
        having sum(cena) > 2000
    );
end//
delimiter ;


set @odp = 0;
call nadaj_zniżke(odp);
select odp;
drop event nadaj_znizke_codziennie;


-- żniżka dla każdego dnia 
delimiter //
create event nadaj_zniazke_codziennie
on schedule
	every 1 day 
    starts timestamp(curdate(), '18:21:00')
do
begin
	declare odp int default 0;
	call nadaj_znizke(odp);
    
end//
-- dellimiter ;

select (*) from klienci;

--  kod który na podstawie id klienta i pracownika oraz godziny umawia wizyte
drop procedure umow_wizyte;
delimiter //
create procedure umow_wizyte (d_wizyty DATETIME, id_pracownika INT, id_klient INT)
begin
insert into wizyta (data_wizyty, pracownik_id, klient_id) values (d_wizyty, id_pracownika, id_klient);
end//
delimiter ;

call umow_wizyte ("2023-03-01 11:00:00", 1, 1);
select * from wizyta where pracownik_id = 1 and klient_id = 1;

-- zwraca koszt wizyty na podstawie id wizyty
delimiter //
create function koszt (w_id INT)
returns decimal (18,2)
deterministic
begin
declare kwota decimal(18,2);
set kwota = (
	select sum(cena) from zabieg
	join wizyta_zabieg on zabieg.zabieg_id = wizyta_zabieg.zabieg_id
	where wizyta_id = w_id);
return kwota;
end //
delimiter ;

select koszt(5);

-- odwołanie wizyty 
drop procedure odwolaj_wizyte;
delimiter //
create procedure odwolaj_wizyte (id_w INT)
begin
delete from wizyta where wizyta_id = id_w;
end//
delimiter ;
select * from wizyta;
call odwolaj_wizyte (181);
    
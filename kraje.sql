#
#CREATE TABLE kraje (id_kraju int, nazwa_kraju varchar(7), id_kontynentu int, flaga varchar(29));
#create table kraje (id_kraju int, nazwa_kraju varchar(7), id_kontynentu int, flaga varchar(29));
INSERT INTO kraje
	(id_kraju, nazwa_kraju, id_kontynentu, flaga)
VALUES
	(1, 'Polska', 1, 'biało-czerwona'),
	(2, 'UK', 1, 'iks'),
	(3, 'Czechy', 1, 'biało-czerwono-niebieska'),
	(4, 'Meksyk', 2, 'guacamole'),
	(5, 'USA', 2, 'paski i gwiazdy'),
	(6, 'Namibia', 3, 'pięciokolorowa'),
	(7, 'Sudan', 3, 'czerwono-biało-czarno-zielona')
;

CREATE TABLE kontynenty
	(id_kontynentu int, nazwa_polska varchar(10), nazwa_angielska varchar(10))
;
	
INSERT INTO kontynenty
	(id_kontynentu, nazwa_polska, nazwa_angielska)
VALUES
	(1, 'Europa', 'Europe'),
	(2, 'Ameryka', 'America'),
	(3, 'Afryka', 'Africa'),
	(4, 'Antarktyda', 'Antarctica')
;

select kraje.nazwa_kraju, kontynenty.nazwa_polska from kraje natural join kontynenty;
select kraje.nazwa_kraju, kontynenty.nazwa_polska from kraje natural right join kontynenty;
select COALESCE(kraje.nazwa_kraju, 'Brak kraju') as Kraj, kontynenty.nazwa_polska as Kontynent from kraje natural right join kontynenty;
select kontynenty.nazwa_polska as 'Kontynent', count(*) as 'Liczba krajów' from kraje, kontynenty where kraje.id_kontynentu = kontynenty.id_kontynentu group by kontynenty.nazwa_polska having count(*) > 2;
#Kraje pierwsza liter mała nazwy kraju
select concat(lower(substr(nazwa_kraju, 1, 1)), upper(substr(nazwa_kraju, 2))) as dziwolagi from kraje;
select concat_ws(concat(':', space(3)), kraje.nazwa_kraju, kontynenty.nazwa_polska) as Nazwy from kraje, kontynenty where kraje.id_kontynentu = kontynenty.id_kontynentu;
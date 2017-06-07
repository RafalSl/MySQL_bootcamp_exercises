create database skoczkowie;
use skoczkowie;
#MS4
CREATE TABLE skocznie (
    id_skoczni INT,
    miasto TEXT,
    kraj_s TEXT,
    nazwa TEXT,
    k INT,
    sedz INT
);
#MS5
CREATE TABLE trenerzy (
    kraj VARCHAR(3),
    imie_t TEXT,
    nazwisko TEXT,
    data_ur_t DATE
);
#MS6
CREATE TABLE zawodnicy (
    id_skoczka INT,
    imie TEXT,
    nazwisko TEXT,
    kraj VARCHAR(3),
    data_ur_s DATE,
    wzrost INT,
    waga INT
);
#MS7
CREATE TABLE zawody (
    id_zawodow INT,
    id_skoczni INT,
    data_z DATE
);
#MS8
CREATE TABLE kibice (
    imie_k TEXT,
    nazwisko_k TEXT,
    data_ur_ DATE,
    kraj VARCHAR(3),
    wzrost INT
);
#import danych z pliku - przykład
create table import_p (col1 text, col2 text, col3 text, col4 text);
load data local infile 'C:/Users/HP/Desktop/SQL-cwiczenia/dane_przyk.txt' into table import_p;
select * from import_p;
#MS10
insert into skocznie values (1, 'Zakopane', 'POL', 'Wielka Krokiew', 120, 134);
insert into skocznie values (2, 'Ga-Pa', 'GER', 'Wielka Skocznia Olimpijska', 115, 125);
insert into skocznie values (4, 'Oberstdorf', 'GER', 'Skocznia Heiniego Klopfera', 185, 211);
insert into skocznie values (3, 'Oberstdorf', 'GER', 'Grosse Schattenberg', 120, 134);
insert into skocznie values (5, 'Willingen', 'GER', 'Grosse Muhlenkopfschanze', 130, 145);
#MS11
insert into trenerzy values ('AUT', 'Alexander', 'Pointer', Null);
select * from trenerzy;
insert into trenerzy values ('FIN', 'Tommi', 'Nikunen', null);
insert into trenerzy values ('NOR', 'Mika', 'Kojonkoski', '1963-04-09');
insert into trenerzy values ('POL', 'Heinz', 'Kuttin', '1971-01-05');
insert into zawodnicy values (2, 'Marcin', 'BACHLEDA', 'POL', '1982-09-04', 166, 56);
select * from zawodnicy;
insert into zawodnicy values (3, 'Robert', 'MATEJA', 'POL', '1974-10-05', 180, 63);
insert into zawodnicy values (4, 'Alexander', 'HERR', 'GER', '1978-10-04', 173, 65);
insert into zawodnicy values (5, 'Stephan', 'HOCKE', 'GER', '1983-10-20', 178, 59);
insert into zawodnicy values (6, 'Martin', 'SCHMITT', 'GER', '1978-01-29', 181,64);
select nazwisko, wzrost, waga from zawodnicy;
#MS15
delete from zawodnicy where nazwisko='bachleda';
select * from zawodnicy;
#MS16 - modyfikowanie zawartości
update zawodnicy set data_ur_s='1980-10-04' where nazwisko='herr';
select * from zawodnicy where nazwisko='herr';
#MS17
update zawodnicy set nazwisko='Anonim' where kraj='GER';
select * from zawodnicy;
update zawodnicy set wzrost = wzrost + 2;
update zawodnicy set wzrost = wzrost - 2;
select imie, nazwisko, wzrost from zawodnicy;
INSERT INTO skocznie VALUES (6, 'Kuopio', 'FIN', 'Puijo', 120, 131);
INSERT INTO skocznie VALUES (7, 'Lahti', 'FIN', 'Salpausselka', 116, 128);
INSERT INTO skocznie VALUES (8, 'Trondheim', 'NOR', 'Granasen', 120, 132);
select * from skocznie;
alter table trenerzy change nazwisko nazwisko_t text;
INSERT INTO trenerzy VALUES ('GER', 'Wolfang', 'Steiert', '1963-04-19');
INSERT INTO trenerzy VALUES ('JPN', 'Hirokazu', 'Yagi', NULL);
alter table zawodnicy change data_ur_s data_ur date;
INSERT INTO zawodnicy VALUES (7, 'Michael', 'UHRMANN', 'GER', '1978-09-09', 184, 64);
INSERT INTO zawodnicy VALUES (8, 'Georg', 'SPAETH', 'GER', '1981-02-24', 187, 68);
INSERT INTO zawodnicy VALUES (9, 'Matti', 'HAUTAMAEKI', 'FIN', '1981-07-14', 174, 57);
INSERT INTO zawodnicy VALUES (10, 'Tami', 'KIURU', 'FIN', '1976-09-13', 183, 59);
INSERT INTO zawodnicy VALUES (11, 'Janne', 'AHONEN', 'FIN', '1977-05-11', 184, 67);
INSERT INTO zawodnicy VALUES (12, 'Martin', 'HOELLWARTH', 'AUT', '1974-04-13', 182, 67);
INSERT INTO zawodnicy VALUES (13, 'Thomas', 'MORGENSTERN', 'AUT', '1986-10-30', 174, 57);
INSERT INTO zawodnicy VALUES (15, 'Tommy', 'INGEBRIGTSEN', 'NOR', '1977-08-08', 179, 56);
INSERT INTO zawodnicy VALUES (16, 'Bjoern-Einar', 'ROMOEREN', 'NOR', '1981-04-01', 182, 63);
INSERT INTO zawodnicy VALUES (17, 'Roar', 'LJOEKELSOEY', 'NOR', '1976-05-31', 175, 62);
INSERT INTO zawodnicy VALUES (14, 'Alan', 'ALBORN', 'USA', '1980-12-13', 177, 57);
INSERT INTO zawodnicy VALUES (1, 'Adam', 'MAŁYSZ', 'POL', '1977-12-03', 169, 60);
select * from zawodnicy;
INSERT INTO zawodnicy VALUES (2, 'Marcin', 'BACHLEDA', 'POL', '1982-09-04', 166, 56);
alter table kibice change data_ur_ data_ur_k date;
INSERT INTO kibice (imie_k, nazwisko_k, kraj) VALUES ('Jan', 'Kowalski', 'POL');
INSERT INTO kibice (imie_k, nazwisko_k, wzrost) VALUES ('John', 'Smith', 172);
INSERT INTO kibice (imie_k, nazwisko_k, data_ur_k) VALUES ('Anna', 'Zawadzka', '1977-12-23');
select * from kibice;
select * from zawody;
INSERT INTO zawody VALUES (1, 1, '2017-01-23');
INSERT INTO zawody VALUES (2, 7, '2016-11-15');
INSERT INTO zawody VALUES (3, 3, '2016-12-26');
delete from zawodnicy where nazwisko = 'anonim';
select * from zawodnicy;
INSERT INTO zawodnicy VALUES (4, 'Alexander', 'HERR', 'GER', '1978-10-04', 173, 65);
INSERT INTO zawodnicy VALUES (5, 'Stephan', 'HOCKE', 'GER', '1983-10-20', 178, 59);
INSERT INTO zawodnicy VALUES (6, 'Martin', 'SCHMITT', 'GER', '1978-01-29', 181, 64);
#MS19
select imie, nazwisko, kraj from zawodnicy where kraj='POL';
select imie, nazwisko, wzrost, wzrost+30 as 'dlugosc nart' from zawodnicy;
select distinct kraj from zawodnicy;
select imie, nazwisko, wzrost, wzrost+30 as 'dlugosc nart', waga, waga*1.15 as 'waga calkowita' from zawodnicy;
select * from zawodnicy;
select * from trenerzy;
#MS20
select kraj, imie, nazwisko from zawodnicy;
#MS21
select imie, nazwisko, wzrost*1.46 as 'max długość nart' from zawodnicy;
#MS22 BMI = masa * wzrost^2
select imie, nazwisko, round(waga/POW((wzrost/100),2), 2) as 'BMI' from zawodnicy;
select round(pow(25, 1/3), 2);
SELECT TRUNCATE(-1263,8); 
select curdate(), utc_date(), curtime(), utc_time(), now(), sysdate(), unix_timestamp(), utc_timestamp();
select month('2044-09-09'), day(now()) - day('2044-09-09');
select (hour(now()) - minute(now()) + second(now()));
select date_format(now(), '%d dzień roku %y');
select quarter(now()), dayofyear(now()), dayofweek(now());
select week(now());
select datediff('2016-05-04', now());
#MS23
select imie, nazwisko, date_format(data_ur, '%d.%m.%Y r.') as 'data urodzenia' from zawodnicy;
select imie, nazwisko, concat(dayofyear(data_ur), date_format(data_ur, ' dnia %Y roku')) as 'data urodzenia' from zawodnicy;
#MS24
select imie, nazwisko, round(waga/pow((wzrost/100), 2), 2) as 'BMI2', round(waga/pow((wzrost/100), 2), 3) as 'BMI3' from zawodnicy;
#MS25
select imie, nazwisko, wzrost, floor(wzrost*1.47) as 'max dł nart' from zawodnicy;
select concat(imie, ' ', nazwisko, ' (', kraj, ')') from zawodnicy;
#MS26
SELECT 
    CONCAT(UPPER(SUBSTR(nazwisko, 1, 1)),
            SUBSTR(LOWER(nazwisko), 2)) AS Nazwisko
FROM
    zawodnicy;
SELECT CONCAT(LOWER(SUBSTR(imie, 1, 1)), UPPER(SUBSTR(imie, 2))) AS 'Dziwne imię', CONCAT(UPPER(SUBSTR(nazwisko, 1, 1)), LOWER(SUBSTR(nazwisko, 2))) AS 'Nazwisko' FROM zawodnicy;
use skoczkowie;
select lpad(imie, 15, '0') from zawodnicy;
select concat_ws(' ', 'Twoje imię to:', imie, ', a nazwisko:', nazwisko) as zdanie from zawodnicy;
select concat(nazwisko,',', space(5), data_ur) from zawodnicy;
select concat(imie, space(length(nazwisko)+2), data_ur) as 'Dane zawodnika' from zawodnicy;
select imie, nazwisko, replace(kraj, 'GER', 'POL') as 'nowy kraj' from zawodnicy;
select imie, nazwisko, substr(data_ur, 1, 4) as 'wiek' from zawodnicy;
select imie, nazwisko, (year(now()) - substr(data_ur, 1, 4)) as 'wiek' from zawodnicy;
select imie like 'adam' as 'Czy jest Adam' from zawodnicy;
select strcmp('adam', 'adaś');
select imie, nazwisko, (data_ur regexp '[0-9][0-9][0-9][0-9]-[0-1][0-9]-[0-3][0-9]') from zawodnicy;
select soundex('deszcz'), soundex('for');
select imie, nazwisko, find_in_set(imie, 'Czy,jest,tutaj,Matti,?') from zawodnicy;
select imie, nazwisko, locate(imie, 'CZy jest Adam?') from zawodnicy;
select imie, nazwisko, locate('at', nazwisko) from zawodnicy;
select imie, nazwisko, instr(nazwisko, 'er') from zawodnicy;
select make_set(4, imie, nazwisko, kraj) as wykaz from zawodnicy;
select export_set(1, '1', '0','|', 10);
select * from zawodnicy where kraj='POL';
select * from zawodnicy where wzrost > 180;
SELECT 
    *
FROM
    zawodnicy
WHERE
    wzrost > 180 AND kraj = 'fin';
select imie, nazwisko, 
case when (waga/pow((wzrost/100), 2)) < 18 then
 'skoczek za lekki' 
when (waga/pow((wzrost/100), 2)) <= 25 then
 'waga w normie'
 else 'skoczek za ciężki'
end as 'BMI'
from zawodnicy;
select imie_t, nazwisko_t, coalesce(data_ur_t, 'Brak danych') from trenerzy;
SELECT 
    imie,
    nazwisko,
    CASE
        WHEN (YEAR(NOW()) - YEAR(data_ur)) < 40 THEN 'młodszy niż 40 lat'
        WHEN data_ur is null then 'brak danych'
        ELSE 'ma 40 lat lub więcej'
    END AS Wiek
FROM
    zawodnicy;
select imie, nazwisko, data_ur,
case 
when zawodnicy.data_ur < (select data_ur_t from trenerzy where kraj = zawodnicy.kraj) then 'zawodnik młodszy od trenera'
when zawodnicy.data_ur > (select data_ur_t from trenerzy where kraj = zawodnicy.kraj) then 'zawodnik starszy od trenera'
else 'zawodnik i trener mają tyle samo lat'
end as 'porównanie wieku'
from zawodnicy;

select nazwisko, imie from zawodnicy order by nazwisko desc, imie asc limit 10;
select nazwisko, imie from zawodnicy order by nazwisko desc limit 10 offset 3;
select imie, nazwisko, kraj from zawodnicy where kraj = 'GER' or kraj = 'AUT';
select imie, nazwisko, waga, wzrost from zawodnicy where (waga/pow((wzrost/100), 2)) < 18 order by nazwisko;
select imie, nazwisko, data_ur from zawodnicy where (year(now()) - year(data_ur) > 40) order by data_ur;
select imie_t, nazwisko_t, data_ur_t from trenerzy where data_ur_t is null;
select imie, nazwisko, data_ur from zawodnicy where month(data_ur) <= 3 or month(data_ur) >= 11 order by nazwisko;
select imie, nazwisko, wzrost from zawodnicy order by wzrost desc;
select * from zawodnicy;
select imie, nazwisko, wzrost from zawodnicy order by wzrost desc, nazwisko;
select * from zawodnicy where kraj != 'FIN' order by kraj, nazwisko;
SELECT 
    imie,
    nazwisko,
    kraj,
    CASE
        WHEN kraj = 'fin' THEN 'Zawodnik pochodzi z Finlandii'
    END AS decyzja
FROM
    zawodnicy
ORDER BY kraj , nazwisko;

SELECT 
    CONCAT(imie, ' ', nazwisko, ' (', kraj, ')') AS 'zawodnicy'
FROM
    zawodnicy
ORDER BY CONCAT(imie, ' ', nazwisko, ' (', kraj, ')');
select * from trenerzy where data_ur_t is not null order by data_ur_t;
select * from zawodnicy where (waga/pow((wzrost/100), 2)) >= 18 order by (waga/pow((wzrost/100), 2));
select *, round(waga/pow((wzrost/100), 2), 2) as 'BMI', case when round(waga/pow((wzrost/100), 2), 2) < 18 then
 'skoczek za lekki' 
when round(waga/pow((wzrost/100), 2), 2) <= 25 then
 'waga w normie'
 else 'skoczek za ciężki'
end as 'Werdykt' from zawodnicy order by round(waga/pow((wzrost/100), 2), 2), nazwisko;
#MS50
select id_skoczka, imie, nazwisko from zawodnicy order by rand();
select imie, nazwisko, wzrost from zawodnicy order by wzrost desc, nazwisko limit 1 offset 1;
#nie działa
select *, (year(now()) - year(data_ur_t)) as 'wiek' from trenerzy where data_ur_t is not null order by (year(now()) - year(data_ur_t)), nazwisko_t
union
select *, (year(now()) - year(data_ur_t)) as 'wiek' from trenerzy where data_ur_t is null order by (year(now()) - year(data_ur_t)), nazwisko_t;
#nowe
select imie as imie_suma, nazwisko as nazwisko_suma, kraj as kraj, 'skoczek' as rola from zawodnicy
union
select imie_t, nazwisko_t, kraj, 'trener' from trenerzy order by kraj;
select * from zawodnicy, trenerzy where zawodnicy.kraj = trenerzy.kraj;
#MS55
select zawody.data_z, skocznie.nazwa, skocznie.miasto, skocznie.kraj_s from zawody, skocznie where zawody.id_skoczni = skocznie.id_skoczni;
#MS56
select zawodnicy.imie, zawodnicy.nazwisko, trenerzy.imie_t, trenerzy.nazwisko_t from zawodnicy natural join trenerzy;
#MS57
select zawodnicy.imie, zawodnicy.nazwisko, 'trener:' as 'trener', trenerzy.imie_t, trenerzy.nazwisko_t from zawodnicy natural left join trenerzy;
#MS58
select * from zawodnicy natural right join trenerzy;
#MS59
select trenerzy.* from trenerzy natural left join zawodnicy where zawodnicy.id_skoczka is null;
#MS60
select distinct trenerzy.* from trenerzy natural left join zawodnicy where zawodnicy.id_skoczka is not null;
#MS61
select zawodnicy.* from zawodnicy natural left join trenerzy where trenerzy.nazwisko_t is null;
#MS62
select zawody.data_z, skocznie.nazwa, skocznie.miasto from zawody natural join skocznie;
#MS63
SELECT 
    zawodnicy.imie,
    zawodnicy.nazwisko,
    zawody.id_zawodow,
    skocznie.nazwa,
    skocznie.miasto,
    skocznie.kraj_s
FROM
    zawodnicy
        JOIN
    skocznie ON (kraj = kraj_s)
        NATURAL JOIN
    zawody;
#MS64
select zawodnicy.imie, zawodnicy.nazwisko, (year(now()) - year(zawodnicy.data_ur)) as 'wiek', trenerzy.nazwisko_t, (year(now()) - year(trenerzy.data_ur_t)) as 'wiek t' from zawodnicy natural join trenerzy where (year(now()) - year(zawodnicy.data_ur)) > (year(now()) - year(trenerzy.data_ur_t));
SELECT 
    zawodnicy.imie,
    zawodnicy.nazwisko,
    (YEAR(NOW()) - YEAR(zawodnicy.data_ur)) AS 'wiek',
    zawodnicy.kraj,
    trenerzy.nazwisko_t,
    (YEAR(NOW()) - YEAR(trenerzy.data_ur_t)) AS 'wiek t',
    trenerzy.kraj
FROM
    zawodnicy
        NATURAL JOIN
    trenerzy
WHERE
    (YEAR(NOW()) - YEAR(zawodnicy.data_ur)) < (YEAR(NOW()) - YEAR(trenerzy.data_ur_t))
ORDER BY zawodnicy.kraj , zawodnicy.nazwisko;
#MS65
SELECT 
    z1.imie,
    z1.nazwisko,
    z1.wzrost,
    z2.wzrost,
    z2.imie,
    z2.nazwisko,
    z1.kraj,
    z2.kraj
FROM
    zawodnicy AS z1
        JOIN
    zawodnicy AS z2 ON 
		(z1.wzrost < z2.wzrost
        AND 
        z1.kraj = z2.kraj)
ORDER BY z1.kraj;
#MS66
select kraj, count(*) from zawodnicy group by kraj order by count(*) desc;
#67
select count(*) from zawodnicy;
#68
select kraj, count(*) from zawodnicy where wzrost > 180 group by kraj order by count(*) desc;
#69
select kraj, avg(wzrost), sum(waga) from zawodnicy group by kraj order by avg(wzrost) desc;
use skoczkowie;
#MS66
select kraj, count(*) from zawodnicy group by kraj order by count(*) desc;
#MS67
select count(*) from zawodnicy;
#MS70
select kraj, max(wzrost) from zawodnicy group by kraj order by max(wzrost) desc;
#MS71
select max(wzrost) from zawodnicy;
#MS72
select quarter(data_ur) as kwartał, count(*) from zawodnicy group by kwartał;
#MS73
select year(data_ur) as rok, quarter(data_ur) as kwartał, count(*) from zawodnicy group by rok, kwartał;
INSERT INTO zawodnicy VALUES (13, 'Thomas', 'MORGENSTERN', 'AUT', '1986-10-30', 174, 57);
DELETE FROM zawodnicy WHERE nazwisko = 'Morgenstern';
select round(count(*)/count(distinct kraj), 0) as 'średnia wielkość drużyny' from zawodnicy;
#MS75
select kraj, count(wzrost > 180) from zawodnicy group by kraj;
select kraj, wzrost > 180, count(wzrost > 180) from zawodnicy group by nazwisko;
select kraj, count(*) from zawodnicy where wzrost > 180 group by kraj having count(*) > 1;
#MS76
select kraj, round(avg(wzrost)) as wzrost_sr from zawodnicy group by kraj having wzrost_sr >= 180;
#MS dodatkowe
select imie nazwisko, waga/pow((wzrost/100), 2) as BMI from zawodnicy;
select 'BMI < 18' as BMI, count(*) from zawodnicy where waga/pow((wzrost/100), 2) < 18 
union
select 'BMI w normie', count(*) from zawodnicy where waga/pow((wzrost/100), 2) >= 18 and waga/pow((wzrost/100), 2) <= 25
union
select 'BMI > 25', count(*) from zawodnicy where waga/pow((wzrost/100), 2) > 25;
select waga/pow((wzrost/100), 2) >= 18 as BMI, count(*) from zawodnicy group by BMI;
#MS77
select imie, nazwisko, wzrost from zawodnicy where wzrost >= (select wzrost from zawodnicy where nazwisko = 'Morgenstern') order by wzrost desc;
#MS78
select imie, nazwisko, waga from zawodnicy where waga >= (select waga from zawodnicy where nazwisko = 'Małysz') and waga <= (select waga from zawodnicy where nazwisko = 'Ahonen') order by waga desc;
#MS79
select imie, nazwisko, wzrost, waga from zawodnicy where wzrost > (select wzrost from zawodnicy order by waga desc limit 1);
#MS80
select imie, nazwisko, data_ur from zawodnicy where (data_ur > (select data_ur_t from trenerzy where nazwisko_t = 'Kuttin'));
#MS81
select imie, nazwisko, wzrost from zawodnicy where (wzrost = (select wzrost from zawodnicy where nazwisko = 'ahonen') and nazwisko != 'ahonen');
#MS82
select imie, nazwisko from zawodnicy where wzrost = (select max(wzrost) from zawodnicy);
select max(wzrost) from zawodnicy;
#zawodnicy drudzy w kolejności co do wzrostu
select imie, nazwisko from zawodnicy where wzrost = (select wzrost from zawodnicy order by wzrost desc limit 1 offset 1);
#MS83
select imie, nazwisko, waga from zawodnicy where waga > (select avg(waga) from zawodnicy);
#MS84
select imie, nazwisko, waga from zawodnicy where waga > (select avg(waga) from zawodnicy where kraj = 'pol');
select avg(waga) from zawodnicy where kraj = 'pol';
#MS85 - Jak dodać kolumnę ze średnią wagą
select imie, nazwisko, kraj, waga from zawodnicy as z1 where waga > (select avg(z2.waga) from zawodnicy as z2 where z1.kraj = z2.kraj) order by kraj;
#MS86
select kraj, sum(wzrost > 180) as '> 180 cm' from zawodnicy group by kraj order by sum(wzrost > 180) desc;
#MS87
create view pol as select imie, nazwisko, kraj from zawodnicy where kraj = 'pol';
create view ger as select imie, nazwisko, kraj from zawodnicy where kraj = 'ger';
create view fin as select imie, nazwisko, kraj from zawodnicy where kraj = 'fin';
create view aut as select imie, nazwisko, kraj from zawodnicy where kraj = 'aut';
create view nor as select imie, nazwisko, kraj from zawodnicy where kraj = 'nor';
create view usa as select imie, nazwisko, kraj from zawodnicy where kraj = 'usa';
select * from ger;
create view zit as select imie, nazwisko, imie_t, nazwisko_t from zawodnicy natural left join trenerzy;
select * from zit;
alter view zit as select imie, nazwisko, zawodnicy.kraj, 'trener: ' as 'trener:', imie_t, nazwisko_t from zawodnicy natural left join trenerzy;
drop view zit;
select * from pol union select * from ger union select * from fin union select * from aut union select * from nor union select * from usa;
#MS88
alter table trenerzy add liczba_zawodnikow int;
update trenerzy set liczba_zawodnikow = 2 where kraj = 'aut';
update trenerzy set liczba_zawodnikow = 3 where kraj = 'fin';
update trenerzy set liczba_zawodnikow = 5 where kraj = 'ger';
update trenerzy set liczba_zawodnikow = 3 where kraj = 'nor';
update trenerzy set liczba_zawodnikow = 3 where kraj = 'pol';
update trenerzy set liczba_zawodnikow = 1 where kraj = 'usa';
update trenerzy set liczba_zawodnikow = 0 where kraj = 'jpn';

create trigger nowy_z
after insert on zawodnicy
for each row
update trenerzy set liczba_zawodnikow = liczba_zawodnikow + 1 where kraj = new.kraj;
insert into zawodnicy values (3, 'Nowy', 'Austryjak', 'aut', '1974-10-05', 180, 63);
insert into zawodnicy values (33, 'Nowy', 'Polak', 'POL', '1975-10-12', 1179, 65);

create trigger koniec_k
after delete on zawodnicy for each row
update trenerzy set liczba_zawodnikow = liczba_zawodnikow - 1 where kraj = old.kraj;
drop trigger koniec_k;
delete from zawodnicy where imie = 'nowy';
CREATE database pracownicy;
use pracownicy;

CREATE TABLE uczestnicy (
    id INT PRIMARY KEY AUTO_INCREMENT,
    imię VARCHAR(30) NOT NULL,
    nazwisko VARCHAR(50) DEFAULT 'Anonim'
);
#drop table uczestnicy;
describe uczestnicy;
alter table uczestnicy change nazwisko nazwisko_u varchar(50);
alter table uczestnicy modify nazwisko_u varchar(20);
alter table uczestnicy add (pesel varchar(11), data_ur date);
alter table uczestnicy modify pesel varchar(11) unique;


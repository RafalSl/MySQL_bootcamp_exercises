USE cwiczenia_dodatkowe;
#Sprawdzamy, czy firmy opłaciła wszystkie faktury
SELECT SUM(kwota) AS 'do zapłaty' FROM faktury WHERE firma = 'Huta Szkla Plock';
SELECT SUM(kwota) AS 'zapłacone' FROM przelewy WHERE firma = 'Huta Szkla Plock';

SELECT SUM(kwota) AS 'do zapłaty' FROM faktury GROUP BY firma;
SELECT SUM(kwota) AS 'zapłacone' FROM przelewy GROUP BY firma;
#obliczamy saldo
SELECT przelewy.firma, SUM(faktury.kwota) AS do_zaplaty, SUM(przelewy.kwota) AS zaplacone, SUM(faktury.kwota) - SUM(przelewy.kwota) AS saldo, CASE WHEN SUM(faktury.kwota) - SUM(przelewy.kwota) = 0 THEN 'faktury uregulowane' WHEN SUM(faktury.kwota) - SUM(przelewy.kwota) < 0 THEN 'niedopłata' ELSE 'nadpłata' END AS info FROM faktury, przelewy WHERE faktury.firma = przelewy.firma GROUP BY firma;
#poprawić
SELECT faktury.firma, SUM(faktury.kwota) AS do_zaplaty, SUM(przelewy.kwota) AS zaplacone FROM faktury, przelewy WHERE faktury.firma = przelewy.firma GROUP BY firma;


#Jakie kwoty na fakturach w podziale na kwartały
SELECT YEAR(data_wystawienia) AS rok, QUARTER(data_wystawienia) AS kwartal, SUM(kwota) FROM faktury GROUP BY rok DESC, kwartal DESC;
#Saldo po latach
SELECT YEAR(faktury.data_wystawienia) AS rok, SUM(faktury.kwota) AS s_faktur, SUM(przelewy.kwota) AS s_przelwow, SUM(faktury.kwota) - SUM(przelewy.kwota) AS saldo FROM faktury, przelewy GROUP BY rok;
-- Verificare constrangeri

-- Constrangere pt nr de telefon. Testez telefon_client in tabela CLIENT. Similar pentru telefon_angajat si telefon_restaurant.

-- a) Testez sa fie doar cifre 
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Acornicesei', 'Andreea', 6020715890123, '099abs6123', DATE '1978-06-15');

-- b) Testez sa aiba lungimea de 10 caractere
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Acornicesei', 'Andreea', 6020715890123, '07122396123', DATE '1978-06-15');

-- Constrangere pentru nume. Testez nume_client in tabela CLIENT. Similar pentru  prenume_client, nume_eveniment, nume_restaurant, nume_angajat, prenume_angajat, functie.

-- Testez sa aiba doar litere 
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('999rnicesei', 'Andreea', 6020715890123, '0719612300', DATE '1978-06-15');

-- Testez sa aiba cel putin 2 caractere
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('A', 'Andreea', 6020715890123, '0719612300', DATE '1978-06-15');

insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Acornicesei', 'Andreea', 6020715890123, '0712239623', DATE '1978-06-15');

-- Constrangere pentru Nr_sali > 0, in tabela SALA. Similar  nr_locuri, nr_persoane, pret_eveniment, pret_sala
insert into restaurant(nume_restaurant, adresa_restaurant, telefon_restaurant, nr_sali) 
values ('Manhattan', 'Drumul Odaii, Nr. 34-36, Otopeni', '0728808029', 0);

-- Constrangere pentru data_eveniment. Aceasta trebuie sa fie dupa SYSDATE.
insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2022-12-01', 60, 'Majorat', 15000, 1, 1);

-- Constrangere pentru Data_nastere_angajat. Trebuie aleasa astfel incat angajatul sa fie major (inainte de 2004-12-01). Similar Data_nastere_client
insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat) 
values ('Apostol', 'Andrei', 102254673731, '0729183214', 'ospatar', 2, DATE '2005-02-25');

-- Constrangere UNIQUE
-- a) Testez pentru CNP_client. Similar CNP_angajat
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Anghel', 'Maria', 2780612290123, '0789123623', DATE '1978-06-15');
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Ciur', 'Catalin', 2780612290123, '0722773623', DATE '1989-07-12');

-- b) Testez pentru (Id_sala, Data_eveniment) in tabela Eveniment
insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2025-12-27', 60, 'Majorat', 15000, 1, 1);
insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2025-12-27', 200, 'Nunta', 50000, 2, 1);


-- Select clientul care organizeaza evenimentul
select c.id_client, c.nume_client, c.prenume_client, c.telefon_client, e.nume_eveniment
    from client c JOIN eveniment e on
        e.id_client = c.id_client
    where e.id_eveniment = '2';
    
-- Select clienti care organizeaza NUNTA
select  e.nume_eveniment, c.id_client, c.nume_client, c.prenume_client, c.telefon_client
    from client c JOIN eveniment e on
        e.id_client = c.id_client
    where e.nume_eveniment = 'Nunta';
    
-- Select clienti care organizeaza evenimente in anul 2024
select  e.data_eveniment, e.nume_eveniment, c.id_client, c.nume_client, c.prenume_client, c.telefon_client
    from client c JOIN eveniment e on
        e.id_client = c.id_client
    where e.data_eveniment BETWEEN to_date('01.01.2024', 'DD.MM.YYYY') AND to_date('31.12.2024', 'DD.MM.YYYY');
    
    
-- Selectare angajati asignati evenimentului cu id_eveniment = 3
select e.id_eveniment, a.id_angajat, a.nume_angajat, a.prenume_angajat, a.functie, e.data_eveniment, e.nume_eveniment
    from angajat a JOIN angajati_per_eveniment ae ON
        a.id_angajat = ae.id_angajat
    LEFT JOIN eveniment e ON
        ae.id_eveniment = e.id_eveniment
    where ae.id_eveniment = 3;

    
-- Select evenimente din restaurantul 1 in anul 2013
select r.id_restaurant, e.id_sala, e.nume_eveniment, e.data_eveniment, e.nr_persoane    
    from eveniment e JOIN sala s ON
        s.id_sala = e.id_sala
    LEFT JOIN restaurant r ON
        r.id_restaurant = s.id_restaurant
    where r.id_restaurant = 1 and e.data_eveniment BETWEEN to_date('01.01.2023', 'DD.MM.YYYY') AND to_date('31.12.2023', 'DD.MM.YYYY');
    
    
-- Selectare sali din restaurantul cu id_restaurant x
select id_sala, nr_locuri, pret_sala from sala
    where id_restaurant = 2;

-- Selectare angajati care lucreaza la restaurantul cu id_restaurant x
select a.id_angajat, a.nume_angajat, a.telefon_angajat 
    from restaurant r, angajat a
    where r.id_restaurant = a.id_restaurant and r.id_restaurant = 1;

-- Select costul total pe care il suporta clientul (pret_sala + pret_eveniment)
select c.id_client, c.nume_client, c.prenume_client, s.pret_sala, e.pret_eveniment, s.pret_sala + e.pret_eveniment AS "Cost total"
    from client c JOIN eveniment e ON
        e.id_client = c.id_client
    LEFT JOIN sala s ON
        s.id_sala = e.id_sala
    
    
-- Totalul incasarilor estimate pentru restaurantul 1 pana la finalul anului 2023
select sum(s.pret_sala) "Sala", sum(e.pret_eveniment) "Eveniment", sum(s.pret_sala + e.pret_eveniment) AS "Incasari pentru Manhattan in anul 2023"
    from eveniment e JOIN sala s ON
        e.id_sala = s.id_sala
    LEFT JOIN restaurant r ON
        r.id_restaurant = s.id_restaurant
    where e.data_eveniment BETWEEN to_date('01.01.2022', 'DD.MM.YYYY') AND to_date('31.12.2023', 'DD.MM.YYYY') AND r.id_restaurant = 1;
 
-- Select angajati ai restaurantului x per evenimentul y
select e.id_eveniment, a.id_angajat, a.nume_angajat, a.prenume_angajat, a.functie, e.data_eveniment, e.nume_eveniment
    from angajat a JOIN angajati_per_eveniment ae ON
        a.id_angajat = ae.id_angajat
    LEFT JOIN eveniment e ON
        ae.id_eveniment = e.id_eveniment
    LEFT JOIN restaurant r ON
        a.id_restaurant = r.id_restaurant
    where r.id_restaurant = 1 and e.id_eveniment = 1;


-- UPDATE

update eveniment
    set data_eveniment = DATE '2025-05-29'
    where id_eveniment = 4;   
select * from eveniment;

update client
    set telefon_client = '0752674521'
    where nume_client = 'Anghel';    
select * from client;

update angajat
    set functie = 'Manager'
    where id_angajat = 1;
select * from angajat;


-- DELETE

delete from restaurant 
    where nume_restaurant = 'Polizu';
select * from restaurant;


-- Stergere eveniment     
delete from eveniment
    where id_eveniment = 2;
select * from eveniment;

-- Incerc sa selectez angajatii per evenimentul sters: no rows selected
select e.id_eveniment, a.id_angajat, a.nume_angajat, a.prenume_angajat, a.functie, e.data_eveniment, e.nume_eveniment
    from angajat a JOIN angajati_per_eveniment ae ON
        a.id_angajat = ae.id_angajat
    LEFT JOIN eveniment e ON
        ae.id_eveniment = e.id_eveniment
    where ae.id_eveniment = 2; 

-- Vizualizare date
select * from restaurant;
select * from sala;
select * from client;
select * from eveniment;
select * from angajati_per_eveniment;
select * from angajat;



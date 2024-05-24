insert into restaurant(nume_restaurant, adresa_restaurant, telefon_restaurant, nr_sali) 
values ('Manhattan', 'Drumul Odaii, Nr. 34-36, Otopeni', '0728808029', 4);

insert into restaurant(nume_restaurant, adresa_restaurant, telefon_restaurant, nr_sali) 
values ('Magic Ballroom', 'Strada Erou Iancu Nicolae 84', '0729895971', 5);

insert into restaurant(nume_restaurant, adresa_restaurant, telefon_restaurant, nr_sali) 
values ('Americano', 'Soseaua Linia de centura, Voluntari', '0731124389', 2);

insert into restaurant(nume_restaurant, adresa_restaurant, telefon_restaurant, nr_sali) 
values ('Polizu', 'Str. Sf. Gheorghe 9, Afuma?i', '0749530238', 3);




insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat, adresa_angajat) 
values ('Punguta', 'Alexa', 6011267373112, '0725784638', 'ospatar', (select Id_restaurant from restaurant where nume_restaurant = 'Manhattan'),  DATE '2001-05-18', 
'Aleea Prof. Vasile Petrescu, T19, Iasi');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat, adresa_angajat) 
values ('Melisei', 'Geanina', 6021646737312, '0725712738', 'ospatar', (select Id_restaurant from restaurant where nume_restaurant = 'Manhattan'), DATE '2002-02-25', 
'Strada Bucium 30, Ia?i');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat, adresa_angajat) 
values ('Petrescu', 'Iustin', 1931234673732, '0782612738', 'barman', (select Id_restaurant from restaurant where nume_restaurant = 'Manhattan'), DATE '1993-03-06', 
'Calea Chi?in?ului nr. 29, Ia?i');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat, adresa_angajat) 
values ('Dobrescu', 'Emilian', 1986737312113, '0755712738', 'bucatar', (select Id_restaurant from restaurant where nume_restaurant = 'Manhattan'), DATE '1986-02-25', 
'Strada Lasc?r Catargi 50, Ia?i');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat) 
values ('Ionescu', 'Antonio', 5010567373172, '0791873235', 'ospatar', (select Id_restaurant from restaurant where nume_restaurant = 'Manhattan'), DATE '2001-12-14');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat) 
values ('Grecu', 'Alin', 5010567373142, '0792173235', 'ospatar', (select Id_restaurant from restaurant where nume_restaurant = 'Magic Ballroom'), DATE '2001-05-08');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat) 
values ('Apostol', 'Andrei', 1952164673731, '0729183214', 'ospatar', (select Id_restaurant from restaurant where nume_restaurant = 'Magic Ballroom'), DATE '1995-02-25');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat, adresa_angajat) 
values ('Craiu', 'Andreea', 2981212673732, '0702937491', 'barman', (select Id_restaurant from restaurant where nume_restaurant = 'Magic Ballroom'), DATE '1998-05-19', 
'Strada Toma Cozma nr. 41, Ia?i');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat, adresa_angajat) 
values ('Maftei', 'Codrin', 1921242312112, '0799221456', 'bucatar', (select Id_restaurant from restaurant where nume_restaurant = 'Magic Ballroom'), DATE '1992-09-01', 
'Strada Lasc?r Catargi 50, Ia?i');

insert into angajat(nume_angajat, prenume_angajat, cnp_angajat, telefon_angajat, 
functie, id_restaurant, data_nastere_angajat) 
values ('Mihaila', 'Teodor', 1962164673731, '0729183214', 'bucatar', (select Id_restaurant from restaurant where nume_restaurant = 'Magic Ballroom'), DATE '1996-02-25');



insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Anghel', 'Maria', 2780615890123, '0789123623', DATE '1978-06-15');
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Ciur', 'Catalin', 1890712890113, '0722773623', DATE '1989-07-12');
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Ciubuc', 'Mihai', 1930429893247, '0798823623', DATE '1993-04-29');
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Gheorghian', 'Alina', 2810215890123, '0723643622', DATE '1981-02-15');
insert into client(nume_client, prenume_client, cnp_client, telefon_client, data_nastere_client) 
values ('Iancu', 'Cosmin', 1790119890325, '0789664623', DATE '1979-01-19');
insert into client(nume_client, prenume_client, cnp_client, telefon_client) 
values ('Popescu', 'Adrian', 1980323890325, '0783911623');
insert into client(nume_client, prenume_client, cnp_client, telefon_client) 
values ('Vasilescu', 'Stefan', 1810311890325, '0799237123');


insert into sala(nr_locuri, pret_sala, id_restaurant) 
values (280, 2500, 1);
insert into sala(nr_locuri, pret_sala, id_restaurant) 
values (300, 3000, 1);
insert into sala(nr_locuri, pret_sala, id_restaurant) 
values (100, 1000, 1);
insert into sala(nr_locuri, pret_sala, id_restaurant) 
values (150, 1500, 1);
insert into sala(nr_locuri, pret_sala, id_restaurant) 
values (200, 1500, 2);
insert into sala(nr_locuri, pret_sala, id_restaurant) 
values (250, 2000, 2);
insert into sala(nr_locuri, pret_sala, id_restaurant) 
values (300, 2500, 2);


insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2022-12-27', 60, 'Majorat', 15000, 3, 1);
insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2024-07-29', 200, 'Nunta', 25000, 6, 5);
insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2023-01-15', 100, 'Botez', 20000, 1, 4);
insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2024-07-29', 250, 'Nunta', 30000, 2, 6);
insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2023-05-29', 100, 'Banchet', 40000, 5, 6);
insert into eveniment(data_eveniment, nr_persoane, nume_eveniment, pret_eveniment, id_client, id_sala) 
values (DATE '2024-02-18', 40, 'Majorat', 8000, 4, 1);


insert into angajati_per_eveniment(id_angajat, id_eveniment)
values (1, 1);
insert into angajati_per_eveniment(id_angajat, id_eveniment)
values (2, 1);
insert into angajati_per_eveniment(id_angajat, id_eveniment)
values (3, 1);
insert into angajati_per_eveniment(id_angajat, id_eveniment)
values (4, 1);
insert into angajati_per_eveniment(id_angajat, id_eveniment)
values (6, 3);
insert into angajati_per_eveniment(id_angajat, id_eveniment)
values (7, 3);
insert into angajati_per_eveniment(id_angajat, id_eveniment)
values (8, 3);
insert into angajati_per_eveniment(id_angajat, id_eveniment)
values (4, 3);



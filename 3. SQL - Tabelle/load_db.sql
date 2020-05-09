drop database if exists universita;

create database universita;

use universita;

create table studente (
    matricola           numeric(6),
    corso_laurea        varchar(100),
    nome                varchar(20),
    cognome             varchar(20),
    data_nascita        date,
    codice_fiscale      char(16),
    foto                mediumblob
);

create table docente (
    matricola           numeric(6),
    dipartimento        varchar(50),
    nome                varchar(20),
    cognome             varchar(20),
    data_nascita        date,
    codice_fiscale      char(16),
    foto                mediumblob
);

create table modulo (
    codice              char(6),
    nome                varchar(50),
    descrizione         text,
    CFU                 numeric(2)
);

create table esame (
    matricola_studente  numeric(6),
    codice_modulo       char(6),
    matricola_docente   numeric(6),
    data_esame          date,
    voto                numeric(2) default 0,
    note                text
);

insert into studente
    values (652927, 'Informatica e comunicazione digitale sede di Taranto', 'Giuseppe', 'Barnaba', '1994-04-22', 'BRNGPP94D22X000X', null);

insert into docente
    values (538195, 'Informatica', 'Luigi', 'Bini', '1972-10-30', 'BNILGI72L30X000X', null);

insert into modulo
    values ('INF-05', 'Basi di Dati', 'Descrizione del corso', 9);

insert into esame (matricola_studente, codice_modulo, matricola_docente, data_esame)
    values (652927, 'INF-05', 538195, '2020-07-15');

select * from studente;

select * from docente;

select * from modulo;

select * from esame;
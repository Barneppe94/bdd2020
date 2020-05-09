DROP DATABASE IF EXISTS universita;

CREATE DATABASE universita;

USE universita;

CREATE TABLE studente (
    matricola           NUMERIC(6),
    corso_laurea        VARCHAR(10)
        REFERENCES  corso_laurea(codice)
        ON UPDATE   CASCADE
        ON DELETE   NO ACTION,
    nome                VARCHAR(20) NOT NULL,
    cognome             VARCHAR(20) NOT NULL,
    data_nascita        DATE,
    codice_fiscale      CHAR(16) UNIQUE,
    foto                MEDIUMBLOB,

    PRIMARY KEY(matricola, corso_laurea)
);

CREATE TABLE docente (
    matricola           NUMERIC(6),
    dipartimento        VARCHAR(10)
        REFERENCES  dipartimento(codice)
        ON UPDATE   CASCADE
        ON DELETE   NO ACTION,
    nome                VARCHAR(20) NOT NULL,
    cognome             VARCHAR(20) NOT NULL,
    data_nascita        DATE,
    codice_fiscale      CHAR(16) UNIQUE,
    foto                MEDIUMBLOB,

    PRIMARY KEY(matricola, dipartimento)
);

CREATE TABLE modulo (
    codice              CHAR(6) PRIMARY KEY,
    nome                VARCHAR(50) NOT NULL,
    descrizione         TEXT,
    cfu                 NUMERIC(2) CHECK (CFU > 0)
);

CREATE TABLE esame (
    matricola_studente  NUMERIC(6)
        REFERENCES  studente(matricola)
        ON UPDATE   CASCADE
        ON DELETE   NO ACTION,
    codice_modulo       CHAR(6)
        REFERENCES  modulo(codice)
        ON UPDATE   CASCADE
        ON DELETE   NO ACTION,
    matricola_docente   NUMERIC(6)
        REFERENCES  docente(matricola)
        ON UPDATE   CASCADE
        ON DELETE   NO ACTION,
    data_esame          DATE,
    voto                NUMERIC(2) DEFAULT 0
        CHECK (voto >= 0 AND voto <= 30),
    note                TEXT
);

CREATE TABLE corso_laurea (
    codice              VARCHAR(10) PRIMARY KEY,
    nome                VARCHAR(20) NOT NULL,
    descrizione         TEXT
);

CREATE TABLE dipartimento (
    codice              VARCHAR(10) PRIMARY KEY,
    nome                VARCHAR(50) NOT NULL
);

CREATE TABLE sede (
    codice              VARCHAR(10) PRIMARY KEY,
    indirizzo           VARCHAR(50) NOT NULL,
    citta               VARCHAR(20) NOT NULL
);

CREATE TABLE sede_dipartimento (
    codice_sede         VARCHAR(10)
        REFERENCES  sede(codice)
        ON UPDATE   CASCADE
        ON DELETE   NO ACTION,
    codice_dipartimento VARCHAR(10)
        REFERENCES  dipartimento(codice)
        ON UPDATE   CASCADE
        ON DELETE   NO ACTION,
    note                TEXT
);

INSERT INTO studente VALUES
    (701809, "ICD", "Giuseppe", "Barnaba","1994-04-22", "BRNGPP94D22XXXXX", NULL),
    (636486, "MATH", "Roberto", "Dino", "1989-10-30", "DNORBR89L30XXXXX", NULL),
    (925310, "BIO", "Elisa", "Rondino", "1998-05-01", "RNDELS98E01XXXXX", NULL),
    (137449, "ICD", "Francesco", "Tornione", "2000-06-20", "TRNFRN00F20XXXXX", NULL);

INSERT INTO docente VALUES
    (171555, "INFUBA", "Luigi", "Rossi","1962-09-19", "RSSLGI62S19XXXXX", NULL),
    (191340, "BIOUBO", "Mario", "Cortina", "1970-12-23", "CRTMRI70U23XXXXX", NULL),
    (192749, "MATHPBA", "Luisa", "Barba", "1975-11-29", "BRBLSA75V29XXXXX", NULL),
    (400812, "INFUBA", "Martina", "Suntino", "1968-10-04", "SNTMRT68G04XXXXX", NULL);

INSERT INTO modulo VALUES
    ("INF-01", "Programmazione", NULL, 9),
    ("INF-09", "Basi di dati", NULL, 9),
    ("BIO-01", "Biomi", NULL, 12),
    ("MAT-03", "Analisi 1", NULL, 18);

INSERT INTO esame VALUES
    (701809, "INF-01", 171555, "2018-06-20", 27, NULL),
    (137449, "INF-01", 171555, "2018-06-20", 30, NULL),
    (137449, "INF-09", 400812, "2019-01-10", 18, NULL),
    (636486, "MAT-03", 192749, "2020-01-10", 24, NULL);

INSERT INTO corso_laurea VALUES
    ("ICD", "Informatica", NULL),
    ("BIO", "Biologia", NULL),
    ("MATH", "Matematica", NULL);

INSERT INTO dipartimento VALUES
    ("INFUBA", "Informatica"),
    ("BIOUBO", "Biologia"),
    ("MATHPBA", "Matematica");

INSERT INTO sede VALUES
    ("UNIBA", "via Piemonte, 2", "Bari"),
    ("UNIBO", "Piazza della Vittoria, 146", "Bologna"),
    ("POLIBA", "via Piemonte, 40", "Bari");

INSERT INTO sede_dipartimento VALUES
    ("UNIBA", "INFUBA", NULL),
    ("UNIBO", "BIOUBO", NULL),
    ("POLIBA", "MATHPBA", NULL);

SELECT * FROM studente;

SELECT * FROM docente;

SELECT * FROM modulo;

SELECT * FROM esame;

SELECT * FROM corso_laurea;

SELECT * FROM dipartimento;

SELECT * FROM sede;

SELECT * FROM sede_dipartimento;
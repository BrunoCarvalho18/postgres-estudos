CREATE SEQUENCE eu_criei;

SELECT NEXTVAL('eu_criei');

CREATE TEMPORARY TABLE auto(
	id INTEGER PRIMARY KEY DEFAULT NEXTVAL('eu_criei'),
	nome VARCHAR(30) NOT NULL
);


DROP TABLE auto;

INSERT INTO auto(nome) VALUES('Bruno Carvalho');
INSERT INTO auto(id,nome) VALUES('Bruno Carvalho');
INSERT INTO auto(nome) VALUES('Outro nome');

SELECT * FROM auto;

CREATE TYPE CLASSIFICACAO AS ENUM('Livre','12_ANOS','14_ANOS','16_ANOS','18_ANOS')

CREATE TEMPORARY TABLE filme(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	classificacao CLASSIFICACAO
);

INSERT INTO filme(nome,classificacao) VALUES('Bruno','Livre');


SELECT * FROM filme;
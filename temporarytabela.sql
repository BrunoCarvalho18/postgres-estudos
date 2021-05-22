CREATE TEMPORARY table a(
	coluna1 VARCHAR(255) NOT NULL CHECK(coluna1 <> ''),
	coluna2 VARCHAR(255) NOT NULL,
	UNIQUE(coluna1,coluna2)
);

INSERT INTO a VALUES('a','c');
SELECT* FROM a;

ALTER TABLE a RENAME TO teste;
SELECT * FROM teste;

ALTER TABLE teste RENAME coluna1 TO primeira_coluna
ALTER TABLE teste RENAME coluna2 TO segunda_coluna

INSERT INTO teste ("primeira_coluna","segunda_coluna") VALUES ('f','g');
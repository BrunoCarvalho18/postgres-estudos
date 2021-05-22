CREATE FUNCTION primeira_funcao() RETURNS INTEGER AS
  'SELECT (5-3) * 2'
 LANGUAGE SQL;
 
SELECT priemira_funcao() AS numero;

CREATE FUNCTION soma_dois_numeros(numero_1 INTEGER,numero_2 INTEGER) RETURNS INTEGER AS 
     'SELECT numero_1 + numero_2';
    LANGUAGE SQL;
	
SELECT soma_dois_numeros(3,17) AS "soma";


CREATE TABLE a (nome VARCHAR(255)NOT NULL);
DROP FUNCTION cria_a;
CREATE OR REPLACE FUNCTION cria_a(nome VARCHAR)RETURNS void AS $$
    INSERT INTO a (nome) VALUES('Patricia');
$$ LANGUAGE SQL;


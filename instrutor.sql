CREATE TABLE instrutor(
	id SERIAL PRIMARY KEY,
	nome varchar(255) NOT NULL,
	salario DECIMAL(10,2)
);

INSERT INTO instrutor(nome,salario) VALUES('Bruno Carvalho',100);
INSERT INTO instrutor(nome,salario) VALUES('Diogo Masc',200);
INSERT INTO instrutor(nome,salario) VALUES('Nico Stpt',300);
INSERT INTO instrutor(nome,salario) VALUES('Juliana',400);
INSERT INTO instrutor(nome,salario) VALUES('Vinicius',500);

CREATE FUNCTION dobro_do_salario(instrutor) RETURNS DECIMAL AS $$
    SELECT $1.salario * 2 As dobro;
$$ LANGUAGE SQL;

SELECT nome,dobro_do_salario(instrutor.*) AS desejo FROM instrutor;

CREATE FUNCTION cria_instrutor_falso() RETURNS instrutor AS $$
       SELECT 22 AS id, 'Nome falso' AS nome, 200::DECIMAL AS salario;
$$ LANGUAGE SQL;

SELECT * FROM cria_instrutor_falso();

DROP FUNCTION instrutores_bem_pagos
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS SETOF instrutor AS $$
    SELECT * FROM instrutor WHERE salario > valor_salario;
$$ LANGUAGE SQL;


SELECT * FROM instrutores_bem_pagos(300);
CREATE FUNCTION soma_e_produto (numero_1 INTEGER,numero_2 INTEGER,OUT soma INTEGER,OUT produto INTEGER) AS $$
    SELECT numero_1 + numero_2 AS soma,numero_1 * numero_2 AS produto;
$$ LANGUAGE SQL;

CREATE FUNCTION soma_e_produto (salario DECIMAL,OUT nome VARCHAR,OUT salario DECIMAL) RETURNS SETOF record AS $$
    SELECT nome,salario FROM instrutor WHERE salario > valor_salario;
$$ LANGUAGE SQL;

SELECT * FROM soma_e_produto(3,3);
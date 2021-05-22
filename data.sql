SELECT (primeiro_nome || ' ' || ultimo_nome) AS nome_completo,(NOW()::DATE - data_nascimento)/365 AS
idade
FROM aluno;

SELECT (primeiro_nome || ' ' || ultimo_nome) AS nome_completo, 
EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade
FROM aluno;
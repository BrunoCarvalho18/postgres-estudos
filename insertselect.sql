SHOW search_path;

SET search_path TO academico;

CREATE Schema teste;

CREATE TABLE teste.cursos_programacao(
	id_curso INTEGER PRIMARY KEY,
	nome_curso VARCHAR(255) NOT NULL
);

INSERT INTO cursos_programacao 

SELECT academico.curso.id,
       academico.curso.nome
	   FROM academico.curso
	   JOIN academico.categoria ON academico.categoria.id = academico.curso.categoria_id
	  WHERE categoria_id = 2;
	  
SELECT * FROM teste.cursos_programacao ORDER BY 1;

UPDATE teste.cursos_programacao SET nome_curso = 'PHP Avançado III' WHERE id_curso = 10;

-- transações no banco de dados
SELECT * FROM teste.cursos_programacao;
BEGIN;
DELETE FROM teste.cursos_programacao;
ROLLBACK;

BEGIN;
DELETE FROM teste.cursos_programacao WHERE id_curso = 60;
COMMIT;
SELECT * FROM teste.cursos_programacao;





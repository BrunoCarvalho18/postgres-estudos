CREATE VIEW vw_cursos_por_categoria AS SELECT categoria.nome AS categoria,
          COUNT(curso.id) AS numero_cursos
	FROM categoria
	JOIN curso ON curso.categoria_id = categoria.id
	GROUP BY categoria

SELECT * FROM vw_cursos_por_categoria

CREATE VIEW vw_cursos_programacao AS SELECT nome FROM curso WHERE categoria_id = 2;

SELECT * FROM vw_cursos_programacao

SELECT * FROM vw_cursos_programacao WHERE nome = 'PHP';

SELECT categoria.id AS categoria_id, vw_cursos_por_categoria.*
   FROM vw_cursos_por_categoria
   JOIN categoria ON categoria.nome = vw_cursos_por_categoria.categoria;
   
   
CREATE SCHEMA academico;
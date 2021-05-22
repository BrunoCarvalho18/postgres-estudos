CREATE TABLE aluno (
   id SERIAL,
   nome VARCHAR(255),
   cpf CHAR(11),
   observacao TEXT,
   idade INTEGER,
   dinheiro NUMERIC(10,2),
   altura real,
   ativo BOOLEAN,
   data_nascimento DATE,
   hora_aula TIME,
   matriculado_em timestamp
);

INSERT INTO aluno(nome,cpf,observacao,idade,dinheiro,altura,ativo,data_nascimento,hora_aula,matriculado_em) VALUES(
	'Lucas',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla varius semper neque, id viverra ex ornare ut. Nu
	c faucibus eget ex in imperdiet. Suspendisse non placerat eros. Praesent imperdiet cursus lectus, eu tristique er
	at mattis id. Fusce porta, leo id maximus ultricies, ex massa tristique enim, vel ultricies nisi sem eget ipsum. Donec v
	el risus eu nisi auctor mollis in id erat. Suspendisse tempus magna at sagittis porta.',
    35,
	100.52,
	1.81,
	TRUE,
	'1994-04-19',
	'17:30:00',
	'2020-02-08 12:35:45'
    );

SELECT * FROM aluno;

SELECT * FROM aluno WHERE id =1;

UPDATE aluno 
    SET nome = 'Nico',
	cpf= '10987654321',
	observacao = 'Teste',
	idade =38,
	dinheiro = 15.23,
	altura = 1.90,
	ativo = FALSE,
	data_nascimento = '1980-01-15',
	hora_aula = '13:00:00',
	matriculado_em = '2020-01-02 15:00:00'
WHERE id = 1 ;

SELECT * 
   FROM aluno
   WHERE nome = 'Nico';
   
DELETE
   FROM aluno
   WHERE nome = 'Lucas';
   
SELECT nome AS "Nome do Aluno",
       idade, 
	   matriculado_em AS quando_se_matriculou
    FROM aluno;
	
INSERT INTO aluno(nome) VALUES ('Vinicius Dias');
INSERT INTO aluno(nome) VALUES ('Nico Steppat');
INSERT INTO aluno(nome) VALUES ('Joao Roberto');
INSERT INTO aluno(nome) VALUES ('Diogo');

SELECT * 
  FROM aluno
 WHERE nome LIKE '_ucas';
 
SELECT * 
  FROM aluno
 WHERE nome NOT LIKE 'Di_go';
 
SELECT * 
  FROM aluno
 WHERE nome NOT LIKE '%s';
 
SELECT * 
  FROM aluno
 WHERE nome NOT LIKE '%i%a%';
 
SELECT * 
 FROM aluno
 WHERE cpf IS NOT NULL
 
SELECT * FROM 
  aluno
 WHERE idade <= 35
 
 SELECT * FROM 
   aluno
 WHERE idade BETWEEN 10 AND 40
 
 SELECT * FROM aluno WHERE ativo = true
 
 SELECT * 
   FROM aluno
   WHERE nome LIKE 'B%'
   AND cpf IS NOT NULL;
 
 SELECT * 
   FROM aluno
   WHERE nome LIKE 'Bruno'
    OR nome LIKE 'Nico%'

DROP TABLE curso;

 CREATE TABLE curso(
	 id INTEGER PRIMARY KEY,
	 nome VARCHAR(255)
 );
 
 INSERT INTO curso (id,nome) VALUES (NULL,NULL);
 INSERT INTO curso (id,nome) VALUES (1,'HTML');
  INSERT INTO curso (id,nome) VALUES (2,'JAVASCRIPT');
 
 SELECT * FROM curso;
 
 DROP TABLE aluno;
 
 CREATE TABLE aluno(
	 id SERIAL PRIMARY KEY,
	 nome VARCHAR(255) NOT NULL
 );
 
 INSERT INTO aluno(nome) VALUES ('Diogo');
 INSERT INTO aluno(nome) VALUES ('Vinicius');
 INSERT INTO aluno(nome) VALUES ('Bruno');
 
 SELECT * FROM aluno;
 
 SELECT * FROM curso;
 
 DROP TABLE aluno_curso;
 
 CREATE TABLE aluno_curso(
	 aluno_id INTEGER,
	 curso_id INTEGER,
	 PRIMARY KEY (aluno_id,curso_id)
 );
 
 CREATE TABLE aluno_curso(
	 aluno_id INTEGER,
	 curso_id INTEGER,
	 PRIMARY KEY (aluno_id,curso_id),
	 
	 FOREIGN KEY (aluno_id)
	 REFERENCES aluno(id),
	 
	 FOREIGN KEY (curso_id)
	 REFERENCES curso(id)
	 
    );
 
 INSERT INTO aluno_curso (aluno_id,curso_id) VALUES(1,1);
 INSERT INTO aluno_curso (aluno_id,curso_id) VALUES(2,1);
 INSERT INTO aluno_curso (aluno_id,curso_id) VALUES(3,1);
 INSERT INTO aluno_curso (aluno_id,curso_id) VALUES(1,3);
 
 SELECT * FROM aluno WHERE id = 1;
 
 SELECT aluno.nome as "Nome do Aluno",
        curso.nome as "Nome do Curso"
     FROM aluno
	 JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	 JOIN curso       ON curso.id = aluno_curso.curso_id

  INSERT INTO aluno_curso(aluno_id ,curso_id) VALUES (3,2);
  
  INSERT INTO aluno(nome) VALUES('Nico');
  
  INSERT INTO curso(id,nome) VALUES (3,'CSS');
  
  SELECT aluno.nome as "Nome do Aluno",
        curso.nome as "Nome do Curso"
     FROM aluno
	LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	LEFT JOIN curso       ON curso.id = aluno_curso.curso_id
	
  SELECT aluno.nome as "Nome do Aluno",
        curso.nome as "Nome do Curso"
     FROM aluno
	RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	RIGHT JOIN curso       ON curso.id = aluno_curso.curso_id
	
    SELECT aluno.nome as "Nome do Aluno",
           curso.nome as "Nome do Curso"
     FROM aluno
	FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	FULL JOIN curso       ON curso.id = aluno_curso.curso_id
	
	SELECT aluno.nome as "Nome do Aluno",
           curso.nome as "Nome do Curso"
     FROM aluno
	 CROSS JOIN curso
	 
	 SELECT * FROM aluno
	 
	 DROP TABLE aluno_curso
	 CREATE TABLE aluno_curso(
	 aluno_id INTEGER,
	 curso_id INTEGER,
	 PRIMARY KEY (aluno_id,curso_id),
	 
	 FOREIGN KEY (aluno_id)
	 REFERENCES aluno(id)
	 ON DELETE CASCADE
	 ON UPDATE CASCADE,
	 
	 FOREIGN KEY (curso_id)
	 REFERENCES curso(id)
	 
    );
	
	SELECT * FROM aluno_curso;
	
	DELETE FROM aluno WHERE id = 1;
	
	SELECT
	    aluno.id  as aluno_id,
	    aluno.nome as "Nome do Aluno",
		curso.id   as curso_id,
        curso.nome as "Nome do Curso"
     FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso       ON curso.id = aluno_curso.curso_id
	
	UPDATE aluno
	   SET id = 10
	   WHERE id = 2;
	   
	 SELECT * FROM aluno;
	 
	 CREATE TABLE funcionarios(
		 id SERIAL PRIMARY KEY,
		 matricula VARCHAR(10),
		 nome      VARCHAR(255),
		 sobrenome VARCHAR(255)
	 );
	 
	 INSERT INTO funcionarios(matricula,nome,sobrenome) VALUES ('M001','Diogo','Mascarenhas');
	 INSERT INTO funcionarios(matricula,nome,sobrenome) VALUES ('M002','Bruno','Carvalho');
	 INSERT INTO funcionarios(matricula,nome,sobrenome) VALUES ('M003','Nico','Stpat');
	 INSERT INTO funcionarios(matricula,nome,sobrenome) VALUES ('M004','Joao','Roberto');
	 INSERT INTO funcionarios(matricula,nome,sobrenome) VALUES ('M005','Diogo','Mascarenhas');
	 INSERT INTO funcionarios(matricula,nome,sobrenome) VALUES ('M006','Matheus','Carvalho');
	 INSERT INTO funcionarios(matricula,nome,sobrenome) VALUES ('M007','Dioguinho','Souza');
	 
	 SELECT * FROM funcionarios
	   ORDER BY nome,matricula 
	   
	  SELECT *
	    FROM funcionarios
		ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC
		
	SELECT
	    aluno.id  as aluno_id,
	    aluno.nome as "Nome do Aluno",
		curso.id   as curso_id,
        curso.nome as "Nome do Curso"
     FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso       ON curso.id = aluno_curso.curso_id
	ORDER BY curso.nome, aluno.nome DESC
	
	SELECT * FROM curso
    SELECT * FROM aluno
	SELECT * FROM funcionarios
	
	INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (20,3);
	
	SELECT *
	  FROM funcionarios	
	  ORDER BY nome 
	  LIMIT 5
	  OFFSET 3;
	  
-- COUNT - Retorna a quantidade de registros
-- SUM  -  Retorna a soma dos registros
-- MAX  - Retorna o maior valor dos registros
-- MIN - Retorna o menor valor dos registros
-- AVG - Retorna a média dos registros

SELECT COUNT(id),
       SUM(id),
	   MAX(id),
	   MIN(id),
	   ROUND(AVG(id),0)
	FROM funcionarios;

SELECT DISTINCT 
     nome,
	 sobrenome,
	 COUNT(id)
  FROM funcionarios
  GROUP BY nome, sobrenome
  ORDER BY nome;
  
  SELECT curso.nome,
      COUNT(aluno.id)
	 FROM aluno
	 JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	 JOIN curso  ON curso.id = aluno_curso.curso_id
  GROUP BY 1
  ORDER BY 1
  
 SELECT curso.nome,
        COUNT(aluno.id)
   FROM curso
   LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
   LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
  GROUP BY 1
    HAVING COUNT(aluno.id) > 0

 SELECT nome,
       COUNT(id)
   FROM funcionarios
   GROUP BY nome
   HAVING COUNT(id) = 1;
 
 










SE
CREATE FUNCTION instrutores_internos(id_instrutor INTEGER) RETURNS refcursor AS $$
   DECLARE
     cursor_salarios refcursor;
   BEGIN
     OPEN cursor_salarios FOR SELECT instrutor.salario 
	                       FROM instrutor 
						   WHERE id <> id_instrutor 
						   AND salario > 0;
	RETURN cursor_salarios;
   END;
$$ LANGUAGE plpgsql;
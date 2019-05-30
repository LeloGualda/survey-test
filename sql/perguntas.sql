use mydb;

BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Quantas refeições você faz por dia?', 'Saude');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', '2 refeições'),
        (LAST_INSERT_ID(),'b', '3 refeições'),
        (LAST_INSERT_ID(),'c', '4 refeições'),
        (LAST_INSERT_ID(),'d', '5 ou mais');
COMMIT;


BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Qual é o intervalo médio entre as refeições?', 'Saude');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', '1 hora'),
        (LAST_INSERT_ID(),'b', '2 horas'),
        (LAST_INSERT_ID(),'c', '3 horas'),
        (LAST_INSERT_ID(),'d', '5 horas ou mais');
COMMIT;



BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Quantos litros de água você consome por dia?', 'Saude');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Menos que 1'),
        (LAST_INSERT_ID(),'b', '1 litro'),
        (LAST_INSERT_ID(),'c', '2 litros'),
        (LAST_INSERT_ID(),'d', '3 litros'),
        (LAST_INSERT_ID(),'e', '4 litros'),
        (LAST_INSERT_ID(),'f', '5 litros ou mais');
COMMIT;


BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Qual a frequência que você come fastfood?', 'Saude');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', '1 vez na semana ou menos'),
        (LAST_INSERT_ID(),'b', '2 vezes por semana '),
        (LAST_INSERT_ID(),'c', '3 vezes por semana'),
        (LAST_INSERT_ID(),'d', '4 vezes ou mais');
COMMIT;




BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Come vegetais regularmente?', 'Saude');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;



BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Come saladas regularmente?', 'Saude');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;

BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Come frutas regularmente?', 'Saude');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;


BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Costuma pular refeições?', 'Saude');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;




BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Qual das opções você tem preferência?', 'Habitos');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Salgados'),
        (LAST_INSERT_ID(),'b', 'Doces'),
        (LAST_INSERT_ID(),'c', 'Snacks'),
        (LAST_INSERT_ID(),'d', 'Alimentos naturais');
COMMIT;

BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Costuma sentir fraqueza ou falta de energia durante o dia?', 'Habitos');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;

BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Em qual das opções você se enquadra melhor?', 'Habitos');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Carnívoro'),
        (LAST_INSERT_ID(),'b', 'Vegetariano'),
        (LAST_INSERT_ID(),'c', 'Vegano');
COMMIT;



BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Você tem problemas com diabete?', 'Habitos');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;


BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Você tem problemas com pressão alta?', 'Habitos');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;

BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Pratica exercícios físicos regularmente?', 'Habitos');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;

BEGIN;
INSERT INTO perguntas (descricao,formulario)
  VALUES('Toma algum tipo de suplemento alimentar?', 'Habitos');
INSERT INTO alternativas (id_pergunta, alternativa, descricao) 
  VALUES
		(LAST_INSERT_ID(),'a', 'Sim'),
        (LAST_INSERT_ID(),'b', 'Não');
COMMIT;

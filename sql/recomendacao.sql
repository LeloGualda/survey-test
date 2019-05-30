use mydb;

BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantas refeições você faz por dia?' 	
 )  and alternativas.descricao = '2 refeições'),'Sua alimentação não está adequada pois exige um alto consumo calórico
em poucas refeição, causando subnutrição ou gerando um estoque em forma de gordura.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantas refeições você faz por dia?' 	
 )  and alternativas.descricao = '3 refeições'),'Sua alimentação não está adequada pois exige um alto consumo calórico
em poucas refeições, causando subnutrição ou gerando um estoque em forma de gordura.');
COMMIT;

BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantas refeições você faz por dia?' 	
 )  and alternativas.descricao = '4 refeições'),'Muito bem, dividir refeições maiores em menores ao longo do dia aumenta
seu nível de disposição e melhora seu metabolismo.');
COMMIT;

BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantas refeições você faz por dia?' 	
 )  and alternativas.descricao = '5 ou mais'),'Fique atento, aumentar a quantidade de refeições à números maiores que 5
podem gerar problemas de sobrepeso se não forem bem distribuídas, lembre-se, se aumentar a
quantidade de refeições diminua a quantidade de comida.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual é o intervalo médio entre as refeições?' 	
 )  and alternativas.alternativa = 'a'),'Talvez você esteja se alimentando em excesso.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual é o intervalo médio entre as refeições?' 	
 )  and alternativas.alternativa = 'd'),'Você pode estar privando seu corpo de vitaminas, proteínas,
carboidratos entre outros componentes que são tão importantes para sua saúde.');
COMMIT;




BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantos litros de água você consome por dia?' 	
 )  and alternativas.alternativa = 'a'),'O consumo de aguá propriamente dita, também é feita pela ingestão de alimentos,
porém se você não consome água diretamente isso pode gerar muitos problemas de saúde.');
COMMIT;

BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantos litros de água você consome por dia?' 	
 )  and alternativas.alternativa = 'b'),'Pouco é melhor que nada, mas aumente o consumo de água, principalmente se
você faz atividades que faça que perca líquidos.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantos litros de água você consome por dia?' 	
 )  and alternativas.alternativa = 'c'),'Muito bem, mas se você faz atividades que faça que você perca líquidos
aumente a ingestão de água.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantos litros de água você consome por dia?' 	
 )  and alternativas.alternativa = 'd'),'Parabéns, a quantidade de água adequada a se beber varia de pessoa à
pessoa, porém 3 litros pode ser tido como uma recomendação universal.');
COMMIT;

BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantos litros de água você consome por dia?' 	
 )  and alternativas.alternativa = 'e'),'Muito bom, porém pode ser um pouco demais, procure um nutricionista para
que possa calcular qual a quantidade de água ideal para você.');
COMMIT;



BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Quantos litros de água você consome por dia?' 	
 )  and alternativas.alternativa = 'f'),'Cuidado, tudo em exagero também faz mal, excesso de água pode
causar perda de minerais essenciais ao organismo.');
COMMIT;





BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual a frequência que você come fastfood?' 	
 )  and alternativas.alternativa = 'a'),'Ninguém é de ferro, alimentos altamente calóricos podem
ser consumidos se você tem um bom equilíbrio alimentar.');
COMMIT;

BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual a frequência que você come fastfood?' 	
 )  and alternativas.alternativa = 'b'),'Se você tem um bom controle alimentar, ainda é possível manter
uma boa saúde.');
COMMIT;

BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual a frequência que você come fastfood?' 	
 )  and alternativas.alternativa = 'c'),'Fique atento, você está exagerando um pouquinho, fastfoods tem
um alto valor de sódio, açucares e gordura, podendo causar dentre vários problemas de saúde o
mais conhecido hipertensão');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual a frequência que você come fastfood?' 	
 )  and alternativas.alternativa = 'd'),'Cuidado, pense bem se seu prazer imediato vale suas várias horas em
um hospital ou uma velhice difícil, dentre os vários problemas de saúde hipertensão e diabetes
são os mais comuns.');
COMMIT;



BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Come vegetais regularmente?' 	
 )  and alternativas.alternativa = 'a'),'Parabéns, vegetais são fontes de vitaminas, minerais e fibras, alcalinizam e
fortalecem o sangue e facilitam a digestão além de serem bons antioxidantes.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Come vegetais regularmente?' 	
 )  and alternativas.alternativa = 'b'),'Adicione eles em sua dieta, vegetais são fontes de vitaminas, minerais e fibras,
alcalinizam e fortalecem o sangue e facilitam a digestão além de serem bons antioxidantes.');
COMMIT;





BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Come saladas regularmente?' 	
 )  and alternativas.alternativa = 'a'),'Muito bem, As saladas possuem alto teor de água, o que contribui para a
hidratação; possui baixo índice calórico e são liberadas para o consumo de qualquer pessoa, ou
seja, sem nenhuma contraindicação. Dessa forma, ela traz uma série de benefícios para o corpo.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Come saladas regularmente?' 	
 )  and alternativas.alternativa = 'b'),'E por que não?, As saladas possuem alto teor de água, o que contribui para a
hidratação; possui baixo índice calórico e são liberadas para o consumo de qualquer pessoa, ou
seja, sem nenhuma contraindicação. Dessa forma, ela traz uma série de benefícios para o corpo.');
COMMIT;



BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Come frutas regularmente?' 	
 )  and alternativas.alternativa = 'a'),'Elas existem de diversas cores e podem ser doces, ácidas e até azedas. Algumas
são conhecidas por sua suculência, outras pela quantidade de fibras ou seu alto teor calórico.
Fontes de vitaminas e sais minerais, todos os tipos de frutas são altamente nutritivas.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Come frutas regularmente?' 	
 )  and alternativas.alternativa = 'b'),'Elas existem de diversas cores e podem ser doces, ácidas e até azedas. Algumas
são conhecidas por sua suculência, outras pela quantidade de fibras ou seu alto teor calórico.
Fontes de vitaminas e sais minerais, todos os tipos de frutas são altamente nutritivas.');
COMMIT;



BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Costuma pular refeições?' 	
 )  and alternativas.alternativa = 'a'),'Pular refeições faz que seu metabolismo trabalhe mais divagar pois precisa
guardar energia até a próxima refeição, isso pode diminuir sua quantidade de energia e
disposição.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Costuma pular refeições?' 	
 )  and alternativas.alternativa = 'b'),'Contar com refeições regulares acelera o metabolismo e a queima de gorduras.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual das opções você tem preferência?' 	
 )  and alternativas.alternativa = 'a'),'Os famosos salgadinhos são altamente gordurosos e calóricos então coma os com moderação.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual das opções você tem preferência?' 	
 )  and alternativas.alternativa = 'b'),'Tem uma concentração muito grande de açucares o que pode causar problemas
de saúde entre os mais graves diabete e obesidade.');
COMMIT;





BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual das opções você tem preferência?' 	
 )  and alternativas.alternativa = 'c'),'Contém altas concentrações de sódio, coloríficos, e conservantes o que pode
causar inúmeros problemas de saúde.');
COMMIT;




BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Qual das opções você tem preferência?' 	
 )  and alternativas.alternativa = 'd'),'Show! Alimentos livre de sódio, coloríficos e conservantes artificiais
lhe garantiram uma melhor qualidade de vida.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Costuma sentir fraqueza ou falta de energia durante o dia?' 	
 )  and alternativas.alternativa = 'a'),'Uma dieta equilibrada e variada contendo vegetais, saladas, carboidratos, carnes e
frutas ajudam a suprir melhor o sua necessidade diária.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Costuma sentir fraqueza ou falta de energia durante o dia?' 	
 )  and alternativas.alternativa = 'b'),'Perfeito, provavelmente sua alimentação supri suas necessidades mesmo assim
vale a pena passar em um medico ou nutricionista para melhora-la.');
COMMIT;







BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Em qual das opções você se enquadra melhor?' 	
 )  and alternativas.alternativa = 'a'),'Consuma também de saladas, pois elas ajudam na digestão.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Em qual das opções você se enquadra melhor?' 	
 )  and alternativas.alternativa = 'b'),'Fique atento na vitamina B12 pois é uma vitamina de origem animal
essencial para os seres humanos.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Em qual das opções você se enquadra melhor?' 	
 )  and alternativas.alternativa = 'c'),'Fique atento na vitamina B12 pois é uma vitamina de origem animal essencial
para os seres humanos.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Você tem problemas com diabete?' 	
 )  and alternativas.alternativa = 'a'),'Sua alimentação tem que ser diferenciada, um nutricionista e medico é essencial
para fazer boas recomendações.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Você tem problemas com pressão alta?' 	
 )  and alternativas.alternativa = 'a'),'Sal e gorduras são grandes vilões, se consulte com um médico para que ele passe
uma alimentação adequada.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Toma algum tipo de suplemento alimentar?' 	
 )  and alternativas.alternativa = 'a'),'Suplementos como o nome diz ajuda a suprir sua alimentação base, não as torne
sua refeição principal.');
COMMIT;


BEGIN;
INSERT INTO recomendacoes (recomendacoes.id_alternativa, descricao) 
VALUES (
(select  alternativas.id_alternativa
 from alternativas where alternativas.id_pergunta = (
 select perguntas.id_pergunta  from perguntas where  descricao = 'Toma algum tipo de suplemento alimentar?' 	
 )  and alternativas.alternativa = 'b'),'Se você não consegue suprir suas necessidades com sua alimentação diária
talvez suplementos te ajudem a chegar ao seu objetivo.');
COMMIT;
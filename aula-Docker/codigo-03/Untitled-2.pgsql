/*docker rm postgres_container 
docker-compose up -d

docker exec -it postgres_container psql -U root -d bd_aula02

*/


CREATE TABLE IF NOT EXISTS notas_alunos (
  id SERIAL PRIMARY KEY,
  aluno_nome TEXT NOT NULL,
  turma TEXT NOT NULL,
  disciplina TEXT NOT NULL,
  nota INTEGER NOT NULL,
  faltas INTEGER NOT NULL,
  data_avaliacao DATE
);
INSERT INTO notas_alunos (aluno_nome, turma, disciplina, nota, faltas, data_avaliacao) VALUES
('Aluno 01','A','Matematica', 85, 2, '2025-09-01'),
('Aluno 02','A','Matematica', 72, 0, '2025-09-01'),
('Aluno 03','A','Matematica', 90, 1, '2025-09-01'),
('Aluno 04','A','Matematica', 60, 3, '2025-09-01'),
('Aluno 05','A','Matematica', 55, 0, '2025-09-01'),
('Aluno 06','B','Matematica', 78, 2, '2025-09-02'),
('Aluno 07','B','Matematica', 88, 1, '2025-09-02'),
('Aluno 08','B','Matematica', 95, 0, '2025-09-02'),
('Aluno 09','B','Matematica', 47, 4, '2025-09-02'),
('Aluno 10','B','Matematica', 68, 2, '2025-09-02'),
('Aluno 11','C','Portugues', 74, 1, '2025-09-03'),
('Aluno 12','C','Portugues', 81, 0, '2025-09-03'),
('Aluno 13','C','Portugues', 66, 2, '2025-09-03'),
('Aluno 14','C','Portugues', 59, 3, '2025-09-03'),
('Aluno 15','C','Portugues', 90, 0, '2025-09-03'),
('Aluno 16','A','Portugues', 85, 0, '2025-09-04'),
('Aluno 17','A','Portugues', 77, 1, '2025-09-04'),
('Aluno 18','A','Portugues', 92, 0, '2025-09-04'),
('Aluno 19','A','Portugues', 45, 5, '2025-09-04'),
('Aluno 20','A','Portugues', 69, 2, '2025-09-04'),
('Aluno 21','B','Sistemas', 88, 0, '2025-09-05'),
('Aluno 22','B','Sistemas', 78, 2, '2025-09-05'),
('Aluno 23','B','Sistemas', 83, 1, '2025-09-05'),
('Aluno 24','B','Sistemas', 91, 0, '2025-09-05'),
('Aluno 25','B','Sistemas', 55, 3, '2025-09-05'),
('Aluno 26','C','Sistemas', 66, 2, '2025-09-06'),
('Aluno 27','C','Sistemas', 72, 1, '2025-09-06'),
('Aluno 28','C','Sistemas', 79, 0, '2025-09-06'),
('Aluno 29','C','Sistemas', 84, 0, '2025-09-06'),
('Aluno 30','C','Sistemas', 90, 0, '2025-09-06'),
('Aluno 31','A','Matematica', 82, 1, '2025-09-07'),
('Aluno 32','A','Matematica', 74, 2, '2025-09-07'),
('Aluno 33','B','Portugues', 69, 1, '2025-09-07'),
('Aluno 34','B','Portugues', 71, 0, '2025-09-07'),
('Aluno 35','C','Matematica', 95, 0, '2025-09-08'),
('Aluno 36','C','Matematica', 58, 4, '2025-09-08'),
('Aluno 37','A','Sistemas', 63, 2, '2025-09-08'),
('Aluno 38','A','Sistemas', 77, 1, '2025-09-08'),
('Aluno 39','B','Sistemas', 85, 0, '2025-09-09'),
('Aluno 40','B','Sistemas', 49, 5, '2025-09-09'),
('Aluno 41','C','Portugues', 88, 0, '2025-09-09'),
('Aluno 42','C','Portugues', 82, 1, '2025-09-09'),
('Aluno 43','A','Matematica', 70, 2, '2025-09-10'),
('Aluno 44','A','Matematica', 68, 3, '2025-09-10'),
('Aluno 45','B','Portugues', 95, 0, '2025-09-10'),
('Aluno 46','B','Portugues', 52, 4, '2025-09-10'),
('Aluno 47','C','Sistemas', 76, 1, '2025-09-11'),
('Aluno 48','C','Sistemas', 89, 0, '2025-09-11'),
('Aluno 49','A','Sistemas', 94, 0, '2025-09-11'),
('Aluno 50','B','Matematica', 61, 2, '2025-09-11');

SELECT * FROM notas_alunos;

SELECT aluno_nome, turma FROM notas_alunos

SELECT 
    aluno_nome, nota
FROM    
    notas_alunos
WHERE
    nota > 70;

SELECT 
    aluno_nome,nota
FROM
    notas_alunos
WHERE
    aluno_nome = 'Aluno 06';

SELECT
    aluno_nome,turma,nota
FROM
    notas_alunos
WHERE
    disciplina = 'Matematica'AND nota >= 60;


CREATE TABLE IF NOT EXISTS tabela_sexo (
  id SERIAL PRIMARY KEY,
  nome_do_fudedor TEXT NOT NULL,
  sexos_realizados INTEGER NOT NULL
);

INSERT INTO tabela_sexo (nome_do_fudedor,sexos_realizados)
VALUES
('Matheus tomaquieto',0);

SELECT
    nome_do_fudedor,sexos_realizados
FROM
    tabela_sexo


SELECT
    disciplina, AVG(nota) AS media_nota
FROM
    notas_alunos
GROUP BY
    disciplina

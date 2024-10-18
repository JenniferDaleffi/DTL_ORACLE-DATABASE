DROP TABLE ALUNO;
DROP TABLE VENDAS;

CREATE TABLE P5_LIVROS (
   id_livro    INTEGER GENERATED  BY DEFAULT AS IDENTITY,
   dt_cadastro DATE DEFAULT current_date,
   aluno       VARCHAR(10) DEFAULT user,
   titulo      VARCHAR(50) NOT NULL,
   isbn        VARCHAR(13) NOT NULL,
   CONSTRAINT p5_livros_pk PRIMARY KEY (id_livro)
);
 
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9780807286005','Harry Potter e a Pedra Filosofal');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9788869183157','Harry Potter e a Pedra Filosofal');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9780545582889','Harry Potter e a Pedra Filosofal');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9780939173341','Harry Potter e a Pedra Filosofal');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9788818123210','O senhor dos anéis');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9780007149131','O senhor dos anéis');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9788818123210','O senhor dos anéis');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9780007149131','O senhor dos anéis');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9780545582889','Harry Potter e a Pedra Filosofal');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9780439420105','Harry Potter e a Camara Secreta');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9788831003834','Harry Potter e a Camara Secreta');
INSERT INTO P5_LIVROS(isbn, titulo) VALUES ('9780439420105','Harry Potter e a Camara Secreta');
 
--DROP TABLE P5_LEITORES;
CREATE TABLE P5_LEITORES (
   id_leitor      INTEGER GENERATED  BY DEFAULT AS IDENTITY,
   dt_cadastro    DATE DEFAULT current_date,
   aluno          VARCHAR(10) DEFAULT user,
   nome_leitor    VARCHAR(50) NOT NULL,
   CONSTRAINT p5_leitores_pk PRIMARY KEY (id_leitor)
);
 
INSERT INTO P5_LEITORES (nome_leitor) VALUES ('Flavia Silva');
INSERT INTO P5_LEITORES (nome_leitor) VALUES ('Joana Santos');
INSERT INTO P5_LEITORES (nome_leitor) VALUES ('Isabela Silveira');
INSERT INTO P5_LEITORES (nome_leitor) VALUES ('Joao Candido');
INSERT INTO P5_LEITORES (nome_leitor) VALUES ('Antonio Rocha');
INSERT INTO P5_LEITORES (nome_leitor) VALUES ('Francisco Costa');
 
--DROP TABLE P5_EMPRESTIMOS;
CREATE TABLE P5_EMPRESTIMOS(
   id_emprestimo  INTEGER GENERATED  BY DEFAULT AS IDENTITY,
   dt_cadastro    DATE DEFAULT current_date,
   aluno          VARCHAR(10) DEFAULT user,
   id_leitor      INTEGER NOT NULL,
   id_livro       INTEGER NOT NULL,
   dt_devolucao   DATE,
   CONSTRAINT p5_emprestimo_pk PRIMARY KEY (id_emprestimo),
   CONSTRAINT p5_emprestimo_leitor_fk FOREIGN KEY (id_leitor) REFERENCES P5_LEITORES(id_leitor),
   CONSTRAINT p5_emprestimo_livro_fk FOREIGN KEY (id_livro) REFERENCES P5_LIVROS(id_livro)
);
 
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (2,11, DATE '2024-10-12');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (3,5, DATE '2024-10-09');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (4,7, DATE '2024-10-08');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (1,7, DATE '2024-10-09');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (2,11, DATE '2024-10-08');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (4,8, DATE '2024-10-11');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (3,2, DATE '2024-10-12');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (1,4, DATE '2024-10-15');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (1,9, DATE '2024-10-09');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (5,6, DATE '2024-10-15');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (5,6, DATE '2024-10-14');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (4,12, DATE '2024-10-12');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (2,11, DATE '2024-10-13');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (4,8, DATE '2024-10-08');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (1,10, DATE '2024-10-11');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (2,9, DATE '2024-10-08');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (2,1, DATE '2024-10-14');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (3,11, DATE '2024-10-13');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (2,3, DATE '2024-10-09');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (4,3, DATE '2024-10-14');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (5,7, DATE '2024-10-11');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (3,5, DATE '2024-10-13');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (2,4, DATE '2024-10-13');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (1,5, DATE '2024-10-12');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (4,10, DATE '2024-10-14');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (5,10, DATE '2024-10-10');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (1,2, DATE '2024-10-09');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (4,4, DATE '2024-10-15');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (1,4, DATE '2024-10-15');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (3,12, DATE '2024-10-14');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (4,12, DATE '2024-10-15');
INSERT INTO p5_emprestimos (id_leitor, id_livro, dt_devolucao) VALUES (5,3, DATE '2024-10-12');
 
SELECT aluno, user,  'livros' as tabela, COUNT(*) as quantidade FROM p5_livros GROUP BY aluno UNION
SELECT aluno, user, 'leitores', COUNT(*) as quantidade FROM p5_leitores GROUP BY aluno UNION
SELECT aluno, user, 'emprestimos', COUNT(*) as quantidade FROM p5_emprestimos GROUP BY aluno;

-- Jeito antigo e lento
SELECT * FROM p5_emprestimos, p5_livros
WHERE p5_livros.id.livro  = p5_emprestimos.id_livro;
 
--JEITO ATUAL E RAPIDO -  left join
SELECT * FROM p5_emprestimos tabela_a
LEFT JOIN p5_livros tabela_b 
    ON tabela_a.id_livro= tabela_b.id_livro;
-- consulta boa    
SELECT titulo, COUNT(id_emprestimo) AS quantidade_emprestimos
FROM p5_emprestimos tabela_a
LEFT JOIN p5_livros 
    tabela_b ON tabela_a.id_livro= tabela_b.id_livro
GROUP BY titulo;    
 
 
SELECT id_emprestimo, nome_leitor, titulo 
    FROM p5_emprestimos tabela_a  -- tabela inicial
LEFT JOIN p5_livros tabela_b 
    ON tabela_a.id_livro = tabela_b.id_livro
LEFT JOIN p5_leitores tabela_c 
    ON tabela_a.id_leitor = tabela_c.id_leitor;   
INSERT INTO p5_livros (titulo, isbn) VALUES ('teste', '123456');    

-- insert into
SELECT tabela_a.id_livro, tabela_a.titulo, tabela_b.id_emprestimo 
    FROM p5_livros tabela_a  -- tabela inicial
LEFT JOIN p5_emprestimos tabela_b 
    ON tabela_a.id_livro = tabela_b.id_livro
WHERE id_emprestimo IS NULL 
ORDER BY tabela_a.id_livro DESC; 

-- RIGHT JOIN
SELECT p5_livros.*,
    p5_emprestimos.*,
    p5_leitores.*
FROM p5_emprestimos
    RIGHT JOIN p5_livros ON p5_livros.id_livro = p5_emprestimos.id_livro
    LEFT JOIN p5_leitores ON p5_leitores.id_leitor = p5_emprestimos.id_leitor;

-- INNER 
CREATE VIEW vw_emprestimos_data AS
SELECT titulo, id_emprestimo
    FROM p5_livros
INNER JOIN p5_emprestimos ON p5_livros.id_livro = p5_emprestimos.id_livro
INNER JOIN p5_leitores ON p5_emprestimos.id_leitor = p5_leitores.id_leitor;

SELECT * FROM vw_emprestimos_data



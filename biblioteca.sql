USE --nome do seu banco--;


CREATE TABLE Autores (
   id int auto_increment primary key, 
   nome varchar (100),
   nacionalidade varchar (40),
   data_nascimento date, 
   email varchar (130)
);

CREATE TABLE Livros (
   id int auto_increment primary key, 
   titulo varchar (40),
   autor_id int,
   ano_publicacao year,
   genero varchar (60),
   foreign key (autor_id) references autores(id) 
);

CREATE TABLE Usuarios (
   id int auto_increment primary key, 
   nome varchar (100),
   email varchar (130),
   telefone varchar(15),
   data_cadastro date
   
);

CREATE TABLE Emprestimos (
  id int auto_increment primary key,
  livro_id int,
  usuario_id int,
  data_emprestimo date,
  data_devolucao date,
  foreign key (livro_id) references livros(id),
  foreign key (usuario_id) references usuarios(id) 
);

CREATE TABLE Categorias (
  id int auto_increment primary key, 
  nome varchar (60),
  descricao varchar (200)
);


INSERT INTO Autores (nome, nacionalidade, data_nascimento, email) VALUES
('Autor 1', 'Brasileiro', '1980-01-01', 'autor1@email.com'),
('Autor 2', 'Argentino', '1975-05-15', 'autor2@email.com'),
('Autor 3', 'Chileno', '1990-03-03', 'autor3@email.com'),
('Autor 4', 'Colombiano', '1985-07-07', 'autor4@email.com'),
('Autor 5', 'Peruano', '1978-02-20', 'autor5@email.com'),
('Autor 6', 'Mexicano', '1995-12-12', 'autor6@email.com'),
('Autor 7', 'Espanhol', '1982-09-09', 'autor7@email.com'),
('Autor 8', 'Italiano', '1989-11-11', 'autor8@email.com'),
('Autor 9', 'Francês', '1992-08-08', 'autor9@email.com'),
('Autor 10', 'Alemão', '1988-06-06', 'autor10@email.com');


INSERT INTO Livros (titulo, autor_id, ano_publicacao, genero) VALUES
('Livro 1', 1, 2000, 'Ficção'),
('Livro 2', 2, 2005, 'Romance'),
('Livro 3', 3, 2010, 'Aventura'),
('Livro 4', 4, 2015, 'Mistério'),
('Livro 5', 5, 2020, 'Ficção Científica'),
('Livro 6', 6, 2018, 'História'),
('Livro 7', 7, 2016, 'Terror'),
('Livro 8', 8, 2012, 'Drama'),
('Livro 9', 9, 2019, 'Autoajuda'),
('Livro 10', 10, 2021, 'Fantasia');


INSERT INTO Usuarios (nome, email, telefone, data_cadastro) VALUES
('Usuário 1', 'usuario1@email.com', '1111111111', '2023-01-01'),
('Usuário 2', 'usuario2@email.com', '2222222222', '2023-02-02'),
('Usuário 3', 'usuario3@email.com', '3333333333', '2023-03-03'),
('Usuário 4', 'usuario4@email.com', '4444444444', '2023-04-04'),
('Usuário 5', 'usuario5@email.com', '5555555555', '2023-05-05'),
('Usuário 6', 'usuario6@email.com', '6666666666', '2023-06-06'),
('Usuário 7', 'usuario7@email.com', '7777777777', '2023-07-07'),
('Usuário 8', 'usuario8@email.com', '8888888888', '2023-08-08'),
('Usuário 9', 'usuario9@email.com', '9999999999', '2023-09-09'),
('Usuário 10', 'usuario10@email.com', '0000000000', '2023-10-10');


INSERT INTO Emprestimos (livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES
(1, 1, '2023-01-01', '2023-01-15'),
(2, 2, '2023-02-01', '2023-02-15'),
(3, 3, '2023-03-01', '2023-03-15'),
(4, 4, '2023-04-01', '2023-04-15'),
(5, 5, '2023-05-01', '2023-05-15'),
(6, 6, '2023-06-01', '2023-06-15'),
(7, 7, '2023-07-01', '2023-07-15'),
(8, 8, '2023-08-01', '2023-08-15'),
(9, 9, '2023-09-01', '2023-09-15'),
(10, 10, '2023-10-01', '2023-10-15');


INSERT INTO Categorias (nome, descricao) VALUES
('Ficção', 'Livros de ficção'),
('Não-ficção', 'Livros de não-ficção'),
('Biografia', 'Biografias de pessoas'),
('Autoajuda', 'Livros de autoajuda'),
('Fantasia', 'Livros de fantasia'),
('Romance', 'Livros de romance'),
('Aventura', 'Livros de aventura'),
('Mistério', 'Livros de mistério'),
('Terror', 'Livros de terror'),
('Drama', 'Livros de drama');








SELECT * FROM Autores;
SELECT * FROM Livros;
SELECT * FROM Usuarios;
SELECT * FROM Emprestimos;
SELECT * FROM Categorias;

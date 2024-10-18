
## Sistema de Gerenciamento de Biblioteca
Este repositório contém um código SQL para a criação e gerenciamento de um sistema de biblioteca, que permite o registro de autores, livros, usuários e empréstimos. É ideal para instituições educacionais, bibliotecas comunitárias ou qualquer organização que necessite controlar seu acervo literário e os empréstimos realizados.

### Funcionalidades
1. **Registro de Autores**: Armazena informações sobre os autores, incluindo nome, nacionalidade, data de nascimento e e-mail.
2. **Registro de Livros**: Permite o cadastro de livros, vinculando cada um a um autor, e armazenando informações como título, ano de publicação e gênero.
3. **Cadastro de Usuários**: Registra usuários que podem emprestar livros, incluindo nome, e-mail, telefone e data de cadastro.
4. **Empréstimos**: Controla os empréstimos de livros, registrando quais livros foram emprestados a quais usuários e as datas de empréstimo e devolução.
5. **Categorias de Livros**: Classifica os livros em diferentes categorias para facilitar a busca e a organização do acervo.

### Estrutura do Banco de Dados
As tabelas criadas são as seguintes:
- **Autores**: Contém informações dos autores.
- **Livros**: Contém informações dos livros e sua relação com os autores.
- **Usuarios**: Armazena dados dos usuários que podem realizar empréstimos.
- **Emprestimos**: Registra as transações de empréstimos entre usuários e livros.
- **Categorias**: Classifica os livros em diferentes categorias.

### Comandos SQL
O código SQL a seguir cria as tabelas mencionadas e insere dados iniciais para facilitar testes:

```sql
USE escola;

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
```

### Inserção de Dados
Os comandos de inserção fornecem exemplos de como adicionar dados nas tabelas:

```sql
INSERT INTO Autores (nome, nacionalidade, data_nascimento, email) VALUES
('Autor 1', 'Brasileiro', '1980-01-01', 'autor1@email.com'),
...
('Autor 10', 'Alemão', '1988-06-06', 'autor10@email.com');

INSERT INTO Livros (titulo, autor_id, ano_publicacao, genero) VALUES
('Livro 1', 1, 2000, 'Ficção'),
...
('Livro 10', 10, 2021, 'Fantasia');

INSERT INTO Usuarios (nome, email, telefone, data_cadastro) VALUES
('Usuário 1', 'usuario1@email.com', '1111111111', '2023-01-01'),
...
('Usuário 10', 'usuario10@email.com', '0000000000', '2023-10-10');

INSERT INTO Emprestimos (livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES
(1, 1, '2023-01-01', '2023-01-15'),
...
(10, 10, '2023-10-01', '2023-10-15');

INSERT INTO Categorias (nome, descricao) VALUES
('Ficção', 'Livros de ficção'),
...
('Drama', 'Livros de drama');
```

### Consultas
As consultas abaixo permitem visualizar os dados registrados nas tabelas:

```sql
SELECT * FROM Autores;
SELECT * FROM Livros;
SELECT * FROM Usuarios;
SELECT * FROM Emprestimos;
SELECT * FROM Categorias;
```

### Como Utilizar
1. **Configurar o Ambiente**: Instale um servidor de banco de dados como MySQL ou MariaDB.
2. **Criar o Banco de Dados**: Execute `CREATE DATABASE escola;` para criar o banco de dados.
3. **Executar o Código SQL**: Copie e cole o código SQL fornecido para criar as tabelas e inserir os dados.
4. **Realizar Consultas**: Utilize as consultas para verificar os dados armazenados e testar o funcionamento do sistema.

### Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests ou abrir issues para melhorias e sugestões.

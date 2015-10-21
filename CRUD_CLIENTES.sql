CREATE DATABASE CRUD_ALUNO;

USE CRUD_ALUNO;

CREATE TABLE ALUNOS
(
	ID_ALUNO	     INT AUTO_INCREMENT NOT NULL,
    NOME 		     VARCHAR(255) NOT NULL,
	TELEFONE         VARCHAR(15) NOT NULL,
    DATA_NASCIMENTO  DATE NOT NULL,
    ENDERECO         VARCHAR(255) NOT NULL,
	--ID_CIDADE        INT NOT NULL,
	--ID_ESTADO        INT NOT NULL,
    CONSTRAINT PK_ID_ALUNO PRIMARY KEY(ID_ALUNO)
	--CONSTRAINT FK_CIDADE FOREIGN KEY(ID_CIDADE) REFERENCES CIDADES(ID_CIDADE),
	--CONSTRAINT FK_ESTADO FOREIGN KEY(ID_ESTADO) REFERENCES ESTADOS(ID_ESTADO)
);

UPDATE ALUNOS SET ID_ALUNO = @ID_ALUNO, NOME = @NOME, TELEFONE = @TELEFONE, DATA_NASCIMENTO = @DATA_NASCIMENTO, ENDERECO = @ENDERECO, CIDADE = @CIDADE, ESTADO = @ESTADO WHERE ID_ALUNO = @ID_ALUNO;

CREATE TABLE CIDADES
(
	ID_CIDADE  INT AUTO_INCREMENT NOT NULL,
	CIDADE     VARCHAR(100) NOT NULL,
	ID_ESTADO  INT NOT NULL,
	CONSTRAINT PK_ID_CIDADE PRIMARY KEY(ID_CIDADE),
	CONSTRAINT FK_ID_ESTADO FOREIGN KEY(ID_ESTADO) REFERENCES ESTADOS(ID_ESTADO)
);

CREATE TABLE ESTADOS
(
	ID_ESTADO  INT AUTO_INCREMENT NOT NULL,
	UF         CHAR(2),
	ESTADO     VARCHAR(40),
	CONSTRAINT PK_ID_ESTADO PRIMARY KEY(ID_ESTADO)
);



CREATE TABLE CURSOS
(
	ID_CURSO  INT AUTO_INCREMENT NOT NULL,
	CURSO     VARCHAR(50) NOT NULL,
	DURACAO   INT(1) NOT NULL,
	CONSTRAINT PK_ID_CURSO PRIMARY KEY(ID_CURSO)
);
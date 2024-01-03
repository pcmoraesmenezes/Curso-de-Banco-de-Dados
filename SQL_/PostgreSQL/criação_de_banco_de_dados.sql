
CREATE TABLE IF NOT EXISTS tipo_de_produto (
    id SERIAL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS produtos (
	id SERIAL PRIMARY KEY,
	descricao CHARACTER VARYING(50) NOT NULL,
	preco MONEY NOT NULL,
	id_tipo_produto INT REFERENCES tipo_de_produto(id) NOT NULL
);


CREATE TABLE IF NOT EXISTS pacientes (
	id SERIAL PRIMARY KEY,
	nome CHARACTER VARYING(50) NOT NULL,
	endereco CHARACTER VARYING(50) NOT NULL,
	bairro CHARACTER VARYING(50) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	estado CHAR(2) NOT NULL,
	cep VARCHAR(9) NOT NULL,
	data_nascimento DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS professores (
	id SERIAL PRIMARY KEY,
	telefone INT NOT NULL,
	nome CHARACTER VARYING(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS turmas (
	id SERIAL PRIMARY KEY,
	capacidade INT NOT NULL,
	id_professor INT REFERENCES professores(id) NOT NULL
);
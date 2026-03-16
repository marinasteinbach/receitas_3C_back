CREATE TABLE IF NOT EXISTS USUARIO (
	id SERIAL PRIMARY KEY,
	nome VARCHAR (255) NOT NULL,
	ativo BOOLEAN DEFAULT TRUE,
	email VARCHAR (255) NOT NULL UNIQUE,
	senha VARCHAR(255) NOT NULL,
	criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);

	SELECT * FROM usuario WHERE email = $1 and senha = $2
	"isso vai retornar um array com um elemento se o usuario"
	"estiver cadastrado se não vai retornar um array vazio"
	
	CREATE TABLE IF NOT EXISTS RECEITA(
		id SERIAL PRIMARY KEY,
		nome VARCHAR (255) NOT NULL,
		ingredientes TEXT NOT NULL,
		instrucoes TEXT NOT NULL,
		tempo_preparo_minutos INTEGER NOT NULL,
		usuario_id INTEGER NOT NULL REFERENCES USUARIO(id) ON DELETE CASCADE
	);
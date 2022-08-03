create database blog;
use blog;

create table usuario (
	id int NOT NULL AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    email varchar(255) NOT NULL,
    senha varchar(60) NOT NULL,
    data_criacao datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ativo tinyint NOT NULL DEFAULT '0',
    adm tinyint NOT NULL DEFAULT '0',
    PRIMARY KEY (id)
);

create table post(
id int NOT NULL AUTO_INCREMENT,
titulos varchar(255) NOT NULL,
texto text NOT NULL,
usuario_id int NOT NULL,
data_criacao datetime NOT NULL,
PRIMARY KEY (id),
KEY fk_post_usuario_idx (usuario_id),
CONSTRAINT fk_post_usuario FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);
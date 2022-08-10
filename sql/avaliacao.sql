create database blog;
use blog;

create table avaliacao (
	id int NOT NULL AUTO_INCREMENT,
    nota int NOT NULL,
    comentario varchar(255) not null,
    usuario_id int not null,
    post_id int not null,
    data_criacao datetime not null default current_timestamp,
    primary key (id),
    constraint fk_avaliacao_usuario foreign key (usuario_id) references usuario (id),
    constraint fk_avaliacao_post foreign key (post_id) references post(id)
    );


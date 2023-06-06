create database CONCURSO_PUBLICO;
use CONCURSO_PUBLICO;

create table cargos (
	id int,
    nome varchar(45),
    primary key(id)
);

create table concursos (
	id int,
    data date,
    nome varchar(45),
    primary key(id)
);

create table candidatos (
	id int,
    nome varchar(45),
    sobrenome varchar(45),
    cpf char(11),
    telefone char(15),
    email varchar(60),
	primary key(id)
);

create table inscricao (
	codigo_incricao varchar(8),
    id_cargo int,
    id_concurso int,
    id_candidato int,
    foreign key(id_cargo) references cargos(id),
    foreign key(id_concurso) references concursos(id),
    foreign key(id_candidato) references candidatos(id)
    );
    
    insert into cargos values (1, 'contabilidade');
    insert into concursos values (1, '2023-06-05', 'prefeitura');
    insert into candidatos values (1, 'Alrane', 'Jocrema', 18620616939, 552499999899399, 'alranejocrema@gmail.com');
    insert into inscricao values ("001", 1, 1, 1);
    
    
    
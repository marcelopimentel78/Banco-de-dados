use escola;
create table funcionario (
fnumero int(10) unsigned auto_increment
comment 'identificador de funcionario',
fnome varchar(80) not null
comment 'nome do funcionario',
endereco varchar(80) not null
		comment 'endereço do funcionário',
    salario double(10,2) default 0
		comment 'quantidade do produto em estoque',
    supernumero int(10)
		comment 'identificador do funcionário supervisor',
	 dnumero int(5) not null
		comment 'identificador do departamento',
constraint pk_funcionario primary key (fnumero)

);

show tables;
describe funcionario;

create table departamento (
dnumero int(5) auto_increment,
dnome varchar(50) not null,
fnumero int(10) unsigned, 
dataini date,
constraint  pk_departamento primary key (dnumero),
constraint fk_depto_fnumero foreign key (fnumero) references funcionario (fnumero),
constraint uk_dnome_depto
unique key (dnome)
);

describe departamento



DROP TABLE cliente_fiap;
DROP TABLE genero;
drop table bairro;
drop table cidade;
drop table estado;
drop table pais;
drop table tipo_cliente;
drop table end_cliente;

CREATE TABLE cliente_fiap (
    id_cliente NUMBER,
    nome VARCHAR2(30),
    data_nasc DATE,
    cpf_cnpj NUMBER,
    id_genero NUMBER,
    id_tipo_cli NUMBER
);

CREATE TABLE genero (
    id_genero NUMBER PRIMARY KEY,
    descricao VARCHAR(30)
);

ALTER TABLE cliente_fiap 
    ADD CONSTRAINT pk_genero FOREIGN KEY (id_genero)
        REFERENCES genero (id_genero);

CREATE TABLE tipo_cliente (
    id_tipo_cli NUMBER PRIMARY KEY,
    descricao   VARCHAR2(30)
);

ALTER TABLE cliente_fiap
    ADD CONSTRAINT fk_tipo_cli FOREIGN KEY ( id_genero )
        REFERENCES tipo_cliente ( id_tipo_cli );
        
CREATE TABLE end_cliente (id_end NUMBER,
                          logradouro VARCHAR2(30),
                          numero NUMBER,
                          cep NUMBER,
                          complemento VARCHAR(50),
                          referencia VARCHAR2(30),
                          id_bairro NUMBER);
                          
CREATE TABLE bairro (
    id_bairro NUMBER PRIMARY KEY,
    nome_bairro VARCHAR2(30),
    id_estado NUMBER
);

ALTER TABLE end_cliente
    ADD CONSTRAINT fk_bairro FOREIGN KEY (id_bairro)
        REFERENCES bairro (id_bairro);
        
CREATE TABLE cidade (
    id_cidade   NUMBER PRIMARY KEY,
    nome_cidade VARCHAR2(30),
    id_estado   NUMBER
);
        
CREATE TABLE estado (
    id_estado NUMBER PRIMARY KEY,
    nome_estado varchar2(30),
    id_pais NUMBER
)

ALTER TABLE cidade
    ADD CONSTRAINT fk_cidade FOREIGN KEY (id_estado)
        REFERENCES estado (id_estado);
        
CREATE TABLE pais (
    id_pais NUMBER PRIMARY KEY,
    nome_pais VARCHAR2(30)
);

ALTER TABLE estado
    ADD CONSTRAINT fk_pais FOREIGN KEY(id_pais)
        REFERENCES pais (id_pais);
        
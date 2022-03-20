CREATE TABLE cliente (
    document int not null,
    name varchar(255) not null,
    birth_date date not null,
    email varchar(255) not null,
    relatives varchar(255),
    primary key (document)
)

CREATE TABLE dependente (
    document int not null,
    name varchar(255) not null,
    birth_date date not null,
    email varchar(255) not null,
    primary key (document)
)

CREATE TABLE contrato (
    order_id int not null,
    client int not null,
    start_date date not null,
    value money not null,
    primary key (order_id),
    foreign key (client) references cliente(document)
)

CREATE TABLE produto (
    product_id int not null,
    ans_id varchar(255) not null,
    description varchar(255) not null,
    primary key (product_id)
)
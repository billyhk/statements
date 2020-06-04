drop table if exists transactions;
drop table if exists statements;
drop table if exists transactions_statements_bridge;
drop table if exists user_transactions_bridge;

create table transactions(
    id serial primary key,
    transaction_type varchar(255),
    property varchar(255)
);

create table statements(
    id serial primary key,
    statement_type varchar(255),
    line_item varchar(255)
);

create table transactions_statements_bridge(
    id serial primary key,
    transaction_id integer,
    statement_id integer,
    sign integer
);

create table user_transactions_bridge(
    id serial primary key,
    user_id integer,
    transaction_id integer,
    amount integer
);
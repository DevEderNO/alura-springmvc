insert into Role values ('ROLE_ADMIN');
insert into Usuario (email, nome, senha) values ('email@email.com', 'Administrador', '$2a$04$qP517gz1KNVEJUTCkUQCY.JzEoXzHFjLAhPQjrg5iP6Z/UmWjvUhq');
insert into Usuario_Role(Usuario_email, roles_nome) values ('email@email.com', 'ROLE_ADMIN');
create SCHEMA pokemon;
USE pokemon;
create table types(id int auto_increment primary key,name text not null);
INSERT INTO pokemon.types (id, name) VALUES (1, 'Normal');
INSERT INTO pokemon.types (id, name) VALUES (2, 'Water');
INSERT INTO pokemon.types (id, name) VALUES (3, 'Grass');
INSERT INTO pokemon.types (id, name) VALUES (4, 'Rock');
INSERT INTO pokemon.types (id, name) VALUES (5, 'Fire');
INSERT INTO pokemon.types (id, name) VALUES (6, 'Ground');
INSERT INTO pokemon.types (id, name) VALUES (7, 'Poison');
INSERT INTO pokemon.types (id, name) VALUES (8, 'Bug');
INSERT INTO pokemon.types (id, name) VALUES (9, 'Electric');
INSERT INTO pokemon.types (id, name) VALUES (10, 'Dragon');
INSERT INTO pokemon.types (id, name) VALUES (11, 'Steel');
INSERT INTO pokemon.types (id, name) VALUES (12, 'Dark');
INSERT INTO pokemon.types (id, name) VALUES (13, 'Fighting');
INSERT INTO pokemon.types (id, name) VALUES (14, 'Psychic');
INSERT INTO pokemon.types (id, name) VALUES (15, 'Ghost');
INSERT INTO pokemon.types (id, name) VALUES (16, 'Fairy');
INSERT INTO pokemon.types (id, name) VALUES (17, 'Ice');
INSERT INTO pokemon.types (id, name) VALUES (18, 'Flying');
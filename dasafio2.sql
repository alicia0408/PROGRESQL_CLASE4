

CREATE DATABASE unidad2;
CREATE DATABASE
 \c
You are now connected to database "alicia" as user "alicia".
\c unidad2;
You are now connected to database "unidad2" as user "alicia".
 \q

alicia@Malicia:~/Documentos/DESAFIO_LATAM/progresql/progresql_clase4_17062021$ psql -U alicia unidad2 < unidad2.sql 
SET
SET
SET
SET
SET
 set_config 
------------
 
(1 row)

SET
SET
SET
SET
CREATE EXTENSION
COMMENT
SET
SET
CREATE TABLE
ALTER TABLE
CREATE SEQUENCE
ALTER TABLE
ALTER SEQUENCE
CREATE TABLE
ALTER TABLE
CREATE SEQUENCE
ALTER TABLE
ALTER SEQUENCE
CREATE TABLE
ALTER TABLE
CREATE SEQUENCE
ALTER TABLE
ALTER SEQUENCE
CREATE TABLE
ALTER TABLE
CREATE SEQUENCE
ALTER TABLE
ALTER SEQUENCE
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
COPY 10
COPY 32
COPY 42
COPY 20
 setval 
--------
     12
(1 row)

 setval 
--------
     38
(1 row)

 setval 
--------
     60
(1 row)

 setval 
--------
     20
(1 row)

ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
alicia@Malicia:~/Documentos/DESAFIO_LATAM/progresql/progresql_clase4_17062021$ psql
psql (12.7 (Ubuntu 12.7-0ubuntu0.20.04.1))
Type "help" for help.

alicia=# \c unidad2;



BEGIN
 INSERT INTO compra (id, cliente_id, fecha)
VALUES (33, 1, current_date);
INSERT 0 1
INSERT INTO detalle_compra (producto_id, compra_id, cantidad)
VALUES (9, 33, 5); 
INSERT 0 1

COMMIT

BEGIN;


INSERT INTO compra (cliente_id, fecha)
VALUES (2, NOW());

INSERT INTO detalle_compra (producto_id, compra_id, cantidad)
VALUES (1, (SELECT MAX(id) FROM compra), 3); 

UPDATE producto SET stock = stock - 3
WHERE id = 1;


INSERT INTO detalle_compra (producto_id, compra_id, cantidad)
VALUES (2, (SELECT MAX(id) FROM compra), 3); 

UPDATE producto SET stock = stock - 3
WHERE id = 2;

INSERT INTO detalle_compra (producto_id, compra_id, cantidad)
VALUES (8, (SELECT MAX(id) FROM compra), 3); 

UPDATE producto SET stock = stock - 3
WHERE id = 8;

COMMIT;


-- Desahibilitar AUTOCOMMIT 

\set AUTOCOMMIT off

\echo :AUTOCOMMIT

COMMIT;

INSERT INTO cliente (nombre, email)
VALUES ('Usuario nuevo', 'suemail@desafiolatam.com')
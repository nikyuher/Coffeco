-- Conectarse como usuario SYS
CONNECT sys as sysdba;

alter system set LOCAL_LISTENER='(ADDRESS=(PROTOCOL=TCP)(HOST=127.0.0.1)(PORT=1521))' scope=both;
alter system register;

-- Crear usuario coffeco con contraseña coffeco
CREATE USER coffeco IDENTIFIED BY coffeco;
GRANT CONNECT, RESOURCE TO coffeco;

-- Conectarse como usuario coffeco
CONNECT coffeco/coffeco;

-- Crear secuencia idplus
CREATE SEQUENCE idplus START WITH 1 INCREMENT BY 1;

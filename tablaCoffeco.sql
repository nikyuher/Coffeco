-- Crear tabla usuarios
CREATE TABLE usuarios (
  idUsuario NUMBER PRIMARY KEY,
  nombre VARCHAR2(50) NOT NULL,
  correo VARCHAR2(50) UNIQUE NOT NULL,
  contra VARCHAR2(50) NOT NULL
);

-- Crear tabla productos
CREATE TABLE productos (
  idProducto NUMBER(10) PRIMARY KEY,
  nombre VARCHAR2(50) NOT NULL,
  descripcion VARCHAR2(50),
  precio NUMBER(10,2)NOT NULL,
  imagen VARCHAR2(200)
);

-- Crear tabla cesta
CREATE TABLE cesta (
  idCesta NUMBER PRIMARY KEY,
  idUsuario NUMBER NOT NULL,
  idProducto NUMBER NOT NULL,
  cantidad NUMBER NOT NULL,
  FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario),
  FOREIGN KEY (idProducto) REFERENCES productos(idProducto)
);

-- Crear tabla perdidos
CREATE TABLE pedidos (
  idPedido NUMBER PRIMARY KEY,
  idUsuario NUMBER NOT NULL,
  fecha DATE NOT NULL,
  total NUMBER(10,2) NOT NULL,
  FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario)
);

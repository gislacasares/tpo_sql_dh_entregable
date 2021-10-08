DROP DATABASE tpo_dh_notas;

CREATE DATABASE tpo_dh_notas character set utf8;

USE tpo_dh_notas;

CREATE TABLE Usuarios(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE Categorias(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR() NOT NULL,
    id_usuario INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id)
);

CREATE TABLE Notas(
	id INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    puede_eliminarse TINYINT NOT NULL,
    fecha_creacion DATE NOT NULL,
    fecha_modificacion DATE NOT NULL,
    estado TINYINT NOT NULL DEFAULT 1,
    PRIMARY KEY(id),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id)
);

CREATE TABLE Nota_Categoria(
	/*id INT NOT NULL AUTO_INCREMENT,*/
	id_nota INT NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY(id_nota, id_categoria),
    FOREIGN KEY(id_nota) REFERENCES Notas(id),
    FOREIGN KEY(id_categoria) REFERENCES Categorias(id)
);

/*Insert de tabla USUARIOS*/
INSERT INTO Usuarios(nombre, email) VALUES ('Gaston', 'gislacasares@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Pedro', 'pedrito@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Lourdes', 'lulufer@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Maria', 'mariamaria@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Negro', 'negrito@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Blanca', 'blanquita@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Luis', 'luis@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Celeste', 'celes@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Ana', 'anita@gmail.com');
INSERT INTO Usuarios(nombre, email) VALUES ('Carlitos', 'carlitos@gmail.com');

/*Insert de tabla NOTAS*/
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (1, 'Listado de compras', 'Debo comprar productos en el super de limpieza y comestibles', 1, '2021-10-02','2021-10-10' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (1, 'Contactar comprador del auto', 'Llamar a lucao para arreglar la compra del auto', 0, '2021-10-03','2021-10-04' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (3, 'Ir al medico', 'sacar turno e ir al medico el dia viernes', 1, '2021-10-03','2021-10-03' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (4, 'sacar pasajes', 'Llamar a la agencia para sacar los dos pasajes necesarios', 0, '2021-10-02','2021-10-02' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (4, 'reservar hotel', 'Llamar al hotel para reservar 2 habitaciones', 1, '2021-10-02','2021-10-03' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (4, 'Trabajo', 'cuando vaya al trabajo recordar hacer los informes', 0, '2021-10-04','2021-10-04' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (7, 'comprar repuestos', 'acordarme de comprar los repuestos para el auto', 1, '2021-10-04','2021-10-04' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (8, 'Comprar comida para el perro', 'ir frente a la estacion y averiguar precios de bolsones de comida para dogui', 1, '2021-10-05','2021-10-05' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (7, 'Comprar lamparitas', 'Comprar y cambiar lamparitas de los patios', 1, '2021-10-07','2021-10-08' );
INSERT INTO Notas(id_usuario, titulo, descripcion, puede_eliminarse, fecha_creacion, fecha_modificacion) VALUES (10, 'cocinar un budin', 'no olvidar cocinar un budin el finde para ir de los tios', 0, '2021-10-08','2021-10-12' );

/*Insert de tabla CATEGORIAS*/
INSERT INTO Categorias(nombre, id_usuario) VALUES ('recordar', 1);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('compras', 1);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('super', 1);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('medico', 3);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('obligaciones', 4);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('comprar', 7);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('auto', 7);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('lista compras', 8);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('cocina', 10);
INSERT INTO Categorias(nombre, id_usuario) VALUES ('budines', 10);

/*Insert de tabla NOTA_CATEGORIA*/
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (1, 1);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (1, 2);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (2, 1);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (3, 4);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (4, 5);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (5, 5);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (6, 5);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (7, 6);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (7, 7);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (8, 8);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (9, 6);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (9, 7);
INSERT INTO Nota_Categoria(id_nota, id_categoria) VALUES (10, 10);


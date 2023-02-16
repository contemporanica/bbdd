# Diseño de tablas
El diseño de tablas consta de las siguientes tablas: Compositor, Pieza, Pieza_Instrumento, Instrumento.
Dentro de usuario encontramos: idCompositor (primary key), nombre, biografia.
En la tabla pieza encontramos: idPieza (primary key), idUsuario, nombre, datos.
En la tabla Pieza_Instrumento, la cual es una N:N, encontramos: idPieza, idInstrumento.
Dentro de la tabla Instrumento, encontramos: idInstrumento, nombre, familia.

En un primer momento, incluimos la tabla registro que se relacionaba (N:1) con la tabla Usuario, pero la suprimimos ya que no era necesaria. También incluimos una tabla compositor para incluir compositores que no pudieran registrarse, con una relación N:1 hacia la tabla archivos. Fue suprimida ya que la decisión final fue que los usuarios que se registran son compositores y suben sus propias piezas.

# Creación de base de datos
En la creación de la Base de Datos, hemos utilizado mysql con XAMPP para realizarlo, ya que lo hemos utilizado en otros proyectos que hemos utilizado bases de datos y nos parecía la forma más sencilla.
En la creación de de la Base de Datos hemos incluido las diferentes tablas que hemos realizado en el diseño de tablas y sus respectivas columnas y foreign keys.

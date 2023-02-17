# Diseño de tablas
El diseño de tablas consta de las siguientes tablas: compositor, pieza, pieza_instrumento, instrumento y familia.
Dentro de compositor encontramos: id_compositor (primary key), nombre, biografia.
En la tabla pieza encontramos: id_pieza (primary key), id_compositor, nombre, datos.
En la tabla pieza_instrumento, la cual es una N:N, encontramos: id_pieza, id_instrumento.
Dentro de la tabla instrumento, encontramos: id_instrumento, nombre, id_familia.
En la tabla familia: id_familia, nombre

En un primer momento, incluimos la tabla registro que se relacionaba (N:1) con la tabla Usuario, pero la suprimimos ya que no era necesaria. Fue suprimida y sustituida por la tabla compositor. Por último, añadimos la tabla familia, con atributos id_familia y nombre.

# Creación de base de datos
En la creación de la Base de Datos, hemos utilizado mysql con XAMPP para realizarlo, ya que lo hemos utilizado en otros proyectos que hemos utilizado bases de datos y nos parecía la forma más sencilla.
En la creación de de la Base de Datos hemos incluido las diferentes tablas que hemos realizado en el diseño de tablas y sus respectivas columnas y foreign keys.

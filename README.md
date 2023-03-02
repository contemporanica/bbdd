# Diseño de tablas
El diseño de tablas consta de las siguientes tablas: compositor, pieza, pieza_instrumento, instrumento y familia.
* Dentro de compositor encontramos: id_compositor (primary key), nombre, biografia.
* En la tabla pieza encontramos: id_pieza (primary key), id_compositor, nombre, datos.
* En la tabla pieza_instrumento, la cual es una N:N, encontramos: id_pieza, id_instrumento.
* Dentro de la tabla instrumento, encontramos: id_instrumento, nombre, id_familia.
* En la tabla familia: id_familia, nombre

En un primer momento, incluimos la tabla registro que se relacionaba (N:1) con la tabla Usuario, pero la suprimimos ya que no era necesaria. Fue suprimida y sustituida por la tabla compositor. Por último, añadimos la tabla familia, con atributos id_familia y nombre.

# Creación de base de datos
En la creación de la Base de Datos, hemos utilizado mysql con XAMPP para realizarlo, ya que lo hemos utilizado en otros proyectos que hemos utilizado bases de datos y nos parecía la forma más sencilla.
Para crear la base de datos en MySQL debemos definir, al menos, cuatro elementos:

* La base de datos por sí misma
* Las tablas y sus campos
* Las relaciones entre tablas
* La inserción de datos dentro de las tablas
En la creación de de la Base de Datos debemos acceder a la línea de comando MySQL, debemos accedea el comando para crear la base de datos y seleccionamos la base de datos, que en nuestro caso contemporanica, así que creamos las tablas y sus campos y generamos las relaciones entre tablas así que insertamos los datos necesarios ya incluidos en el diagrama de tablas y sus respectivas foreign keys.

Hemos tenido algunas complicaciones para ponerlo en conjunto con la API, pero después de varios cambios ha salido adelante.

---------------
# Layout tables
The table layout consists of the following tables: composer, piece, piece_instrument, instrument and family. Within composer we find: id_compositor (primary key), name, biography. 
* In the piece table we find: id_piece (primary key), id_composer, name, data. 
* In the piece_instrument table, which is an N:N, we find: id_piece, id_instrument. 
* Inside the instrument table, we find: id_instrumento, name, id_familia. 
* In the family table: family_id, name

At first, we included the record table that was related (N:1) to the User table, but we deleted it since it was not necessary. It was suppressed and replaced by the composer table. Finally, we add the family table, with id_familia and name attributes.

# Database creation
In the creation of the Database, we have used mysql with XAMPP to do it, since we have used it in other projects that have used databases and it seemed to us the easiest way. In the creation of the Database we have included the different tables that we have made in the design of tables and their respective columns and foreign keys. We've had some complications getting it together with the API, but after several changes it's worked out.

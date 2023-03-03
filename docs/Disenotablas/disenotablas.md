# Diseño de tablas
El diseño de tablas consta de las siguientes tablas: compositor, pieza, pieza_instrumento, instrumento y familia.
* Dentro de compositor encontramos: id_compositor (primary key), nombre, biografia.
* En la tabla pieza encontramos: id_pieza (primary key), id_compositor, nombre, datos.
* En la tabla pieza_instrumento, la cual es una N:N, encontramos: id_pieza, id_instrumento.
* Dentro de la tabla instrumento, encontramos: id_instrumento, nombre, id_familia.
* En la tabla familia: id_familia, nombre

En un primer momento, incluimos la tabla registro que se relacionaba (N:1) con la tabla Usuario, pero la suprimimos ya que no era necesaria. Fue suprimida y sustituida por la tabla compositor. Por último, añadimos la tabla familia, con atributos id_familia y nombre.

---------------

# Layout tables
The table layout consists of the following tables: composer, piece, piece_instrument, instrument and family. Within composer we find: id_compositor (primary key), name, biography. 
* In the piece table we find: id_piece (primary key), id_composer, name, data. 
* In the piece_instrument table, which is an N:N, we find: id_piece, id_instrument. 
* Inside the instrument table, we find: id_instrumento, name, id_familia. 
* In the family table: family_id, name

At first, we included the record table that was related (N:1) to the User table, but we deleted it since it was not necessary. It was suppressed and replaced by the composer table. Finally, we add the family table, with id_familia and name attributes.

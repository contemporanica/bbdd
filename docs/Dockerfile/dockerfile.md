# Introducción
Este documento tiene como finalidad explicar el Dockerfile
# Contenido
La linea **FROM mysql:5.7** redacta que descargue el paque mysql:5.7 para poder crear el contenedor en mysql.

Esta línea **CMD [ "--max_connections=10000" ]** permite crear el contenedor con varias conexiones para que así no pete este.

Esta línea **ADD contemporanicabbdd.sql /docker-entrypoint-initdb.d/contemporanicabbdd.sql** ejecuta el script en la ruta puesta para levantar la base de datos.



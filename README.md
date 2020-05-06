# Elasticsearch mini curso

Este proyecto sirve de base para iniciarse en el conocimiento de elasticsearch. Se usa docker para montar el entorno.

## Iniciar entorno docker

En principio, el volumen va a ser volatil, si se quiere tener persistencia, se puede descomentar las líneas de volumenes en docker-compose.yml

Estos pasos están mucho más documentados en la web oficial: https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html 

En este proyecto nos vamos a basar sólo en una única instancia y vamos a reducirlo.

### Requisitos

* docker instalado en el sistema
* docker-compose correctamente enlazado


### Ejecutamos el entorno: 
```
 cd docker
 docker-compose up -d
```

Esto levanta un elasticsearch en el puerto 9200, no seguro, con el que podremos hacer los distintos ejemplos.

## Consultas

Elasticsearch contiene una api REST de consultas con las que se puede administrar el entorno completo. Para lanzar estas consultas vamos a usar curl.


### Preparar llamadas

Para facilitar la guia del curso, y por homogenizar, se crea también un docker cliente con todo lo necesario para lanzar las consultas.

Para entrar en el cliente ejecutamos

```
docker exec -ti clientCourse /bin/sh
```

Esto nos situará en el raiz, nos movemos hasta /home/course

Si se quiere ejecutar desde un curl en máquina local, se debe enlazarl "127.0.0.1" en /etc/hosts a la direccion "elasticServer"

### Ejecución 1. List Nodes
Esta nos muestra los nodos activos. Si hubiesemos lanzado el docker de la url antes puesta, tendríamos 3.

### Ejecución 2. List Index

Esta nos muestra los indices. Elasticsearch tiene mapas de índices, de momento, no tenemos nada, así que sale vacío

https://www.elastic.co/guide/en/elasticsearch/reference/current/cat-indices.html

### Ejecución 3. Reset index Map v1

Crea el índice de pruebas con el mapa V1. Si existe, lo borra antes.

### Ejecución 4. Insert Bulk

Inserta los datos de prueba en bloque. son más de 7K registros

### Ejecución 5. Obtener todo

Lista los 10 primeros, pero la consulta es con todos los registros

### Ejecución 6. Get filter

Ejemplo de filtros

### Ejecución 7. Query

Ejemplo de consulta compleja

### Ejecución 8. Query

Ejemplo de consulta con wildcard

### Ejecución 9. Reset index Map v2

Crea el índice de pruebas con el mapa V2. Si existe, lo borra antes.

### Ejecución 10. Simple insert

Inserta 1 sólo registro. si existe el indice, se sobreescribe, si no se pone indice, se hace un autoIndex.

### Ejecuciónes 11,12. Ejemplos de consultas

Ejemplos de consultas combinadas


## Kibana
Por último, se pueden ver los resultados en la aplicación de kibana accediendo a "http://localhost:5601"
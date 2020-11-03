# wiremock-app

### Para buildear la imagen ejecutar:

```
docker build -t wiremock-app:1.0 .
```

### Para ejecutar (linux):

```
docker run -d --rm -p 9090:9090 -v $(pwd)/mappings:/app/mappings -v $(pwd)/__files:/app/__files wiremock-app:1.0
```

### Para invocar:

http://localhost:9090/uri-del-servicio

### Agregar mapeos:

En la carpeta mappings agregar un archivo json por cada configuración de mock que se requiera. La configuración de los stubs se puede ver [acá](http://wiremock.org/docs/stubbing/)

Para el body de los response se puede hacer referencia a un archivo con el json a devolver. Dicho archivo debe estar en la carpeta "__files"

En el caso de **modificar o agregar** un nuevo mapping y/o file (json) es necesario hacer **stop del container y volver a levantarlo**.

Para más información ver [acá](http://wiremock.org/docs)

### Para simular fallas:

Ver [link](http://wiremock.org/docs/simulating-faults/)

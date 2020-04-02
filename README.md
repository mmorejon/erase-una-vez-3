# Erase una vez 3

Aplicación Golang utilizada en los ejercicios del libro [Érase una vez Kubernetes](https://leanpub.com/erase-una-vez-kubernetes).

## Descripción

La aplicación consulta el número de ficheros existentes en el directorio `/srv/eraseunavez` e imprime un mensaje con esta información en la consola. Después de imprimir el mensaje crea un nuevo fichero utilizando el nombre y la fecha de la máquina.

Es un ejemplo sencillo utilizado en múltiples secciones del libro.

## Funcionamiento

Para ver su funcionamiento utilice el siguiente comando:

```bash
docker container run --rm mmorejon/erase-una-vez-3:0.1.0

hostname: b82fdc7f3901 - total de ficheros: 0
hostname: b82fdc7f3901 - total de ficheros: 1
hostname: b82fdc7f3901 - total de ficheros: 2
```

## Variables de entorno

El funcionamiento de la aplicación puede ser modificado a través de variables de entorno:

|Variable de entorno|Descripción|Valor por defecto|
|-------------------|-----------|-----------------|
|`SLEEP_TIME`| Modifica el intervalo de tiempo entre mensajes. En segundos.| 5 |

```bash
docker container run --rm \
  --env SLEEP_TIME=3
  mmorejon/erase-una-vez-3:0.1.0

hostname: b82fdc7f3901 - total de ficheros: 0
hostname: b82fdc7f3901 - total de ficheros: 1
hostname: b82fdc7f3901 - total de ficheros: 2
```

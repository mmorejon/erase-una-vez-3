# erase-una-vez-3

[![English](https://img.shields.io/badge/Read_in-English-blue?style=flat-square)](README.en.md)

<div align="center">

<img src="https://github.com/mmorejon/erase-una-vez-k8s/blob/main/assets/book-cover.jpg" alt="Portada Libro Érase una vez Kubernetes" width="300"/>

Aplicación Golang utilizada en los ejercicios del libro Érase una vez Kubernetes.

👇 **Consigue la edición actualizada 2026 aquí:** 👇

[![Amazon](https://img.shields.io/badge/Amazon-Comprar_en_Tapa_Blanda-orange?style=for-the-badge&logo=amazon)](https://www.amazon.es/dp/8409212765)
[![LeanPub](https://img.shields.io/badge/LeanPub-Descargar_Ebook-blue?style=for-the-badge&logo=leanpub)](https://leanpub.com/erase-una-vez-kubernetes)

</div>

---

## Descripción

La aplicación consulta el número de ficheros existentes en el directorio `/srv/eraseunavez` e imprime un mensaje con esta información en la consola. Después de imprimir el mensaje crea un nuevo fichero utilizando el nombre y la fecha de la máquina.

Es un ejemplo sencillo utilizado en múltiples secciones del libro.

## Funcionamiento

Para ver su funcionamiento utilice el siguiente comando:

```bash
docker container run --rm ghcr.io/mmorejon/erase-una-vez-3:v0.2.1

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
  ghcr.io/mmorejon/erase-una-vez-3:v0.2.1

hostname: b82fdc7f3901 - total de ficheros: 0
hostname: b82fdc7f3901 - total de ficheros: 1
hostname: b82fdc7f3901 - total de ficheros: 2
```

---

## 🤝 Comunidad y Feedback

1.  ⭐ **¿Te ha sido útil?** Dale una **estrella** al repositorio (arriba a la derecha). Nos ayuda a llegar a más ingenieros.
2.  📚 **¿Aún no tienes el libro?** Compra el libro en Amazon o Leanpub.

<div align="center">
    <a href="https://www.amazon.es/dp/8409212765">
        <img src="https://img.shields.io/badge/Amazon-Ver_Precio_y_Opiniones-orange?style=for-the-badge&logo=amazon" />
    </a>
</div>

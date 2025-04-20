# Erase una vez 3

Golang application used in the exercises of the book [Érase una vez Kubernetes](https://leanpub.com/erase-una-vez-kubernetes).

Traducción: [Español](README.md)

## Description

The application checks the number of existing files in the `/srv/eraseunavez` directory and prints a message with this information to the console. After printing the message, it creates a new file using the machine's hostname and date.

It's a simple example used in multiple sections of the book.

## How to use it

To see how it works, use the following command:

```bash
docker container run --rm ghcr.io/mmorejon/erase-una-vez-3:v0.2.1

hostname: b82fdc7f3901 - total de ficheros: 0
hostname: b82fdc7f3901 - total de ficheros: 1
hostname: b82fdc7f3901 - total de ficheros: 2
```

## Environment variables

The application can be modified through environment variables:

|Environment variable|Description|Default value|
|-------------------|-----------|-----------------|
|`SLEEP_TIME`| Modifies the time interval between messages. In seconds.| 5 |

```bash
docker container run --rm \
  --env SLEEP_TIME=3
  ghcr.io/mmorejon/erase-una-vez-3:v0.2.1

hostname: b82fdc7f3901 - total de ficheros: 0
hostname: b82fdc7f3901 - total de ficheros: 1
hostname: b82fdc7f3901 - total de ficheros: 2
```****

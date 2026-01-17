# erase-once-3

[![es](https://img.shields.io/badge/Leer_en-Español-blue.svg?style=flat-square)](README.md)

<div align="center">

<img src="./assets/book-cover.jpg" alt="Once Upon a Time Kubernetes Book Cover" width="300"/>

This repository is a practical example created for the book **"Once Upon a Time Kubernetes"**.

👇 **Get the updated 2026 edition here:** 👇

[![Amazon](https://img.shields.io/badge/Amazon-Buy_Paperback-orange?style=for-the-badge&logo=amazon)](https://www.amazon.es/dp/B0F9VPCJ7X)
[![LeanPub](https://img.shields.io/badge/LeanPub-Download_Ebook-blue?style=for-the-badge&logo=leanpub)](https://leanpub.com/once-upon-a-time-kubernetes)

</div>

---

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
```

---

## 🤝 Community and Feedback

1.  ⭐ **Has this been useful to you?** Give a **star** to the repository (top right). It helps us reach more engineers.
2.  📚 **Still don't have the book?** Buy the book on Amazon or Leanpub.

<div align="center">
    <a href="https://www.amazon.es/dp/B0F9VPCJ7X">
        <img src="https://img.shields.io/badge/Amazon-See_price_and_reviews-orange?style=for-the-badge&logo=amazon" />
    </a>
</div>

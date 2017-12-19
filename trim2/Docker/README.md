# Docker

## 1. Introducción

**Docker** es una tecnología contenedor de aplicaciones construida sobre LXC.

## 2. Requisitos

Para esta práctica vamos a usar la MV de OpenSUSE **SUSEclientedelcliente**. Además, debe tener
una versión de Kernel .10 o superior.

![](./img/1.png)

## 3. Instalación y primeras pruebas

*Ejecutamos como superusuario.*

![](./img/2.png)

![](./img/3.png)

*Salimos de nuestra sesión, volvemos a entrar para efectuar los cambios y comprobamos.*

![](./img/4.png)

![](./img/5.png)

## 4. Configuración de la red

**Habilitar acceso a la red externa a los contenedores.**

Es necesario este paso para que nuestro contenedor tenga acceso a la red exterior.

![](./img/6.png)

*Y reiniciamos.*

#### 4.1 Más comandos

Diferentes comandos útiles para nuestro proyecto.

## 5. Crear un contenedor manualmente

Crearemos un contenedor Debian8 y, dentro, Nginx.

#### 5.1 Crear una imagen

![](./img/7.png)

![](./img/8.png)

*Crearemos un contenedor a partir de la imagen debian:8 y ejecutamos bin/bash.*

![](./img/9.png)

**PROBLEMAS CON AL APT-GET NO SE ABRE EL DOCKER**

![](./img/error.png)

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

La solución encontrada es `systemctl restart docker`, `docker attach ID` `docker start ID`.

*Seguimos con la práctica entrando en nuestra mv e instalando el nginx y demás.*

![](./img/10.png)

![](./img/11.png)

![](./img/12.png)

![](./img/13.png)

Creamos un fichero HTML.

![](./img/14.png)

Ahora un script con el siguiente contenido en esta dirección.

![](./img/15.png)

*Es importante saber que este fichero debe tener permisos de ejecución.*

![](./img/16.png)

Ahora debemos abrir una nueva imagen con los cambios ya efectuados.

![](./img/17.png)

Aplicamos los cambios.

![](./img/18.png)

Por uĺtimo, insertamos comandos para actualizar nuestros cambios.

![](./img/19.png)

#### 5.2 Crear contenedor con Nginx

Iniciamos el contenedor de la siguiente manera.

![](./img/20.png)

Hecho esto abrimos una terminal y mostramos los contenedores en ejecución.

![](./img/21.png)

Abrimos un navegador para conectar con el servidor.

![](./img/22.png)

Paramos el contenedor y lo eliminamos

![](./img/23.png)

## 6. Crear un contenedor con Dockerfile

#### 6.1 Comprobaciones iniciales

![](./img/24.png)

#### 6.2 Preparar ficheros

Creamos el directorio `/home/carvajal/docker07` y ponemos dentro ciertos ficheros.

![](./img/25.png)

![](./img/26.png)

#### 6.3 Crear imagen desde el Dockerfile

El fichero Dockerfile tiene información para construir el contendor. Hacemos comprobaciones y creamos.

![](./img/26.png)

![](./img/27.png)

![](./img/28.png)

#### 6.4 Crear contenedor y comprobar

Creamos un contenedor a partir de la imagen que antes hemos creado y, además, haremos que ejecute el programa `server.sh`.

![](./img/29.png)

Ahora vamos a otra terminal para hacer más comprobaciones.

![](./img/30.png)

Vamos al navegador y vemos si podemos conectarnos.

![](./img/31.png)

## 7. Migrar las imágenes de docker a otro servidor

Ahora llevamos los contenedores docker a un nuevo servidor. Primero hacemos un backup.

![](./img/32.png)

Luego exportamos imagen docker a fichero.

![](./img/33.png)

Importamos imagen docker desde fichero.

![](./img/34.png)

## 8. Limpiar

Para terminar, paramos los contenedores y los destruimos.

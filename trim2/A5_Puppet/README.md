# Puppet

## 1. Introducción

Puppet es una herramienta diseñada para administrar la configuración de sistemas Unix-like y de Microsoft Windows de forma declarativa. El usuario describe los recursos del sistema y sus estados, ya sea utilizando el lenguaje declarativo de Puppet ó un lenguaje específíco de Ruby.

#### 1.2 Configuración

Usaremos tres máquinas virtuales:
* Master - **SUSE-Master**
* Cliente1 - **SUSEclientedelcliente**
* Cliente2 - **Windows7**

#### Configurar /etc/hosts

Una vez configuradas las máquinas virtuales ahora debemos configurar sus `hosts` para poder hacer ping entre ellas.

![](./img/1.png)

![](./img/2.png)

![](./img/3.png)

#### 1.3 Comprobar las configuraciones.

Con unos comandos propios de visualizar los datos de configuración sabremos si las máquinas virtuales están bien gestionadas.

## 2. Primera versión del fichero pp.

El primer paso es instalar el Puppet Master en la máquina `master`, nuestro OpenSUSE.

![](./img/4.png)

Comandos para gestionar el estado de Puppet.

![](./img/5.png)

Se crea automáticamente el fichero `etc/puppet/manifests`.

![](./img/6.png)

Preparamos los ficheros en esta carpeta para el siguiente paso.

![](./img/7.png)

![](./img/8.png)

#### 2.1 readme.txt

Escribimos en el `readme.txt` ya que los ficheros en los que se aloja pueden ser descargados desde el resto de máquinas clientes Puppet.

![](./img/9.png)

#### 2.2 site.pp

`manifests` es el fichero principal de configuración de órdenes para los agentes/nodos puppet. Debemos crear un `site.pp`.

![](./img/10.png)

#### 2.3 hostlinux1.pp

Creamos un archivo con este nombre en `/etc/puppet/manifests/classes/hostlinux1.pp`. Esto es, podemos tener muchas configuraciones vamos a organizar los ficheros y, por ello, lo guardamos en esta dirección. Esto es lo que debemos insertar en este archivo.

![](./img/11.png)

Vamos a consultar los ficheros que hemos creado.

![](./img/12.png)

Comprobamos que en la ruta `/var/lib/puppet` está el usuario `puppet`.

![](./img/13.png)

Reiniciamos el servicio.

![](./img/14.png)

Ahora comprobaremos que el servicio está en forma correcta.

![](./img/15.png)

Ahora consultaremos si hay errores en el log.

![](./img/16.png)

Abrimos el cortafuegos.

![](./img/17.png)

## 3. Instalación y configuración del cliente1.

Vamos al cliente1 e instalamos el agente Puppet.

![](./img/18.png)

Hemos de configurar el **puppet.conf**. El cliente puppet debe ser informado de quien será su master.

![](./img/19.png)

Comprobamos que la ruta `/var/lib/puppet` tiene el usuario `puppet`.

![](./img/20.png)

Gestionamos el servicio puppet.

![](./img/21.png)

Realizamos la última comprobación.

![](./img/22.png)

## 4. Certificados

A partir de este momento no debemos cambiar los nombres de las máquinas para evitar problemas.

#### 4.1 Aceptar certificados

Vamos a la máquina virtual del master y nos aseguramos de que somos `root` y consultamos las peticiones pendientes. Si no saliera nada, desactivamos el cortafuegos y reiniciamos. Es necesario recalcar que debemos tener encendidas las máquinas virtuales del master y el cliente.

![](./img/23.png)

Aceptamos el certificado que nos aparece.

![](./img/24.png)

#### 4.2 Comprobación

Volvemos al cliente1 y reiniciamos el servicio Puppet.

![](./img/25.png)

Asegurándonos que somos el usuario root, vamos a ejecutar ciertos comandos para comprobar posibles erores.

**Problemas con el certificado**

# LDAP - OpenSuse

## 1. Servidor LDAP

#### 1.1 Preparar la máquina.

Haremos las configuraciones naturales de cada práctica cambiando el nombre del equipo y configurando nuestra información en **hosts**.

#### 1.2 Instalación del Servidor LDAP.

Comenzaremos yendo a `Yast -> Productos adicionales -> Gestor` e instalaremos los paquetes `yast2-auth-server, openlapd2, krb5-server, krb5-client`.

![](./img/1.png)

![](./img/2.png)

![](./img/3.png)

![](./img/113.png)

![](./img/114.png)

![](./img/115.png)

Una vez instalados debemos ir a `Yast -> Servidor de Autentificación` y configurar como en la imagen siguiente.

![](./img/116.png)

![](./img/117.png)

![](./img/118.png)

![](./img/119.png)

![](./img/120.png)

![](./img/121.png)

![](./img/122.png)

Ahora insertaremos unos comandos para verificar que todo funciona con exactitud.

![](./img/123.png)

![](./img/124.png)

Terminada esa verificación, procederemos a instalar una herramienta gráfica del lapd llamada `gq`.

![](./img/125.png)

#### 1.3 Problemas

Si ocurrieran problemas a la hora de continuar la práctica debemos desinstalar todo lo anterior.

#### 1.4 Crear usuarios y grupos LDAP

Nos dirigimos a `Yast -> Usuarios y grupos -> Definir filtro -> LAPD` e insertamos clientes que aparecerán en la pantalla del gq.

![](./img/8.png)

Desde la máquina del cliente podemos hacer ciertas comprobaciones para establecer conexión con el servidor.

![](./img/cli1.png)

Vamos a la máquina del servidor y creamos con el filtro `LDAP` el grupo **piratas2** y los usuarios correspondientes como aparece en al imagen.

![](./img/200.png)

![](./img/201.png)

![](./img/202.png)

![](./img/203.png)

![](./img/204.png)

Con este comando a continuación consultamos la base de datos LDAP.

![](./img/10.png)

## 2. Cliente LDAP

A partir de este punto vamos a escribir información en el servidor LDAP.

#### 2.1 Preparativos

Vamos a otra máquina virtual OpenSUSE y la configuramos de manera que sea un cliente.

#### Comprobación

Comprobamos que el servidor LDAP es accesible para el cliente.

![](./img/11.png)

Una vez en el cliente, vamos a `Terminal -> gq -> Preferences` e insertamos los datos correspondientes.

![](./img/12.png)

#### 2.2 Instalar cliente LDAP

`Yast -> LDAP and Kerberos -> Opciones` y configuramos como en la pantalla.

![](./img/13.png)

#### 2.3 Comprobamos desde el cliente

Últimas comprobaciones y observamos desde el cliente que funciona.

![](./img/300.png)

![](./img/14.png)

![](./img/15.png)

![](./img/301.png)

#### 2.4 Autenticación

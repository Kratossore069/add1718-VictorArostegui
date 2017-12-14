# Samba

Vamos a necesitar dos máquinas virtuales:

* OpenSUSE (cliente y servidor)

* Windows 7/10

## 1. Servidor Samba (MV1)

#### 1.1 Preparativos

Teniendo esto empezamos nuestra práctica con unos comandos iniciales.

![](./img/1.png)

![](./img/2.png)

#### 1.2 Usuarios locales

Nuestro siguiente paso es crear usuarios en el servidor de OpenSUSE. Vamos a crear los grupos `soldados`, `piratas` y los usuarios correspondientes para los grupos como `supersamba` y `smbguest`.

![](./img/3.png)

![](./img/4.png)

Terminado ese paso procederemos a crear un fichero `samba07` con las carpetas `barcos`, `castillo`, `public`.

![](./img/5.png)

Después, usando el comando `scp` para crear una copia de seguridad.

![](./img/6.png)

Ahora vamos a configurar el servidor Samba desde el Yast.

![](./img/7.png)

![](./img/8.png)

![](./img/9.png)

Ahora debemos ir a `Recursos compartidos` y crear recursos llamados `public` y `cdrom`.

![](./img/10.png)

![](./img/11.png)

![](./img/12.png)

#### 1.3 Crear las carpetas para los futuros recursos compartidos

Abrimos una consola para comprobar los resultados con el comando `testparm`.

![](./img/13.png)

Ahora comprobamos la lista de usuarios Samba.

![](./img/14.png)

Lo siguiente es reiniciar el servicio para valorar los cambios. Se puede hacer por método gráfico.

![](./img/15.png)

![](./img/16.png)

Unos comandos de comprobación.

![](./img/17.png)

![](./img/18.png)

Una vez en Windows, nos conectamos al servidor Samba y observamos que tenemos acceso a nuestras carpetas.

![](./img/19.png)

Comprobamos resultados.

![](./img/20.png)

![](./img/21.png)

![](./img/22.png)

![](./img/23.png)

Observamos las conexiones abiertas.

![](./img/24.png)

![](./img/25.png)

![](./img/26.png)

Volviendo a Linux, mostraremos todos los recursos y equipos.

![](./img/27.png)

![](./img/28.png)

![](./img/29.png)

Ahora iremos al fichero de `fstab` para conseguir un montaje automático.

![](./img/30.png)

Por último en el informe, ordenadamente, se solucionan unas preguntas.

![](./img/31.png)

* No, no deben ser las mismas por un tema de seguridad.

* Si no está vinculado con los ficheros de configuración es como si no existiera.

* A partir de la configuración de `/etc/passwd`.

* El efecto que tiene es que ahora todos tienen acceso a Samba con y sin contraseña.

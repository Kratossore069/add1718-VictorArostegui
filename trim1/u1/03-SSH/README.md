# Acceso remoto con SSH

Vamos a necesitar para esta práctica tres máquinas virtuales.

* Una máquina **OpenSUSE** servidor.

* Una máquina **OpenSUSE** cliente.

* Una máquina **Windows** cliente.

Lo primero que debemos hacer es tener nuestra máquina SUSE servidor con estas especificaciones.

![1](./img/1.png)

En nuestra máquina SUSE servidor necesitaremos mostrar los siguientes comandos mostrados en pantalla para comprobar cambios.

![1](./img/2.png)

![1](./img/3.png)

![1](./img/4.png)

![1](./img/5.png)

En el servidor crearemos distintos usuarios.


![1](./img/6.png)

A continuación instalaremos el **openssh** en nuestra máquina virtual.

![1](./img/7.png)

Insertando un `sudo systemctl status sshd` observamos el estado de nuestro servicio.

![1](./img/8.png)

Con `ps -ef|grep sshd` comprobamos los servicios del sistema.

![1](./img/9.png)

El siguiente comando es `netstat -ntap` para comprobar que el servicio tiene el puerto 22 en funcionamiento en tcp y openssh. Si esto no funciona hay que bajar un momento el cortafuegos.

![1](./img/12.png)

Hacemos `ssh [ip-del-servidor]` para verificar que las máquinas se ven entre ellas.

![1](./img/11.png)

### ¿Y si cambiamos las claves del servidor?

Confirmamos que existen ficheros en `/etc/ssh` y debemos ver que existen `ssh_host*key` y `ssh_host*key.pub`.

![](./img/14.png)

Vamos a configurar el `sshd_config` y dejamos una única línea `HostKey /etc/ssh/ssh_host_rsa_key`. Debemos destildar esa línea.

![](./img/15.png)

Vamos a regenerar nuevas claves para la identificación de nuestro servidor. Para ello, escribimos el comando **a continuación**.

![](./img/16.png)

Reiniciamos el servicio SSH.

![](./img/17.png)

Y ahora comprobamos que el servicio está en ejecución.

![](./img/18.png)

Ahora vamos a personalizar el **bash** en la máquina servidor. Debemos entrar al usuario **carvajal1**, en nuestro caso, y añadir estas lineas a continuación descritas.

![](./img/19.png)

Terminado este paso, creamos el fichero **.alias** descrito en la misma ruta de la foto con el siguiente contenido.

![](./img/20.png)

Nuestro siguiente paso será de configurar SSH para poder acceder desde el cliente1. **Primero** debemos entrar en ssh-clint7a. **Luego** ejecutamos el comando a continuación. Junto con el comando de crear una llave vemos el contenido de la nueva llave.

![](./img/21.png)

Insertamos la nueva llave en el usuario4 de nuestra máquina para permitirle entrar al sistema sin necesidad de password.

![](./img/22.png)

### Uso del SSH como túnel para x

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

# Práctica de VNC

### VNC en OpenSuse

Lo primero que necesitamos instalar en OpenSUSE desde `Yast -> VNC`

![1](./img/1.png)

Permitimos la administración remota y el cortafuegos por la guía facilitada.

![2](./img/2.png)

Aparecerá un mensaje de que faltan algunos componentes y que habrá que instalarlos.

![2](./img/3.png)

Al acabar la instalación se deberá reiniciar el sistema.

![2](./img/4.png)

Si aparecen problemas para poder usar el VNC debeŕiamos desactivar el cortafuegos.

![2](./img/susevnc2.png)

Ejecutamos el comando `vncviewer` desde el terminal y las dos pantallas se verían.

![2](./img/vncopensuseprueba.png)

Como último paso ejecutamos `netstat -p` en la terminal para examinar las direcciones.

![2](./img/netstat.png)

### VNC en Windows

Vamos a instalar un servicio VNC en una máquina Windows. Lo primero que haremos será instalar un programa llamado `TightVNC`

![2](./img/5.png)

La siguiente parte es importante por que en la máquina servidor necesitamos instalar `SOLAMENTE` el modo servidor.

![2](./img/6.png)

Una vez instalado nos vamos a la MV del cliente e instalamos `SOLAMENTE`  el `Viewer`.

![2](./img/7.png)

Cuando haya concluído, iniciamos las dos máquinas virtuales y encendemos ambos programas. Aparcerá una pantalla que nos pedirá la IP de la máquina remota y, automáticamente, podremos observar la otra máquina.

![2](./img/8.png)

Como última medida, insertamos el último comando en la `PowerShell` El comando es `netstat -n` y permite observar las IPs.

![2](./img/9.png)

### VNC de Windows a OpenSUSE

Vamos a hacer una prueba de cómo funcionaría el VNC desde Windows a OpenSUSE.

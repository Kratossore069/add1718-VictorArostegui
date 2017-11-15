# LDAP

Comenzaremos yendo a `Yast -> Productos adicionales -> Gestor` e instalaremos los paquetes `yast2-auth-server, openlapd2, krb5-server, krb5-client`.

![](./img/1.png)

![](./img/2.png)

![](./img/3.png)

Una vez instalados debemos ir a `Yast -> LDAP` y configurar como en la imagen siguiente.

![](./img/4.png)

Ahora insertaremos unos comandos para verificar que todo funciona con exactitud.

![](./img/5.png)

![](./img/6.png)

Terminada esa verificación, procederemos a instalar una herramienta gráfica del lapd llamada `gq`.

![](./img/7.png)

Nos dirigimos a `Yast -> Usuarios y grupos -> Definir filtro -> LAPD` e insertamos clientes que aparecerán en la pantalla del gq.

![](./img/8.png)

Desde la máquina del cliente podemos hacer ciertas comprobaciones para establecer conexión con el servidor.

![](./img/cli1.png)

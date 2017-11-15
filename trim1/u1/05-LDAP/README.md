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

Vamos a la máquina del servidor y creamos con el filtro `LDAP` el grupo **piratas2** y los usuarios correspondientes como aparece en al imagen.

![](./img/9.png)

Con este comando a continuación consultamos la base de datos LDAP.

![](./img/10.png)

Comprobamos que el servidor LDAP es accesible para el cliente.

![](./img/11.png)

Una vez en el cliente, vamos a `Terminal -> gq -> Preferences` e insertamos los datos correspondientes.

![](./img/12.png)

`Yast -> LDAP and Kerberos -> Opciones` y configuramos como en la pantalla.

![](./img/13.png)

Últimas comprobaciones y observamos desde el cliente que funciona.

![](./img/14.png)

![](./img/15.png)

# PDFCreator

Necesitamos **Windows Server** y **Windows cliente**.

#### 1.1 Rol impresión

Vamos al servidor e instalamos el rol de impresión por Internet.

![](./img/1.png)

![](./img/2.png)

#### 1.2 Instalar impresora PDFCreator

Instalamos **PDFCreator**.

![](./img/3.png)

Vamos a `PDFCreator -> Ajustes -> Autoguardado` y elegimos la carpeta de destino de nuestros ficheros.

![](./img/4.png)

#### 1.3 Probar la impresora en local

Probamos la impresora e imprimimos un archivo cualquiera de un bloc de notas.

![](./img/5.png)

![](./img/6.png)

![](./img/7.png)

![](./img/8.png)

#### 1.4 Compartir por red

Vamos a nuestra carpeta donde alojamos los archivos guardados. `Botón derecho -> Propiedades -> Compartir`. Y le cambiamos el nombre a `PDFnombrealumnoXX`. Si no podemos cambiar el nombre es que no hay un usuario con ese nombre. Crearlo.

![](./img/9.png)

![](./img/10.png)

![](./img/11.png)

En el cliente debemos buscar la dirección del servidor.

![](./img/12.png)

![](./img/13.png)

#### 2. Acceso Web

#### 2.1 Instalar característica impresión Web

Debemos tener instalado en el servidor el servicio **Impresión de Internet**.

![](./img/14.png)

#### 2.2 Configurar impresión Web

Debemos acceder desde el cliente a la dirección del servidor como hicimos antes para entrar en la configuración de la impresora. Si no podemos acceder a ella, en el servidor debemos seguir estos pasos.

![](./img/15.png)

![](./img/16.png)

![](./img/17.png)

![](./img/18.png)

Hecho esto volvemos al cliente.

![](./img/19.png)

![](./img/20.png)

![](./img/21.png)

![](./img/22.png)

![](./img/23.png)

Ahora podemos imprimir desde el cliente al servidor.

#### 2.3 Comprobar desde el navegador

Siguiendo los pasos de las fotos vamos a crear un documento de texto en el cliente para imprimirlo por el servidor.

![](./img/24.png)

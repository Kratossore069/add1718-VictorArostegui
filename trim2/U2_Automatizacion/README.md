# Vagrant y Virtual Box

Vagrant es una herramienta para la creación y configuración de entornos de desarrollo virtualizados. Vamos a usar **Ubuntu** para esta práctica.

## 2. Primeros pasos
#### 2.1 Instalar

Procedemos a instalar **Vagrant**. El profesor dará las instrucciones necesarias.

#### 2.2 Proyecto

* Creamos un directorio para nuestro proyecto.

![](./img/1.png)

#### 2.3 Imagen, caja o Box

* Necesitamos una imagen para nuestro **Vagrant**.

![](./img/2.png)

![](./img/3.png)

* Ahora debemos modificar el archivo `Vagrantfile` para poder usar una caja determinada.

![](./img/4.png)

*Se puede trabajar mejor con el archivo quitando las lineas comentadas*

![](./img/5.png)

![](./img/6.png)

#### 2.4 Iniciar una nueva máquina

* Iniciamos una nueva máquina virtual usando **Vagrant** siguiendo estos pasos.

![](./img/7.png)

![](./img/8.png)

*Comandos útiles de Vagrant*

![](./img/9.png)

## 3. Configuración del entorno virtual

#### 3.1 Carpetas sincronizadas

* Identificamos las carpetas compartidas entre la máquina virtual y la máquina real.

![](./img/10.png)

#### 3.2 Redireccionamiento de los puertos

* Hay que configurar el enrutamiento de puertos. Si hubiera problemas para descargar **apache2** debemos hacer `sudo apt-get update`

![](./img/11.png)

* Modificamos **Vagrantfile** para ue el puerto 4567 del sistema anfitrión sea enrutado al puerto 80 del ambiente virtualizado.

![](./img/12.png)

![](./img/13.png)

* Hacemos unos comandos para confirmar los cambios realizados.

![](./img/14.png)

* Ahora comprobamos si funciona.

![](./img/15.png)

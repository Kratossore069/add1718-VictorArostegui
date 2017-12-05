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

## 4. Ejemplos de configuración Vagrantfile

Información para configurar Vagrantfile.

* **Configurar la red** -> config.vm.network "private_network", ip: "192.168.33.10"

* **Configurar carpetas compartidas** -> config.vm.synced_folder "htdocs", "/var/www/html"

* **Configurar conexión SSH** -> config.ssh.username = "root"

config.ssh.password = "vagrant"

config.ssh.insert_key = "true"

* **Ejecución remota de aplicaciones gráficas** -> config.ssh.forward_agent = true

config.ssh.forward_x11 = true

## 5. Suministro

![](./img/15.1.png)

#### 5.1 Suministro mediante shell script

* Creamos el script `install_apache.sh` dentro del proyecto para instalar Apache. Vamos a nuestra carpeta de Vagrant y lo hacemos ahí.

![](./img/16.png)

* Dar permisos de ejecución.

![](./img/16.1.png)

* Vamos a **Vagrantfile** y agregamos la siguiente línea.

![](./img/17.png)

* Hecho esto creamos de nuevo nuestra MV y hacemos `vagrant reload` para que se ejecuten los comandos de nuestro script.

![](./img/18.png)

* Vamos a nuestro navegador y vemos que ha funcionado.

![](./img/19.png)

#### 5.2 Suministro mediante Puppet

* Ahora iremos a nuestro archivo de Vagrantfile y haremos lo siguiente.

![](./img/20.png)

* Ahora creamos un fichero con las órdenes puppet para instalar nmap. Crear una carpeta `manifests` y ahí crear el archivo.

 ![](./img/21.png)

 * Hecho esto hay que aplicar los cambios en la máquina virtual. `vagrant reload` y `vagrant provision`.

![](./img/22.png)

## 6. Nuestra caja personalizada

Ahora vamos a crear nuestra propia caja.

#### 6.1 Preparar la MV Virtualbox

* Usaremos una MV que ya tenemos e instalaremos en ella el OpenSSH.

![](./img/23.png)

* Crear el usuario Vagrant para poder entrar en la máquina virtual por SSH.

![](./img/24.png)

![](./img/25.png)

![](./img/26.png)

![](./img/27.png)

* Debemos configurar `/etc/sudoers` para que no nos solicite la contraseña de root.

![](./img/28.png)

#### 6.2 Crear la caja vagrant

* Creamos la carpeta con la nueva caja que vamos a crear.

![](./img/29.png)

![](./img/30.png)

* Localizamos el nombre de nuestra MV.

![](./img/31.png)

* Creamos la caja de nuestra máquina Vagrant y visualizamos que se ha creado.

![](./img/32.png)

![](./img/33.png)

![](./img/34.png)

# Tareas programadas

En esta práctica vamos a necesitar una máquina Windows y otra que es Linux.

Máquinas a utilizar:

Windows - **Windows7**

Linux - **SUSE-Master**

## 1. Windows - Tarea diferida

Configuramos la máquina Windows.

Programaremos una tarea diferida para que nos muestre un mensaje en pantalla. Para hacer esto, vamos a `Panel de control -> Herraminetas administrativas -> Programador de tareas`.

![](./img/1.png)

![](./img/2.png)

Creamos una tarea para ahora mismo.

![](./img/3.png)

![](./img/4.png)

![](./img/5.png)

![](./img/6.png)

![](./img/7.png)

![](./img/8.png)

![](./img/9.png)

Esta ha sido una tarea para abrir un mensaje. El siguiente es abrir automáticamente una hoja de texto.

![](./img/w1.png)

El último por probar será abrir el Google Chrome.

![](./img/w2.png)

## 2. Windows - Tarea periódica

Una tarea periódica se ejecuta cada cierto período de tiempo. En esta tarea vamos a programar el apagado del equipo.

![](./img/11.png)

![](./img/12.png)

## 3. Linux - Tarea diferida

Vamos a hacer lo mismo con Linux - OpenSUSE.

El servicio `atd` es el responsable de la ejecución de comandos at.

![](./img/l1.png)

Debemos crear un script con el siguiente contenido.

![](./img/l2.png)

Si no disponemos del programa `zenity` debemos instalarlo.

![](./img/l3.png)

Una vez instalado, programaremos para cuándo visualizar el archivo. Primero hay que "encender" servicio `atd`.

![](./img/l4.png)

Los comandos más básicos son.

![](./img/l5.png)

## 4. Linux - Tarea periódica

El comando `crontab` sirve para que los usuarios normales programen sus tareas periódicas.

Observamos que no hay tareas programadas.

![](./img/ll1.png)

Abre el editor para crear una nueva tarea programada con `crontab -e`.

![](./img/ll2.png)

Y para consultar la tarea que tenemos programada...

![](./img/ll3.png)

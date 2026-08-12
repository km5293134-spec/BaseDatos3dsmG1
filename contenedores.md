# contenedores de sistemas Gestores de Bases de Datos
![ImagenDocker](./img/imagenDocker.png)
  
## imagenes 

> comandos para cada imagen 

- descargar imagen de postsgres
 ```

docker pull postgres:14.22-trixie

```
-descargar imagen de tutorial de Docker 

```
docker pull docker/getting-started

```
## creacion de contenedores 

```docker
docker run -d -p 80.80 **nombre o codigo de la imagen
```
Donde: 
- -d detach (background)
- -p puerto (el primer numro de puertono se cambia, el segundo si podemos cambiarlo)

### contenedor tutorial de docker
```
docker run -d -p 80:80 d79336f4812b
docker run -d -p 80:81 docker/getting-started:latest

```

## contenedor de maria db sin volumen

```docker
docker run -d -- name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 e0236fc6386e
```docker

```

## contenedor de maria db con  volumen
docker volume create v-mariadbg1
docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 -v v-mariadbg1:/var/lib/mysql e0236fc6386e

```docker
```

## comandos de docker 

| comando | descripcion |
|---|---|
| **Docker  --version** | _Muestra la version del Docker_ |
| **Docker  pull nombre_imagen** | _descargar una imagen Docker hub_ [Docker hub](https://hub.docker.com/)
| **Docker  Images** | _Muestra todas la imagenes_|
| **Docker  rin** | _crear un contenedor_|
| **Docker  rin** | _crear un contenedor_|
| **docker ps** | _visualisa los contenedores que estan en ejecucion_|
| **docker conteiner ls** | _visualisa los contenedores que estan en ejecucion_|
| **docker ps -a** | _visualisa los contenedores_|
| **docker conteiner ls -a** | _visualisa los contenedores que estan en ejecucion_|
| **docker rm ** | _visualisa los contenedores que estan en ejecucion_|
| **docker run ** | _crea un contenedor_|
| **docker stop nombre o ID ** | _detiene el contenedor_|
| **docker start nombre o ID ** | _inicia un contenedor_|
| **docker rm nombre id ** | _elimina un contenedor que no esta en ejecucion_|
| **docker rm -f nombre id ** | _elimina un contenedor que esta en ejecucion_|

```



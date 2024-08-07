# ReciclAi
___
Somos un grupo de estudiantes de ingeniería de la Universidad de Chile que busca crear un sistema de reciclaje inteligente. EL sistema está basado en un brazo robótico equipado con una cámara y un sistema de visión artificial, que pueda clasificar los residuos sólidos inorgánicos en diferentes categorías. 

En este repositorio de GitHub se encuentra el código fuente del primer prototipo del proyecto. En la carpeta de notebooks, principalmente se encuentran los notebooks con los que se entrenan los modelos de clasificación. En la carpeta de src, se encuentran los scripts correspondientes a la implementación del control del brazo robótico y la clasificación de los residuos. En la carpeta de scripts, se encuentran scripts de utilidad para el proyecto, principalmente para la parte de entrenamiento de los modelos.

Mencionar sobre los datos, que no se encuentran en este repositorio, ya que son datos obtenidos desde fuentes externas y no podemos compartirlos.

## Requerimientos
___
- 'Python 3.10 o superior'
- 'pip'
- 'git'
- 'conda o mini-conda'

## Clonando el repositorio
___
1. Abre una terminal y navega a la carpeta donde quieras clonar el repositorio.
2. Clona el repositorio con el siguiente comando:
```bash
git clone ...
```
3. Navega a la carpeta del repositorio:
```bash
cd ReciclAi
```
4. Crea un entorno virtual:
```bash
conda create --name reciclai python=3.12
conda activate reciclai
pip install -r requirements.txt
```
Si quieres salir del entorno virtual, puedes hacerlo con el siguiente comando:
```bash
conda deactivate
```

## Más detalles del proyecto
___
Nuestro proyecto es un sistema diseñado para clasificar automáticamente diversos tipos de residuos inorgánicos dentro de comunidades de edificios residenciales en Santiago. La idea es que el sistema sea de uso comunitario y que incluya incentivos para su uso correcto.

El sistema se compone de un brazo robótico con visión computacional equipado con una cámara para identificar y clasificar residuos inorgánicos, utilizando algoritmos de Deep Learning para asegurar una correcta separación y clasificación de materiales según las directrices medioambientales. Este sistema inspeccionará y clasificará los materiales de desecho, asegurando además que no contengan residuos orgánicos y que cumplan con recomendaciones preestablecidas.

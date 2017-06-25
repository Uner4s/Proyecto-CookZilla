# BIENVENIDOS AL REPOSITORIO DE Cookzilla #

## ¿Como usar este repositorio? ##

Lo primero que se debe hacer es instalar [GIT](https://confluence.atlassian.com/display/BITBUCKET/Set+up+Git)

Una vez hecho eso, deben [clonar el repositorio, añadir archivos a GIT y subir archivos al repositorio](https://confluence.atlassian.com/display/BITBUCKET/Clone+your+Git+repository+and+add+source+files)

Ya con eso se puede comenzar a trabajar de forma local y luego subir sus cambios al repositorio para controlar las versiones

También pueden instalar [SourceTree](http://www.sourcetreeapp.com/) si es que no son tan amigos de GIT desde la línea de código.


#GUÍA RÁPIDA PARA USAR GIT#

##LO PRIMERO: CLONAR EL REPOSITORIO##

1. Crear un directorio (carpeta) donde se guardará el repositorio
2. Posicionarse dentro de dicho directorio en la terminal (En el caso de Windows, abrir la GIT BASH) y escribir: git clone https://MiUsuario@bitbucket.org/cockzilla/cookzilla.git
	*Reemplazar 'MiUsuario' por el usuario de gitbucket correspondiente
3. Ingresar la contraseña cuando la pida 

Ya con eso, el repositorio debería estar clonado en el directorio local (ESTO SOLO SE REALIZA UNA VEZ, EN CADA MAQUINA QUE VAYAMOS A UTILIZAR)

##AÑADIR ARCHIVOS A GIT PARA QUE LOS CONTROLE##

Es normal que a medida que vayamos desarrollando vayamos añadiendo archivos que no existían previamente en el repositorio, para esto es necesario posicionarse en la terminal (Para Windows, GIT BASH) en el directorio
local donde tenemos el repositorio y hacer lo siguiente:

1. Escribir "git add nombre_archivo.extension" (Ej: si queremos añadir juanito.txt, sería git add juanito.txt)

NOTA: SI SON MUCHOS ARCHIVOS, SE PUEDE USAR EL COMANDO "git add *" LO QUE AÑADE TODOS LOS ARCHIVOS A GIT 

##HACER COMMIT##

Una vez modifiquemos archivos y querramos guardar los cambios hechos para que GIT controle la versión, es necesario hacer un commit, para esto hacer lo siguiente:

1. Escribir "git commit -m "mensaje" " (EL MENSAJE ES OBLIGATORIO)

##HACER PUSH##

Cuando querramos compartir los cambios que hemos hecho con los demas miembros, es necesario hacer PUSH para subir nuestros cambios locales, es necesario subirlos al repositorio en BitBucket, para eso:

1. Escribir "git push -u rama_origen rama_destino" (Por el momento, basta con "git push -u origin master" cuando el proyecto vaya creciendo explicaré lo de las ramas)

##HACER PULL##

Puede pasar que mientras estemos trabajando alguien más haya hecho un PUSH al repositorio remoto antes, por lo que nosotros no podremos hacer PUSH ya que hay cambios que nosotros no tenemos, para eso es necesario hacer PULL##
*SE RECOMIENDA HACER PULL SIEMPRE ANTES DE EMPEZAR A TRABAJAR*

1. Escribir "git pull"
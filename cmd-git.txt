============= Comandos  =================

pwd
alt + 126 -> ~
cd
ls -al    -> para ver archivos ocultos
code 
q --> para salir

(Editor Vim)

gitk -->interfaz git
============= Comandos Git config =================

git config --list   --> configuraciones de git
git config --list --show-origin --> Donde estan las configuraciones guardadas

git config --global user.name "name_user"

git config -l
============= Comandos Git basicos =================


git init   --> En la ruta que quiero iniciar un repositorio.
git status --> Estado del repositorio

git add cmd-git.txt  --> pasar a stage
git add . --> pasar a stage todos los archivos que tengo en la ruta en la que estoy.


git rm cmd-git.txt
git rm --cached cmd-git.txt  -->quitar de stage

git commit -m "Commit inicial"
git commit -am "mensaje commit " -->no funciona si el archivo es nuevo  #### Recomendado ###

git log cmd-git.txt  --> historia del archivo
git log --stat       -->Mostrar cambios
git show  cmd-git.txt  --> Mostrar cambios en el archivo.

git dif commit1 commit2   -->comparar cambios entre commits

git checkout master -->desplazarse en las versiones.

git reset codigocommit --hard  --> todo vuelve al estado anterior
git reset codigocommit --soft  --> vuelve al estado anterior y lo que esta en el stage sigue ahi

=============  GIT BRANCH =================

git branch hotfix
git checkout hotfix

git branch
git branch -r -->ramas remotas
git branch -a

git merge hotfix
git merge master

git show-branch
git show-branch --all

=============  GIT REMOTO =================
git clone url --> trae master al directorio local y al repositorio local

git fetch   --> lo trae al repositorio local
git merge   --> lo trae del repositorio local a mi directorio de trabajo.

git pull    --> copia al repositorio local y al directorio de trabajo
git push --master

git remote
git remote -v

=============  GITHUB =================

git remote add origin url--https-de-git

git remote
git remote -v

git push origin master

git pull origin master

git pull origin main --allow-unrelated-histories

---rutina ---
git pull origin main 
	

============ solución al main ============

git checkout master
	git branch -m main  --> cambiarle el nombre a la rama master por main

git config --global init.defaultBranch main
    

=============== Cifrado asimétrico de un solo camino ==========

Llave privada : La tengo yo.

Llave pública : te la envío para que la cifres.


ssh-keygen -t rsa -b 4096 -C "richardo_rkd"
	

ssh-keygen -t rsa -b 4096 -C "mail-usado-en-github" : para generar una llave publica-privada, "-t" es para elegir el algoritmo, "rsa" es el algoritmo de generación, "-b" para elegir la complejidad, "4096" es la cantidad de digitos de nuestra llave numerica, "-C" tiene que ser en mayuscula, y nuestro email de github (si es que nos vamos a conectar con ese servicio)
eval $(ssh-agent -s) : comando para hacer correr un verificador de llaves publicas y privadas, "pid" process id, para que el pc identifique el proceso
~ es una varible de /c/Users/Seba-PC, ~ es una ruta
ssh-add ~/.ssh/id_rsa : para decirle al pc que ahí esta la llave y agregarla



================== tags ===================================
alias arbolito="git log --all --graph --decorate --oneline"

git tag -a v0.1 -m "resultado de las primeras clases del curso" 8058cd8  --> crear un tag
git tag   --> lista de los tags

git tag -d dormido -->borrar el tag dormido

git show-ref --tags

git push origin --tags


================== otros ===================================

echo "Prueba de mi web" > index.html    --> para crear el archivo desde la consola
vim index.html --> para crearlo con vim 

============== GIT STASH =============================

git stash 
git stash list  
git stash pop
git stash branch name-rama

================= git clean =============================


================= git cherry-pick =============================
se usa para traer solo los cambios de un commit.


================= git amend =============================
git add nombre-archivo
git commit --amend

================= git REFLOJ =============================
--borras una rama
git reflog 
git reset --HARD POSICION-DEL REFLOJ

================= git GREP para busquedas y log =============================
git grep palabra-buscar
git grep -n palabra-buscar  -- en que linea
git grep -c  palabra --cuantas veces

--grep para archivos, log para los commits.

git log -s "palabra-buscar"


================= comandos colaborativos =============================
git shortlog -sn
git shortlog -sn --all
git shortlog -sn --all --no-merges

git stats #comando inventado
git config --global alias.stats "shortlog -sn --all --no-merges"


git blame -c nommbre-archivo
git blame --help -->abre la ayuda para ver que hace el comando

git blame css/estilos.css -L35,53 -c --> quien cambio en estas lineas





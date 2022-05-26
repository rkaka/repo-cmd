Básicos para usar la consola:

Ctrl + L = Limpiar pantalla
CD = Change Directory
… = Carpeta padre
CD… = Cambiar de directorio a la carpeta padre
Alt + 92 =
ls = list
mkdir = Make directory
touch = para crear archivos
cat  -- abrir archivo

py          --entrar
exit()      --salir

ctrl + c --cerrar python en la consola

======================
PYTHON
======================

+     --concatentar
True  --Verdadeero
False --False

v = input('Escribe un dato')

numero1 = int(numero1)
int str float -- casteo
round (numero1, 2) --redondeo

and or not --operadores lógicos
== != <> <= >=   --operadores comparación

pass --luego lo completo

menu """
Bienvenido al nuevo programa

1- Acción
2- Otra acción
3- Mas acciones
"""

opcion = int(input (menu))

if opcion == 1:
    pass
elif opcion == 2:
    pass
elif opcion == 3:
    pass
else:
    print('Ingresa una opcion correcta')

edad = int(input ('Escribe tu edad: '))

if edad > 17:
    print ('Eres mayor de edad')
elif edad == 18:    
    pass
else:
    pass


=====================
1 - FUNCIONES
=====================

def imprimir_mensaje(mensaje):
    print('Mensaje especial: '+ mensaje)
    return mensaje
    
==========================
2 - METODOS  build in
==========================    

v_nombre.upper()  --Mayusculas
v_nombre.capitalize() --Primera en Mayus
v_nombre.strip()  --quita espacios
v_nombre.lower()--minuscula
v_nombre.replace('o','a') -- remplazar o por a

v_nombre = v_nombre.upper()

v_nombre[0]
len(v_nombre)

--SLICES
nombre = "Juan Pedro Jose"
nombre[0:3]
nombre[:3]
nombre[3:]
nombre[1:7]
nombre[1:7:2]
nombre[::-1] --al reves

palindromos--luz azul

============================================
def run():
    pass

if __name__ == '__main__':   --punto de ntrada
    run()


============================================
3 - BUCLES
============================================
contador = 1
LIMITE   = 1000 -- DECLARAR CONSTANTES EN MAYUS

while v_var1 < LIMITE:
    --
    ---
    -----
    contador += 1

---------------------------------------------

for i in range(1000):
    print (i)
---------------------------------------------

for letra in nombre:
    print (letra)


============================================
3 - BREAK Y CONTINUE
============================================
for letra in nombre:
    if letra == a:
        continue
    print (letra)

for letra in nombre:
    print (letra)
    if letra == a:
        break


============================================
4 - random
============================================

import random

num = random.randint(1, 100)


============================================
5 - LIstas  
============================================
--Puedes tener diferentes tipos de datos.
--se pueden usar slices con las listas.
--las listas se pueden sumar 

numeros = [1, 3, 4, 'hola']
numeros [0] --indice

numeros.append(12) --agregar 
numeros.pop(1) --indice q voy a borrar

for elemento in objetos:
    print(elemento)



============================================
6 - Tuplas  
============================================
--estáticos, inmutables junto con las cadenas.
--los ciclos son mas rápidos

my_tupla = (1,2,3,4,5)
my_tupla
my_tupla


============================================
7 - Diccionario  
============================================

mi_diccionario = {
    'llave1': 1,
    'llave2': 2, 
    'llave3': 3,    
}

poblacion_paises = {
    'Argentina': 454521,
    'Brazil'   : 2253131, 
    'Colombia' : 32512    
}

for pais in poblacion_paises.keys():
    print(pais)
    
for pais in poblacion_paises.values():
    print(pais)    

for pais, poblacion in poblacion_paises.items():
    print(pais + str(poblacion))     
    

============================================
8 - PROYECTO  
============================================   

import random

def generar_cartas():
    numero = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
    letra = ['pica', 'trebol', 'corazon', 'diamante']
    
    cartas = []
    
    for i in range(52):
        numero_rand = random.choice(numero)
        letra_rand = random.choice(letra)
        
    

=================================================
PYTHON -INTERMEDIO   
===================================================
"EL ZEN DE PYTHON"
import this

Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
Errors should never pass silently.
Unless explicitly silenced.
In the face of ambiguity, refuse the temptation to guess.
There should be one-- and preferably only one --obvious way to do it.
Although that way may not be obvious at first unless you're Dutch.
Now is better than never.
Although never is often better than *right* now.
If the implementation is hard to explain, it's a bad idea.
If the implementation is easy to explain, it may be a good idea.
Namespaces are one honking great idea -- let's do more of those!


============================================
1-ENTORNOS VIRTUALES 
============================================ 


git init   --crea repositorio

py -m venv venv   --llama el modulo vritual enviroment y colocas un nombre ejemplo: venv

.\venv\Scripts\activate   --activar el entorno virtual
deactivate                --desactivarlo

alias avenv=.\venv\Scripts\activate  --alias
avenv

============================================
2-PIP   --instalador de paquetes
============================================ 
Request
BeautifulSoup4
Pandas
Numpy
Pytest


pip freeze  --ver q modulos hay instalados

pip install pandas  --instalar pandas

pip freeze > requirements.txt  --guardar dependencias
cat requirements.txt --abrir el archivo y ver que tiene

pip install -r  requirements.txt

------------------------------------
--ignorar la carpeta del entorno
.gitignore 
venv/
-------------------------------------
============================================
3-Listas y diccionarios anidados
============================================ 
def run():
    my_list = [1, "Hello", True, 4.5]
    my_dict = {"firstname": "Facundo", "lastname": "García"}

    super_list = [
        {"firstname": "Facundo", "lastname": "García"},
        {"firstname": "Miguel", "lastname": "Rodriguez"},
        {"firstname": "Pablo", "lastname": "Trinidad"},
        {"firstname": "Susana", "lastname": "Martinez"},
        {"firstname": "José", "lastname": "Fernandez"},
    ]

    super_dict = {
        "natural_nums": [1, 2, 3, 4, 5],
        "integer_nums": [-1, -2, 3, 0, 1],
        "floating_nums": [1.1, 4.55, 6.43],
    }

    for key, value in super_dict.items():
        print(key, ">", value)


if __name__ == '__main__':
    run()


============================================
4-List comprehensions
============================================ 
def run():
    # squares = []

    # for i in range(1, 101):
    #     if i % 3 != 0:
    #         squares.append(i**2)

    squares = [i**2 for i in range(1, 101) if i % 3 != 0]   --LIST
    
    my_dict = {i: i**3 for i in range(1, 101) if i % 3 != 0} --dictionary   
    
    print(squares)
    print(my_dict)

if __name__ == "__main__":
    run()

============================================
5-LAMBDA, filter map y reduce
============================================ 




============================================
5-Errores assert
============================================ 
--DEBUGGIN
def divisors(num):
    divisors = []
    for i in range(1, num + 1):
        if num % i == 0:
            divisors.append(i)
    return divisors


def run():
    num = input('Ingresa un número: ')
    assert num.isnumeric(), "Debes ingresar un número"
    print(divisors(int(num)))
    print("Terminó mi programa")


if __name__ == '__main__':
    run()
 
============================================
6-Manejar archivos
============================================  
r-leer
w-sobrescribir
a-agregar

with open("css/styles.css","a") as f:     


------------------------------------

def read():
    numbers = []
    with open("./archivos/numbers.txt", "r") as f: 
        for line in f:
            numbers.append(int(line))
    print(numbers)


def write():
    names = ["Facundo", "Gregorio", "Marta", "Susana", "Jose"]
    with open("./archivos/names.txt", "w", encoding = "utf-8") as f:
        for name in names: 
            f.write(name)
            f.write("\n")


def run():
    write()


if __name__ == '__main__':
    run()
    
    
============================================
CURSO PROFESIONAL DE PYTHON
============================================     

def is_palindrome(string: str) -> bool:
    string = string.replace(' ', '').lower()
    return string == string[::-1]


def run():
    print(is_palindrome(1000))


if __name__ == '__main__':
    run()
    
-------------CLOSURES

def make_repeater_of(n):
    def repeater(string):
        assert type(string) == str, 'Solo puedes repetir cadenas'
        return string * n
    return repeater


def run():
    repeat_5 = make_repeater_of(5)
    print(repeat_5('Hola'))


if __name__ == '__main__':
    run()
    
-------------DECORADORES
def make_repeater_of(n):
    def repeater(string):
        assert type(string) == str, 'Solo puedes repetir cadenas'
        return string * n
    return repeater


def run():
    repeat_5 = make_repeater_of(5)
    print(repeat_5('Hola'))


if __name__ == '__main__':
    run()

-------------DECORADORES

from datetime import datetime


def execution_time(func):
    def wrapper(*args, **kwargs):
        initial_time = datetime.now()
        func(*args, **kwargs)
        final_time = datetime.now()
        time_elapsed = final_time - initial_time
        print(f'Pasaron {time_elapsed.total_seconds()} segundos')
    return wrapper


@execution_time
def random_func():
    for _ in range(1, 10000000):
        pass


random_func()  

-----------------------------------------------
--ITERADORES... me dan la fórmula matemática para obtener el siguiente.

FIBONACCI
0 1 1 2 3 5 8 13

import time

class FiboIter():

    def __iter__(self):
        self.n1 = 0
        self.n2 = 1
        self.counter = 0
        return self

    def __next__(self):
        if self.counter == 0:
            self.counter += 1
            return self.n1
        elif self.counter == 1:
            self.counter += 1
            return self.n2
        else:
            self.aux = self.n1 + self.n2
            # self.n1 = self.n2
            # self.n2 = self.aux
            self.n1, self.n2 = self.n2, self.aux
            self.counter += 1
            return self.aux

if __name__ == '__main__':
    fibonacci = FiboIter()
    for element in fibonacci:
        print(element)
        time.sleep(0.05)

-----------------------------------------------
--Generadores:

Yiel: Es como un return pero la función vuelve desde donde termino en la anterior vez.

my_list = [0, 1, 4, 7,9,10]

my_second_list = [x*2 for x in my_list] #list comprehensions --Genera todos
my_second_list = (x*2 for x in my_list) #Generator expression --Genera el que voy a usar

import time

def fibo_gen():
    n1 = 0
    n2 = 1
    counter = 0
    while True:
        if counter == 0:
            counter += 1
            yield n1
        elif counter == 1:
            counter += 1
            yield n2
        else:
            aux = n1 + n2
            n1, n2 = n2, aux
            counter += 1
            yield aux

if __name__ == '__main__':
    fibonacci = fibo_gen()
    for element in fibonacci:
        print(element)
        time.sleep(.05)
        
        
        
-----------------------------------------------
--SETS: Son únicos e inmutables desordenados.
-----------------------------------------------

my_set = {1, 2,3}
my_list = [1,2,2,3,5,5,6,7]
my_set = set(my_list)
print (my_set)

my_set.add(4)   --añadir un elemento
my_set.update([1,2,5])   --añadir multiples elementos.
my_set.update ((1,7,2), {6,8}) --añadir multpes elementos

#borrar
my_set.discard(1) --exixtentes e inexistentes
my_set.remove(2)  --existentes error para inexistentes.

my_set.pop() --borra aleatorio
my_set.clear() --limpiar el set


--------------------------------------------
--OPERACIONES
--------------------------------------------

my_set1 = {3,4,5}
my_set2 = {7,6,5}

my_set = my_set1 | my_set2 --union
my_set = my_set1 & my_set2 --Intersección
my_set = my_set1 - my_set2 --Diferencia
my_set = my_set1 ^ my_set2 --Diferencia simétrica (lo que no se comparten)

print (my_set)


=================================
borrar repetidos de una lista
def removerduplicados(lista):
    return list(set(lista))
===================================

--------------------------------------------
--FECHAS
--------------------------------------------
%Y	Year
%m	Month
%d	Day
%H	Hour
%M	Minute
%S	Second


from datetime import datetime

my_datetime = datetime.now()
print(my_datetime)

my_str = my_datetime.strftime('%d/%m/%Y')
print(f'Formato LATAM: {my_str}')

my_str = my_datetime.strftime('%m/%d/%y')
print(f'Formato USA {my_str}')

my_str = my_datetime.strftime("Estamos en el ano %Y")
print(f'FOrmato Random {my_str}')


============================================
CURSO ESTRUCTURAS DE DATOS
============================================ 
--------------
--COLECCIONES
---------------

frutas=[]

frutas.append('uva') --agregar
frutas.append('mora') 
frutas.append('melon') 

frutas.sort() --ordenar
frutas.pop()  --sacar
frutas.insert(0, 'apple')  --sacar





============================================
--CURSO FAST-API
(OpenAPI)
============================================ 

------------1- entorno de desarrollo-----------

mkdir fast-api-pj1 --crear carpeta


py -m venv venv   --crear entorno virtual
ls

.\venv\Script\activate   --activarlo


pip install fastapi uvicorn --instalar uvicorn

------------2- api-----------
#python
from typing import Optional

#Pydantic
from pydantic  import BaseModel

#fastapi
from fastapi import FastAPI
from fastapi import Body

app = FastAPI()

#Models

class Person (BaseModel):
    first_name: str
    last_name : str
    age       : int
    hair_color: Optional[str] =  None
    is_married: Optional[bool] = None

@app.get("/")
def home():
    return {"hello": "World"}
    
--request and response body    
@app.post("/person/new")
def create_person(person: Person = Body(...)):
    return Person
    
--validaciones query parameters   
@app.get("/person/detail")
def show_person(person: Person = Body(...)):
    name: Optional[str] = Query(None, (min_length =1, max_length = 50),
    age : str [str]= Query (...)
)   

    
-------------- 
uvicorn main:app --reload la página con los cambios

------------3- opciones -----------    
 "/tweets/{tweet_id}" -->path parameter obligatorio
 
"/tweets/{tweet_id}/details?age=30&height=184"  -->query parameter  

------------3- otros ----------- 

--request and response body
--validaciones query parameters






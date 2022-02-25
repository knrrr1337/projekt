'''
def negyzet(z):
    return(z**2)
z = int(input("szam: "))
print(negyzet(z))

#5
def helo():
    print("udv a fedelzeten!")
helo()

#6
def feladat(a):
    print()
    print(f'{a}.feladat')
feladat(3)
'''

'''
def szamjegy(a):
    if 0 < a  < 10:
        return 'egyszamjegyu'
    else:
        return 'tobbszamjegyu'
a = int(input("szam: "))

def negyzet(b):
    return(b**2)
b = int(input("bozo: "))
print(b, negyzet(b))
print(a, szamjegy(a))

x = szamjegy(a)*negyzet(b)
print(x)
'''

'''
def dontes(a):
    if a%2 == 0:
        return(a, "paros")
    else:
        return(a, "paratlan")


for i in range(1, 51):
    print(i, dontes(i))


def feladat(i):
    print(f'{i}. feladat')
feladat(3)

def nagyobb(a, b):
    if a > b:
        return("nagyobb")
    else:
        return("kisebb")

szam1 = int(input("o: "))
szam2 = int(input("bozo: "))

print(nagyobb(szam1,szam2))
'''

'''
def prim(x):
    db = 0
    for z in range(1, x+1):
        if x%z == 0:
            db+=1
    if db != 2:
        return('ez nem prim')
    else:
        return('prim')   
x = int(input("szam: "))
print(x, prim(x))

for z in range(1, 110+1):
    print(z, prim(z))



def szamjegy(x):
    if 0<x<10:
        return('egyszamjegyű')
    elif 10<x<100:
        return('ketszamjegyű')
print(szamjegy(11))


nev = input("nev: ")
szam = int(input("szam: "))
def koszon(nev, szam):
    for x in range(szam):
        print(f'szia {nev}!')
koszon(nev, szam)
'''


'''
def koszon2(nev, szam):
    if 0 < szam < 18:
        print(f'Szia {nev}')
    else:
        print(f'Jonapot {nev}')

koszon2(nev, szam)
'''

'''
import random

szamok = []
for x in range(20):
    x = random.randint(1, 50)
    szamok.append(x)
print(szamok)
'''

'''
listaszam = []
szam = None
while szam != 0:
    szam = int(input("szam: "))
    listaszam.append(szam)
    if szam == 0:
        listaszam.remove(szam)
        print(listaszam)
'''

'''
szo = None
szolista = []
while szo != '':
    szo = input('szo: ')
    szolista.append(szo)
    if szo == '':
        print(szolista)
        szolista.remove(szo)

lista = ['vasarnap', 'kedd', 'szerda', 'csutortok']
lista[1:3] = ['alma', 'korte',]
print(lista)
lista.insert(1, 'csipkebogyo')
print(lista)
'''

'''
lista = []
alatt = 0
felett = 0
for y in range(20):
    x = random.randint(1, 100)
    if x < 50:
        alatt += 1
    elif x > 50:
        felett += 1
    lista.append(x)
print(lista, 'alatt: ', alatt, 'felett: ', felett)
'''

'''
alatt = 0
felett = 0

szamos = [3,66,12,87,1,43,92, 100]
for a in szamos:
    if a < 50:
        alatt += 1
        print('alatt')
    elif a > 50:
        felett += 1
        print('felett')

print(alatt, felett)

import random

lista = []
for x in range(50):
    z = random.randint
    lista.append(z)
    if x%2 == 1:
        lista.append(z)
    else:
        lista.append(3)
'''

'''
asd = ['fasz', 'segg', 'pina', 'lofasz', 'csocs']

def pina():
    return len(asd)

asd.reverse(key=pina)
print(asd)
'''
'''

from xml.etree.ElementTree import XML


filee = open('szamok.txt', 'r')

with open('szamok.txt') as f:
    for x in filee:
        print(x.strip())

print()

f = open('eletkorok.txt', 'r')
for sor in f:
    if int(sor) > 18:
        print(sor.strip(), 'felnott')
    else:
        print(sor.strip(), 'kiskoru')

f.close()
    
nevek = open('nevek.txt', 'r')

print()

print()

for x in nevek:
    fasy = x.strip()[::-1]
    print(fasy)


uj = open('abetus.txt', 'w')
bevitel = input(': ')
uj.write(f'{bevitel:} \n')
for x in range(4):
    bevitel = input(': ')
    uj.write(f'{bevitel:} \n')


uj.close()
'''
'''
for sor in nevek:
    if sor[0] == 'A' :
        uj.write(sor)
'''
'''
f = open('nevek.txt', 'w')

x = ''

while x != 'vege':
    x = input('nevek: ')
    if x[0] == 'A' or 'a':
        f.write(f'{x:}\n')
    
else:
    f.close()
'''

'''
lista = []

f = open('szamok.txt', 'r')


for sor in f:
    lista.append(sor.strip())



print(lista)
f.close()
osszeg = 0
for x in lista:
    osszeg += int(x)

print(osszeg)

parososszeg = 0
paros = 0
for z in lista:
    if int(z) % 2 == 0:
        paros += 1
        parososszeg += int(z)
print(paros)
print(parososszeg/paros)


i = 0
van = False
while not van and i != len(lista):
    if int(lista[i].strip()) % 3 == 0:
        van = True
    i += 1
if van:
    print(lista)
    print('van benen 3mal oszthato szam, indexe:', i-1)
else:
    print('nincs benne 3mal oszthato szam')

#minimum
min = lista[0]
for a in lista:
    if a < min:
        min = a 
    else:
        pass

print(lista)
print(min)
'''

f = open('osztalyzatok.txt', 'r', encoding='UTF-8')
lista = []

for i in f:
    lista.append(i.strip())
print(lista)
f.close()

osszeg = 0
db = 0
ot = 0
for i in lista:
    db += 1
    osszeg += int(i[-1])
    if int(i[-1]) == 5:
        ot += 1

print(f'atlag: {osszeg / db}, otos {ot}')

f1 = open('bevasarlas.txt', 'r', encoding='UTF-8')
lista1 = []

for index in f1:
    print(index.strip().replace('ft','').replace('Ft','').split())
    lista1.append(index.strip().replace('ft','').replace('Ft','').split())

print(lista1)

osszeg1 = 0

for index in lista1:
    n = int(index[-1])
    osszeg += n
print(osszeg)
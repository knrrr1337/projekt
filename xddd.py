
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
'''

from operator import index
import random
from re import I
'''
lista = []
szam = random
for x in range(20):
    randomszam = szam.randint(1, 30)
    lista.append(randomszam)
print(lista)
legkisebb = lista[0]
for i in lista:
    if i < legkisebb:
        legkisebb = i
    
print(f'a legnagyobb szam: {legkisebb}')
legnagyobb = lista[0]
for y in lista:
    if y > legnagyobb:
        legnagyobb = y
print(f'a legnagyobb szam: {legnagyobb}')
kisebb = 0
nagyobb = 0
for h in lista:
    if h < 15:
        kisebb += 1
    else:
        nagyobb += 1
print(f'nagyobb: {nagyobb}, kisebb: {kisebb}')
f = open('veeltlen.txt', 'w', encoding='UTF-8')
'''


'''
for x in lista:
    f.write(f'{str(x)}, ')
f.write(f'\n {str(lista)}')
'''

'''
atlag = 0
for y in lista:
    atlag += y
print(atlag / len(lista))
def prim(a):
    oszto = 0
    for m in range(1, a): 
        if m % x == 0:
            oszto += 1
    if oszto == 2:
        return 'prim :)'
    else:
        return 'nem prim'
for j in lista:
    print(j, prim(j))
'''

'''
nev = input('nev:')
for index in nev:
    print(index)
szo = input('hehe: ')
f = open('nagybetus.txt', 'w', encoding='UTF-8')
for i in nev:
    f.write(i.upper().strip())
f.close()
a = open('nagybetus.txt', 'a', encoding='UTF-8')
for s in range(3):
    varos = input('vaors:')
    a.write(f'\n{varos}')
c = open('nagybetus.txt', 'r', encoding='UTF-8')
if 'Veszprém' in c:
    print('yay')
else:
    print('nay')
'''

'''
lista = []
for index in range(10):
    randomszam = random.randint(1,20)
    lista.append(randomszam)
print(lista)
van = False
i = 0
while not van and i < len(lista):
    if lista[i] == 5:
        van = True
    i += 1
if van == True:
    print('van benne otos')
else:
    print('nincs benne otos')
osszeg = 0
for h in lista:
    osszeg += h
print(osszeg)
'''



'''
for i in lista:
    if i != 5:
        pass
    else:
        print('van')
'''

'''
szo = input('szo: ')
i = 2
for index in szo:
    if index[i] % 2 == 0:
        print(index)
'''


'''
lista = []
egszamjegyu = 0
db = 0
osszeg = 0
for index in range(20):
    randomszam = random.randint(1, 100)
    lista.append(randomszam)
    if -10 < randomszam < 10:
        egszamjegyu += 1
    else:
        pass
    db += 1
    osszeg += randomszam
print(osszeg)
print(db)
atlag = osszeg / db
print(atlag)
print(lista)
print(egszamjegyu)
'''
'''
class Diak():
    def __init__(self, vnev, knev, pont):
        self.vnev = vnev
        self.knev = knev
        self.pont = pont
    
    def __repr__(self):
        return f'{self.vnev} {self.knev} {self.pont}'
    
    def vizsgal(self):
        if self.pont > 20:
            return 'átment'
        else:
            return 'megbukott'
    
diak1 = Diak('Kiss', 'Lajos', 34)
diak2 = Diak('Nagy', 'Anna', 11)

print(diak1.vnev, diak1.knev)
print(diak1, diak1.vizsgal())
print(diak2, diak2.vizsgal())
print('\n\n\n')

class Auto():
    def __init__(self, tipus, marka, evjarat):
        self.tipus = tipus
        self.marka = marka
        self.evjarat = evjarat
    
    def __repr__(self):
        return f'{self.tipus} {self.marka} {self.evjarat}'
    
    def evszam(self):
        if self.evjarat < 2000:
            return 'Veteran'
        else:
            return 'fiatal'
    
auto1 = Auto('Opel', 'Corsa', 2001)
auto2 = Auto('Trabant', 'regi fos', 1952)
print(auto1, auto1.evszam())
print(auto2, auto2.evszam())
'''
'''
lista = []

rovidnev = []

for index in range(5):
    nev = input('nev: ')
    if len(nev) < 5:
        rovidnev.append(nev)
    else: 
        lista.append(nev)

print(lista)
print(rovidnev)
'''
'''
class Diak():
    def __init__(self, keresztnev, osztalyzat):
        self.keresztnev = keresztnev
        self.osztalyzat = osztalyzat
    
    def __repr__(self):
        return f'{self.keresztnev} {self.osztalyzat}'

    def megbukott(self):
        if self.osztalyzat == 1:
            return 'megbukott'
        else:
            return 'atment'


f = open('osztalyzatok1.txt', encoding='UTF-8')

lista = []

for index in f:
    sor = index.strip().split()
    diak = Diak(sor[0], int(sor[-1]))
    lista.append(diak)

print(lista)

for i in lista:
    print(i, i.megbukott())
'''

'''
class Ajandek():
    def __init__(self, ajandeknev, ar):
        self.ajandeknev = ajandeknev
        self.ar = ar
    
    def __repr__(self):
        return f'{self.ajandeknev} {self.ar}'
 

f = open('ajandek.txt', 'r', encoding='UTF-8')

lista = []

for index in f:
    sor = index.strip().split(';')
    aj = Ajandek(sor[0], int(sor[1]))
    lista.append(aj)

for i in lista:
    split_i = i.split()
    print(split_i)

'''
'''
mennyit = int(input('hehe '))
mettol = int(input(' '))
meddig = int(input(' '))

lista = []

for index in range(mennyit):
    szam = random.randint(mettol, meddig)
    lista.append(szam)

print(lista)

def oszthato(y):
    if y % 5 == 0:
        return 'oszthato'
    else:
        return 'nem oszhato'

for i in lista:
    print(i, oszthato(i))
'''
'''
class Ajandek():
    def __init__(self, ajandeknev, ar):
        self.ajandeknev = ajandeknev
        self.ar = ar
    
    def __repr__(self):
        return f'{self.ajandeknev} {self.ar}'
 

f = open('ajandek.txt', 'r', encoding='UTF-8')

lista = []

for index in f:
    sor = index.strip().split(';')
    aj = Ajandek(sor[0], int(sor[1]))
    lista.append(aj)

for i in lista:
    print(i.ar)
'''
'''
class Diak():
    def __init__(self, nev, osztaly, pont):
        self.nev = nev
        self.osztaly = osztaly
        self.pont = pont

    def __repr__(self):
        return f'{self.nev} {self.osztaly} {self.pont}'

    def sikerult(self):
        if self.pont < 20:
            return 'megbukott'
        else:
            return 'sikerult'

file = open('diak.txt', 'r', encoding='UTF-8')

lista = []

for index in file:
    index = index.strip().split(';')
    nev = index[0]
    osztaly = index[1]
    pont = int(index[2])
    diakok = Diak(nev, osztaly, pont)
    lista.append(diakok)
file.close()

for i in lista:
    if i.osztaly == '10.A':
        print(i)
'''    
'''
class Osztaly():
    def __init__(self, nev, taska):
        self.nev = nev
        self.taska = taska
    
    def __repr__(self):
        return f'{self.nev} {self.taska}'
    
    def vizsgal(self):
        if self.taska == 'taska':
            return 'bajnok taskaban hozta'
        else:
            return 'memmeme'


f = open('teixte.txt', 'r', encoding='UTF-8')

lista = []

for sor in f:
    sorr = sor.strip().split(';')
    diaak = sorr[0]
    taskaa = sorr[1]
    diakk = Osztaly(diaak, taskaa)
    lista.append(diakk)
    

print(lista)

for index in lista:
    print(index, index.vizsgal())
'''
'''
class Osztaly():
    def __init__(self, nev, taska):
        self.nev = nev
        self.taska = taska
    
    def __repr__(self):
        return f'{self.nev} {self.taska}'
    
    def vizsgal(self):
        if self.taska != 'taska':
            lista.append(self.nev)
        else:
            pass

lista = []

f = open('teixte.txt', 'r', encoding='UTF-8')

for index in f:
    apas = index.strip().split(';')
    bubu = Osztaly(apas[0], apas[1])
    bubu.vizsgal()

print(lista)
'''
'''
lista = []
fej = 'fej'
iras = 'iras'

for index in range(50):
    szam = random.randint(1, 2)
    if szam == 1:
        lista.append(fej)
    else:
        lista.append(iras)

fejszam = 0
irasszam = 0

for i in lista:
    if i == fej:
        fejszam += 1
    else:
        irasszam += 1

print(f'fej: {fejszam}, iraszszam: {irasszam}')

tipp = input('fej v iras? ')
megoldas = ''


szamm = random.randint(1, 2)
if szamm == 1:
    megoldas = 'fej'
else:
    megoldas = 'iras'

print(f'a tipped: {tipp}, a megoldas: {megoldas}')

if tipp == megoldas:
    print('eltalaltad')
else:
    print('nem')
'''
'''
class Diak():
    def __init__(self, nev, osztaly, pont):
        self.nev = nev
        self.osztaly = osztaly
        self.pont = pont

    def __repr__(self):
        return f'{self.nev} {self.osztaly} {self.pont}'

    def sikerult(self):
        if self.pont < 20:
            return 'megbukott'
        else:
            return 'sikerult'

file = open('diak.txt', 'r', encoding='UTF-8')

lista = []

for index in file:
    index = index.strip().split(';')
    nev = index[0]
    osztaly = index[1]
    pont = int(index[2])
    diakok = Diak(nev, osztaly, pont)
    lista.append(diakok)
file.close()

for i in lista:
    if i.osztaly == '10.A':
        print(i)

print('\n\n')

def pontszam(y):
    return y.pont


for y in sorted(lista, key=pontszam):
    print(y)
'''


class Monitor():
    def __init__(self, marka, tipus, inch, ar):
        self.marka = marka
        self.tipus = tipus
        self.inch = inch
        self.ar = ar

    def __repr__(self):
        return f'{self.marka} {self.tipus} {self.inch} {self.ar}'
    
    def kicsiE(self):
        if int(self.inch) < 23:
            return 'kicsi'
        else:
            return 'nagy'

file = open('monitor_adat.txt', 'r', encoding='UTF-8')

lista = []

for index in file:
    nagyonkomoly = index.strip().split(' ')
    lista.append(Monitor(nagyonkomoly[0], nagyonkomoly[1], nagyonkomoly[2], nagyonkomoly[3]))

#1. feladat
for i in lista:
    if i.marka == 'Asus':
        print(i)

print(f'\n'*3)

#2. feladat
for k in lista:
    print(k, k.kicsiE())

print(f'\n'*3)

#3. feladat
lgSzam = 0
for y in lista:
    if y.marka == 'LG':
        lgSzam += 1
print(lgSzam)

print(f'\n'*3)

#4. feladat
pesos = int(input('pesos?:_ '))
for a in lista:
    if pesos > int(a.ar):
        print(a)

print(f'\n'*3)

#5. feladat
def rendezes(j):
    return j.ar

for j in sorted(lista, key=rendezes):
    print(j)

print(f'\n'*3)

#6. feladat
def atlocsokkeno(g):
    return g.inch

for g in sorted(lista, key=atlocsokkeno, reverse=True):
    print(g)

print(f'\n'*3)

#7. feladat
ujmarka = input('marka: ')
ujtipus = input('tipus: ')
ujinch = int(input('inch: '))
ujar = int(input('ar: '))

lista.append(f'{ujmarka} {ujtipus} {ujinch} {ujar}')

for sd in lista:
    print(sd)

print(f'\n'*3)

#8. feladat
legolcsobb = ''
legdragabb = ''


import numpy as np
import matplotlib.pyplot as plt

mode=input('Что калибровать шаговики(1) или давление(2): ')
while mode not in ['1','2']:
    mode=input('Что калибровать шаговики(1) или давление(2): ')

def av(X):
    return np.average(X)

def calib(X,Y):
    k=(av(Y*X)-av(Y)*av(X))/(av(X*X)-av(X)**2)
    b=av(Y)-av(X)*k
    return k,b

plt.grid(which='major')
plt.grid(which='minor', linestyle=':')
plt.minorticks_on()

if mode=='1':
    file=open(input('имя файла: '))
    X,Y=[],[]
    for l in file:
        X.append(float(l.split()[0]))
        Y.append(float(l.split()[1]))
    X,Y=np.array(X),np.array(Y)
    print(X,Y)
    k,b=calib(X, Y)
    plt.scatter(X,Y,20, marker='x',c='r',linewidths=1)
    plt.xlabel('Шаг двигателя')
    plt.ylabel('Измеренное расстояние от края крепления до трубки')
    plt.title('Измерение длины шага шаговыхдвигателей')
    plt.plot(X,k*X+b,'black', linewidth=1, label='Аппроксимация $y=kx+b$\n'+'$k={0:.2e}{2}см~~b={1:.2f}см$'.format(k,b,'}').replace('e',r'\cdot 10^{'))
    plt.legend()
    plt.savefig('shag.png')
if mode=='2':
    y1=float(input('Значения первого измерения в Па '))
    file1=open(input('имя файла 1: '))
    y2=float(input('Значения второго измерения в Па '))
    file2=open(input('имя файла 2: '))
    x1,x2=[],[]
    for l in file1:
        x1.append(float(l))
    for l in file2:
        x2.append(float(l))
    X,Y=np.array([av(x1),av(x2)]),np.array([y1,y2])
    print(X,Y)
    k,b=calib(X, Y)
    plt.scatter(X,Y,20, marker='^',c='r', linewidths=1)
    plt.title('Измерение шага АЦП для измерения давления')
    plt.xlabel('Значение АЦП')
    plt.ylabel('Давление по барометру')
    plt.plot(X,k*X+b, 'black',linewidth=1, label='Аппроксимация $y=kx+b$\n'+'$k={0:.2e}{2}Па~~b={1:.2f}Па$'.format(k,b,'}').replace('e',r'\cdot 10^{'))
    plt.legend()
    plt.savefig('pressuare.png')
import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import curve_fit


h=[0,10,20,40,60,80,100,105]
d=[0]*len(h)

for i in range(len(h)):
    dp=[int(f) for f in open(str(h[i])+'.txt','r')]
    d[i]=np.sum(dp)/len(dp)

#z=np.polyfit(d,h,50)
#pl=np.poly1d(z)

def f(x, a, b):
    return a * np.power(x, b)

def f1(x, a, c, d):
    return d*np.power(a - np.power(x-c, 2),1/2)
popt, pcov = curve_fit(f, d, h)

a,b=np.round(popt,3)[0],np.round(popt,3)[1]

plt.grid(which='major')
plt.grid(which='minor', linestyle=':')
plt.minorticks_on()

plt.scatter(d,h,20, marker='x',c='r',linewidths=1)

plt.xlabel('Показание АЦП')
plt.ylabel('Высота жидкости в установке')
plt.title('Нахождение зависимости высоты жидкости\nв установке от паказаний АЦП')
    
plt.plot(np.arange(0,255),f(np.arange(0,255),a,b),'black', linewidth=1, label='Аппроксимация $y=a*x^b$\n'+'$a={0:.3f}см~~b={1:.3f}$'.format(a,b))

plt.legend()

plt.savefig('height.svg')
#plt.plot(np.arange(0,200),pl(np.arange(0,200)))
print(popt)
#print(pl(255))
plt.show()

h=[20,40,60,80,100,105]
d=[0]*len(h)

for i in range(len(h)):
    dp=[int(f) for f in open(str(h[i])+'.txt','r')]
    d[i]=np.sum(dp)/len(dp)

#z=np.polyfit(d,h,50)
#pl=np.poly1d(z)

def f(x, a, b):
    return a * x+ b
popt, pcov = curve_fit(f, d, h)

a,b=np.round(popt,3)[0],np.round(popt,3)[1]

plt.grid(which='major')
plt.grid(which='minor', linestyle=':')
plt.minorticks_on()

plt.scatter(d,h,20, marker='x',c='r',linewidths=1)

plt.xlabel('Показание АЦП')
plt.ylabel('Высота жидкости в установке')
plt.title('Нахождение зависимости высоты жидкости\nв установке от паказаний АЦП')
    
plt.plot(np.arange(15,255),f(np.arange(15,255),a,b),'black', linewidth=1, label='Аппроксимация $y=a*x+b$\n'+'$a={0:.3f}см/АЦП~~b={1:.3f} см$'.format(a,b))

plt.legend()

plt.savefig('height2.svg')
#plt.plot(np.arange(0,200),pl(np.arange(0,200)))
print(popt)
#print(pl(255))
plt.show()
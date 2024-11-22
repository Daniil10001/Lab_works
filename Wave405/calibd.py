import RPi.GPIO as gpio
import waveFunctions as b
import time
gpio.setmode(gpio.BCM)
gpio.setup(24, gpio.IN)
gpio.setup(14, gpio.IN)
DAC=[8,11,7,1,0,5,12,6]
gpio.setup(13, gpio.OUT, initial=1)
gpio.setup(DAC, gpio.OUT, initial=0)
s,e,d=0,0,0

s=time.time()
d=b.measure()
e=time.time()

nu=1/(e-s)
data=[0]*int(10*nu)
print(nu)
for i in range(int(10*nu)):
    data[i]=b.measure()

data=list(map(str,data))
with open(input('глубина в мм ')+'.txt','w') as f:
    f.write('\n'.join(data))
gpio.cleanup()
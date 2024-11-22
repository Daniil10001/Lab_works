import RPi.GPIO as gpio
import waveFunctions as b
import time
gpio.setmode(gpio.BCM)
gpio.setup(24, gpio.IN)
gpio.setup(14, gpio.IN)
DAC=[8,11,7,1,0,5,12,6]
gpio.setup(13, gpio.OUT, initial=1)
gpio.setup(DAC, gpio.OUT, initial=0)

s,e=0,0
dt=0
data=[0]*1500
print('ready')
b.gircon(24)

s=time.time()
for i in range(1500):    
    data[i]=b.measure()
    e=time.time()
    dt+=e-s
    s=time.time()

print('end')
data=list(map(str,data))
s=input('глубина')
with open(s+'w.txt','w') as f:
    f.write('\n'.join(data))
with open(s+'t.txt','w') as f:
    f.write(str(dt/1500))
gpio.cleanup()
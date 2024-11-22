import RPi.GPIO as gpio
import time
import numpy as np


def gircon(pin):
    while (gpio.input(24)):
        pass

rz=np.array([1,2,4,8,16,32,64,128])[::-1]
DAC=[8,11,7,1,0,5,12,6]
zr=[0]*8
def measure():
    dt=np.zeros(8, dtype=np.int32)
    for i in np.arange(0,8):
        gpio.output(DAC[i],1)
        time.sleep(0.0012)
        dt[i]=1-gpio.input(14)
        #print(1-dt[i],int(np.sum([gpio.input(14) for _ in range(10)])/10.0+0.5))
        gpio.output(DAC[i],int(dt[i])) 
    gpio.output(DAC,zr)
    return np.sum(rz*dt)
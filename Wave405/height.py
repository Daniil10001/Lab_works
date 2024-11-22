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

try:
    while True:
        time.sleep(0.1)
        s=time.time()
        d=b.measure()
        e=time.time()
        print(1/(e-s),d)
except:
    pass

gpio.cleanup()
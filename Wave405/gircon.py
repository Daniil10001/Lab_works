import RPi.GPIO as gpi
import waveFunctions as b
gpi.setmode(gpi.BCM)
gpi.setup(24, gpi.IN)

print('start')
b.gircon(24)
print('door open')
import spiFuncs as spi
import time

spi.initSpiAdc()

list=[]

k = 0
while k < 500:
    list.append(spi.getAdc())
    time.sleep(0.01)
    k += 1


spi.deinitSpiAdc()

lists = [str(i) for i in list]
with open (input('Задайте имя файла: ')+'.txt', 'w') as outf:
    outf.write("\n".join(lists))
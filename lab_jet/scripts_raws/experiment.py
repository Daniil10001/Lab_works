import jetFunctions as j
import time

j.initSpiAdc()
j.initStepMotorGpio()

dl=5.516e-3
steps=int(4/dl)
print(steps)
list=[]
k=0
st=10

for i in range(0,steps,st):
    list.append(str(j.getAdc())+' '+str(steps/2-i))
    time.sleep(0.5)
    j.stepBackward(st)
    k += 1

for i in range(0,steps,st):
    #list.append(j.getAdc())
    #time.sleep(0.01)
    j.stepForward(st)
    k += 1


j.deinitSpiAdc()
j.deinitStepMotorGpio()

lists = [str(i) for i in list]
with open (input('Задайте имя файла: ')+'.txt', 'w') as outf:
    outf.write("\n".join(lists))
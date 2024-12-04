import time
from functions import*

initSpiAdc()


s = e = time.time()
data = []
while (getAdc() > 220):
    data.append((getAdc(), time.time()-s))
    e=time.time()

print(e-s, len(data))

with open(input('File name: ') + 'p.txt', 'w') as f:
    f.write('\n'.join(map(str,data)).replace('(','').replace(')',''))

deinitSpiAdc()
import time
from functions import*

initSpiAdc()


s = e = time.time()
data = []
while (e - s < 10):
    data.append(getAdc())
    e=time.time()

print(e-s, len(data))

with open(input('File name: ') + '.txt', 'w') as f:
    f.write('\n'.join(map(str,data)))

deinitSpiAdc()
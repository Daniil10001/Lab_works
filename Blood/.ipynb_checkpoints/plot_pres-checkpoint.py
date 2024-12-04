import pandas as pd
import matplotlib.pyplot as plt

dat=pd.read_csv(input()+'.txt', header=None, names=['p','t'])
print(dat)
plt.plot(dat['t'][::10],dat['p'][::10])
plt.show()
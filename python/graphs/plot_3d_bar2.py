from mpl_toolkits.mplot3d import Axes3D

import matplotlib
import matplotlib.pyplot as plt
import numpy as np


from pylab import *
#1F1F1F

mpl.rcParams['font.sans-serif'] = ['SimHei']

mpl.rcParams['axes.unicode_minus'] = False 

matplotlib.rcParams['text.color'] = 'w'
matplotlib.rcParams['lines.linewidth'] = 2



row = [10,90,0.1]
length = len(row)
fig = plt.figure(figsize=(5,4), dpi=180)

ax = fig.add_subplot(111, projection='3d')

ax.bar3d(range(length), [0]*length, [0]*length, 0.5, 0.001, row, color='rgy')

ax.set_ylim(-0.002, 0.002)

ax.set_xticks([])
ax.set_yticks([])

#ax.set_xlabel('X')
#ax.set_ylabel('Y')
#ax.set_zlabel('Z')

[t.set_color('w') for t in ax.zaxis.get_ticklabels()]

plt.savefig("bar3d.png", transparent=True)
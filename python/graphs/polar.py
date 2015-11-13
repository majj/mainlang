"""
Demo of bar plot on a polar axis.
"""


from pylab import *


import numpy as np
import matplotlib.pyplot as plt

mpl.rcParams['font.sans-serif'] = ['SimHei']
mpl.rcParams['axes.unicode_minus'] = False 

matplotlib.rcParams['text.color'] = 'w'
matplotlib.rcParams['lines.linewidth'] = 2

plt.figure(figsize=(5,4), dpi=180)

N = 20
theta = np.linspace(0.0, 2 * np.pi, N, endpoint=False)
radii = 10 * np.random.rand(N)
width = np.pi / 4 * np.random.rand(N)

ax = plt.subplot(111, projection='polar')
bars = ax.bar(theta, radii, width=width, bottom=0.0)

# Use custom colors and opacity
for r, bar in zip(radii, bars):
    bar.set_facecolor(plt.cm.jet(r / 10.))
    bar.set_alpha(0.5)

[t.set_color('w') for t in ax.xaxis.get_ticklabels()]
[t.set_color('w') for t in ax.yaxis.get_ticklabels()]

plt.savefig("polar_bar_demo.png", transparent=True)
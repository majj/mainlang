# -*- coding: utf-8 -*-

from pylab import *

import matplotlib.pyplot as plt

#1F1F1F

mpl.rcParams['font.sans-serif'] = ['SimHei']

mpl.rcParams['axes.unicode_minus'] = False 

matplotlib.rcParams['text.color'] = 'w'
matplotlib.rcParams['lines.linewidth'] = 2

plt.figure(figsize=(5,4), dpi=180)

# The slices will be ordered and plotted counter-clockwise.
labels = u'运行\nRunning', u'闲置\nIdle', u'故障\nIssue'
sizes = [6, 3, 1]
colors = ['#7EB26D', '#EAB839', '#BF1B00']
explode = (0, 0, 0.1)  # only "explode" the 2nd slice (i.e. 'Hogs')

_, _, autotexts  = plt.pie(sizes, explode=explode, labels=labels, colors=colors,
        autopct='%1.1f%%', shadow=True, startangle=90)
        
for autotext in autotexts:
    autotext.set_color('black')
    
    
# Set aspect ratio to be equal so that pie is drawn as a circle.

plt.savefig("pie.png", transparent=True)
# -*- coding: utf-8 -*-


data="""玉柴 550148
一汽 336622
全柴 255802
潍柴 205986
云内 193105
东风汽车 162576
东风朝柴 143010
中国重汽 114199
江铃汽车 96939
杨柴 81777"""

data ="""1 	玉柴 	454394
2 	一汽集团 	361386
3 	全柴 	305033
4 	潍柴 	290008
5 	东风朝柴 	156516
6 	东风汽车 	155790
7 	云内动力 	132696
8 	中国重汽 	131075
9 	江西江铃 	117539
10 	山东莱动柴油机 	97631"""

data="""1 	玉柴 	525719
2 	一汽集团 	372038
3 	全柴 	306166
4 	潍柴 	299697
5 	云内动力 	158414
6 	东风汽车 	154985
7 	东风朝柴 	153551
8 	中国重汽 	126765
9 	江西江铃 	117323
10 	山东莱动柴油机 	98907"""

a = []
b = []
for line in data.split("\n"):
    x = line.split(' \t')
    print x
    a.append(x[1])
    b.append(x[2])

for item in a:
    print '"%s",'%(item),
print

for item in b:
    print "%s,"%(item),
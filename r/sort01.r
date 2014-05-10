
png(file="temp/2008p.png", bg="white", width=660, height=480)

#x.value <- c(55.0148, 33.6622, 25.5802, 20.5986, 19.3105, 16.2576, 14.3010, 11.4199, 9.6939, 8.1777)
#x.value <- c(45.4394, 36.1386, 30.5033, 29.0008, 15.6516, 15.5790, 13.2696, 13.1075, 11.7539, 9.7631)
x.value <- c(55.0148, 49.2140, 48.6867, 44.2907, 33.9583, 33.0321, 32.7164, 32.2208, 31.1255, 30.8460)
#x.value <- c(52.5719, 37.2038, 30.6166, 29.9697, 15.8414, 15.4985, 15.3551, 12.6765, 11.7323, 9.8907)
#x.name <-c("待问","浦东","品管","石膏代型","蜡型包埋","CAPTEK蜡型")

x1.value <- sort(x.value,decreasing = TRUE)
x2 <- x1.value
i <- 1
t <- 0
total <- 0

for( x in x1.value)
{
	total <- total + x

}

for( x in x1.value)
{
	t <- t + 100*x/total
	x2[i] <- t
	i <- i+1
}
##lines();
##x1.name <- x.name
##xp <- c(32,60,8,21,74,4,65,7,1,71,33,29,4,5,8,30,8,14,13,5,43,3,0,17,-1)

barplot(x1.value,ylim=c(0,max(x1.value)),offset = 0,col=rainbow(18),
#names=c("玉柴", "一汽", "全柴", "潍柴", "云内", "东风\n汽车", "东风\n朝柴", "中国\n重汽", "江铃\n汽车", "杨柴"),
#names=c("玉柴", "一汽", "全柴", "潍柴", "东风\n朝柴", "东风\n汽车", "云内", "中国\n重汽", "江铃", "山东\n莱动"),
names=c("玉柴", "一汽\n大众", "柳州\n五菱", "重庆\n长安", "一汽\n集团", "东安\n汽车", "上海\n大众", "奇瑞\n汽车", "一汽\n丰田", "广汽\n丰田"),
#names=c("玉柴", "一汽", "全柴", "潍柴", "云内", "东风\n汽车", "东风\n朝柴", "中国\n重汽", "江铃", "山东\n莱动"),
xlab="厂商",
ylab="产量（万台）",
tcl=0.5
)


par(new=TRUE)
plot(x2, ann=FALSE, type="n", ylim=c(0,100), axes = FALSE)


axis(4, c(0,20,40,60,80,100), lwd = 1,yaxs="i")
box()

abline(h = 100*0.8, col ="red")
lines(x2, col = "blue", lty = 1, type="o")

title(main = "2008年中国汽车发动机产量排名", col.main = "black", col.lab = gray(0.8), cex.main = 1.2, cex.lab = 1, font.main = 4, font.lab = 3)

#legend("topright", c("WIP", "标准产能",), col = c(3,4), text.col = "green4", lty = c(2, 1), pch = c(4,1), merge = TRUE, bg = 'gray90')
##points(x1, pch = 1)


##text(x1.value, labels=(x1.name))


dev.off()



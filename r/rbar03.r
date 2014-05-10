
png(file="temp/Rbar03.png", bg="white", width=560, height=420)

x.value <- c(135, 66, 20,13,2,0)
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
names=c("中文", "Infrastructure","扩展\nFunctions","Operation\nError","MES Bugs", "Interface"),
xlab="Downtime Reason",
ylab="Downtime (Minutes)",
tcl=0.5
)


par(new=TRUE)
plot(x2, ann=FALSE, type="n", ylim=c(0,100), axes = FALSE)


axis(4, c(0,20,40,60,80,100), lwd = 1,yaxs="i")
box()

abline(h = 100*0.8, col ="blue")
lines(x2, col = "blue", lty = 1, type="o")

title(main = "Downtime Statistics", col.main = "black", col.lab = gray(0.8), cex.main = 1.2, cex.lab = 1, font.main = 4, font.lab = 3)

#legend("topright", c("WIP", "标准产能",), col = c(3,4), text.col = "green4", lty = c(2, 1), pch = c(4,1), merge = TRUE, bg = 'gray90')
##points(x1, pch = 1)


##text(x1.value, labels=(x1.name))


dev.off()



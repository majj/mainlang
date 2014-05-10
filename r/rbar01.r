


png(file="temp/Rbar01.png", bg="white", width=780, height=560)

x.value <- c(167, 22,14,13,0, 0 )
#x.name <-c("待问","浦东","品管","石膏代型","蜡型包埋","CAPTEK蜡型","金属打磨","OP","全瓷内冠","堆粉组","车瓷组","上釉组","抛光组","隐义打磨","钢托设计","钢托复模","钢托蜡型","钢托包埋","钢托烧铸","冷弯","排牙/蜡型","装煮","排牙打磨","排牙抛光","隐义复模")

x1.value <- sort(x.value,decreasing = TRUE)
x2 <- x1.value
i <- 1
t <- 0
for( x in x1.value)
{
	t <- t + 100*x/216
	x2[i] <- t
	i <- i+1
}
##lines();
##x1.name <- x.name
##xp <- c(32,60,8,21,74,4,65,7,1,71,33,29,4,5,8,30,8,14,13,5,43,3,0,17,-1)

barplot(x1.value,ylim=c(0,max(x1.value)),offset = 0,col=rainbow(18),
names=c("NGMES BUG","Turn Table","Infrastructure","Operation","Interface","Process"),
#rot=45
)


par(new=TRUE)
plot(x2, ann=FALSE, type="n", ylim=c(0,100),offset = 0,axes = FALSE)


axis(4, c(0,20,40,60,80,100), lwd = 1)
box()

abline(h = 100*0.8, col = gray(0.9))
lines(x2, col = "blue", lty = 1, type = "o")
##points(x1, pch = 1)


#text(x1.value, labels=(x1.name))
#title(main = "排列图", xlab = "--", col.main = "blue", col.lab = gray(0.8), cex.main = 1.2, cex.lab = 1, font.main = 4, font.lab = 3)

#legend("topright", c("WIP", "标准产能",), col = c(3,4), text.col = "green4", lty = c(2, 1), pch = c(4,1), merge = TRUE, bg = 'gray90')

dev.off()
# 114,74, 148, 570 / 155 127  188, 570
  y1 <- 74+ x1.value ##array(rep(seq(1,by=floor(w/k), to=w),k),c(k,k))
  y2 <- 74+ y1 + 10 ##floor(w/k) - 1
  x1 <- t(y1)
  x2 <- t(y2)
  val <- 1:25


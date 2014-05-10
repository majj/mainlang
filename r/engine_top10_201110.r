
png(file="temp/top10-201110.png", bg="white", width=660, height=480)

## 玉柴、一汽集团、潍柴、全柴、、东风汽车、中国重汽、东风朝柴、山东莱动和江西江铃柴油机名列柴油机产量排名的前十位，产量分别为74194台、49653台、48671台、42008台、31364台、29332台、22181台、22162台、21605台和18157台

x.value <- c(3.5998,3.4334,2.8348,2.3884,1.6983,1.5440,1.3786,1.3336,1.2341,1.1693)

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

names=c("玉柴", "中国\n一汽","潍柴", "全柴","云内\n动力",  "东风\n汽车","江西\n江铃", "东风\n朝柴", "扬柴" , "山东\n华源莱动" ),
#玉柴、全柴、中国一汽、东风汽车、东风朝柴、潍柴、江西江铃、云内动力、山东华源莱动和潍柴动力扬柴名列柴油机生产企业前十位，产量分别为35839台、23753台、23274台、15872台、15214台、14962台、13871台、11973台、10131台和7938台，
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

title(main = "2011年10月中国柴油机企业产量排名", col.main = "black", col.lab = gray(0.8), cex.main = 1.2, cex.lab = 1, font.main = 4, font.lab = 3)


dev.off()




png(file="temp/201101wp.png", bg="white", width=660, height=480)

## ���һ�����š�Ϋ��ȫ�񡢡������������й����������糯��ɽ�������ͽ���������ͻ����в��ͻ�����������ǰʮλ�������ֱ�Ϊ74194̨��49653̨��48671̨��42008̨��31364̨��29332̨��22181̨��22162̨��21605̨��18157̨

x.value <- c(7.4194,4.9653,4.8671,4.2008,3.1364,2.9332,2.2181,2.2162,2.1605,1.8157)


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

names=c("���", "һ��\n����", "Ϋ��", "ȫ��", "����\n����", "����\n����", "�й�\n����", "����\n����", "ɽ��\n����", "��������\n���ͻ�"),

xlab="����",
ylab="��������̨��",
tcl=0.5
)


par(new=TRUE)
plot(x2, ann=FALSE, type="n", ylim=c(0,100), axes = FALSE)


axis(4, c(0,20,40,60,80,100), lwd = 1,yaxs="i")
box()

abline(h = 100*0.8, col ="red")
lines(x2, col = "blue", lty = 1, type="o")

title(main = "2011��1���й����ͻ���ҵ��������", col.main = "black", col.lab = gray(0.8), cex.main = 1.2, cex.lab = 1, font.main = 4, font.lab = 3)


dev.off()



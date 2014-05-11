png(filename = "plot3.png",width = 480,height = 480, units = "px")
par(ps=12,mar=c(4,4,4,2))
mydata<-read.table("household_power_consumption_selected.txt", header=TRUE, na.strings="?",sep=";")
a<-mydata[,"Sub_metering_1"]
b<-mydata[,"Sub_metering_2"]
c<-mydata[,"Sub_metering_3"]
t.date<-mydata[,"Date"]
t.time<-mydata[,"Time"]
t<-paste(t.date,t.time)
x<-strptime(t,format="%d/%m/%Y %H:%M:%S")
plot(x,a,type="l",xlab="",ylab="Energy sub metering")
points(x,b,type="l",col="red")
points(x,c,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch="——",col=c("black","red","blue"))
dev.copy(png, file="plot3.png")
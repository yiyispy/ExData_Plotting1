png(filename = "plot4.png",width = 480,height = 480, units = "px")
par(ps=12,mar=c(4,4,4,2),mfcol=c(2,2))
mydata<-read.table("household_power_consumption_selected.txt", header=TRUE, na.strings="?",sep=";")

t.date<-mydata[,"Date"]
t.time<-mydata[,"Time"]
t<-paste(t.date,t.time)
x<-strptime(t,format="%d/%m/%Y %H:%M:%S")

y1<-mydata[,"Global_active_power"]
plot(x,y1,type="l",xlab="",ylab="Global Active Power")

a<-mydata[,"Sub_metering_1"]
b<-mydata[,"Sub_metering_2"]
c<-mydata[,"Sub_metering_3"]
plot(x,a,type="l",xlab="",ylab="Energy sub metering")
points(x,b,type="l",col="red")
points(x,c,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch="——",col=c("black","red","blue"),bty="n")

y2<-mydata[,"Voltage"]
plot(x,y2,type="l",xlab="datetime",ylab="Voltage")

y3<-mydata[,"Global_reactive_power"]
plot(x,y3,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.copy(png, file="plot4.png")
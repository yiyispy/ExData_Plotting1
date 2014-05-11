png(filename = "plot2.png",width = 480,height = 480, units = "px")
par(ps=12,mar=c(4,4,4,2))
mydata<-read.table("household_power_consumption_selected.txt", header=TRUE, na.strings="?",sep=";")
a.date<-mydata[,"Date"]
a.time<-mydata[,"Time"]
a<-paste(a.date,a.time)
x<-strptime(a,format="%d/%m/%Y %H:%M:%S")
y<-mydata[,"Global_active_power"]
plot(x,y,type="l",xlab="",ylab="Global Active Power(kilowatts)")

dev.copy(png, file="plot2.png")


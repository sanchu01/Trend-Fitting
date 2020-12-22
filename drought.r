cat("                    DROUGHT")
year=c(2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019)
y=c(18,17,17,21,9,18,28,15,7,13)
x=array()
x2=array()
x3=array()
x4=array()
x2y=array()
xy=array()

for(i in 1:10)
{
  x[i]=year[i]-2013
  x2[i]=x[i]*x[i]
  x3[i]=x2[i]*x[i]
  x4[i]=x2[i]*x2[i]
  xy[i]=x[i]*y[i] 
  x2y[i]=x2[i]*y[i]
}
c=(10*sum(x2y)-(sum(x2)*sum(y)))/(10*sum(x4)-(sum(x2)^2))
a=(sum(y)-(c*sum(x2)))/10
b=sum(xy)/sum(x2)
cat("\n The value of a:",a)
cat("\n The value of b:",b)
cat("\n The value of c:",c)
cat("\n The Equation is y=",a,b,"x",c,"x2")
cat("\n             The Prediction for the year 2019")
cat("\n                   ",a+b*5+c*5^2)

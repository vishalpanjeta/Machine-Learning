'''
1)Consider the data sets "Sine_10" and "Sine_30". 
The first data set contains 10 points, and the second one 30 points. 
The points were generated by adding uniformly distributed noise to 
data coming from a sinusoidal curve. 
Using the Least Squares approach, fit polynomials of 
degree M=1,2,..,9. Show the plots of the polynomial fits.
'''

'''Following code plots sine_30.csv NOTE: CHANGE THE DESTINATION TO THE DATASETS'''

sine30<-read.table("C:\\Users\\VISHAL\\Downloads\\sine_30.csv", header=T, sep=",")
sine10<-read.table("C:\\Users\\VISHAL\\Downloads\\sine_10.csv", header=T, sep=",")
plot(sine30,pch=c(4),ylab="Sin(x)",xlab="X")



'''for 1 degree curve'''

model1<-lm(sine30$sine ~ poly(sine30$x,1),data=sine30)
lines(smooth.spline(sine30$x,fitted(model1)),col="blue")
residuals(model1)
summary(model1)


'''for 2 degree curve'''

model2<-lm(sine30$sine ~ poly(sine30$x,2),data=sine30)
lines(smooth.spline(sine30$x,fitted(model2)),col="blue")
residuals(model2)
summary(model2)



'''for 3 degree curve'''

model3<-lm(sine30$sine ~ poly(sine30$x,3),data=sine30)
lines(smooth.spline(sine30$x,fitted(model3)),col="Orange")
residuals(model3)
summary(model3)



'''for 4 degree curve'''

model4<-lm(sine30$sine ~ poly(sine30$x,4),data=sine30)
lines(smooth.spline(sine30$x,fitted(model4)),col="Blue")
residuals(model4)
summary(model4)



'''for 5 degree curve'''


model5<-lm(sine30$sine ~ poly(sine30$x,5),data=sine30)
lines(smooth.spline(sine30$x,fitted(model5)),col="Blue")
residuals ( model5)
summary( model5)



'''for 6 degree curve'''

model6<-lm(sine30$sine ~ poly(sine30$x,6),data=sine30)
lines(smooth.spline(sine30$x,fitted(model6)),col="Green")
residuals(model6)
summary(model6)



'''for 7 degree curve'''

model7<-lm(sine30$sine ~ poly(sine30$x,7),data=sine30)
lines(smooth.spline(sine30$x,fitted(model7)),col="Green")
residuals(model7)
summary(model7)


'''for 8 degree curve'''

model8<-lm(sine30$sine ~ poly(sine30$x,8),data=sine30)
lines(smooth.spline(sine30$x,fitted(model8)),col="Green")
residuals(model8)
summary(model8)


'''for 9 degree curve'''

model9<-lm(sine30$sine ~ poly(sine30$x,9),data=sine30)
lines(smooth.spline(sine30$x,fitted(model9)),col="Green")
residuals(model9)
summary(model9)




'''
2)Plot the RMS error versus the degree M.
'''

rms1<-round(sqrt(mean(resid(model1)^2)),4)
rms2<-round(sqrt(mean(resid(model2)^2)),4)
rms3<-round(sqrt(mean(resid(model3)^2)),4)
rms4<-round(sqrt(mean(resid(model4)^2)),4)
rms5<-round(sqrt(mean(resid(model5)^2)),4)
rms6<-round(sqrt(mean(resid(model6)^2)),4)
rms7<-round(sqrt(mean(resid(model7)^2)),4)
rms8<-round(sqrt(mean(resid(model8)^2)),4)
rms9<-round(sqrt(mean(resid(model9)^2)),4)

rms=c(rms1,rms2,rms3,rms4,rms5,rms6,rms7,rms8,rms9)
x=c(1:9)
plot(x, rms,pch=c(4),xlab="Value of x",ylab="rms Values")
modelrms<-lm(rms ~ poly(x,8))
lines(smooth.spline(x, fitted(modelrms)), col="Blue")



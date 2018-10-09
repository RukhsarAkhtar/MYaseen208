X1=c(0,0,10,10,20,20)
X2=c(0,0,100,100,400,400)
Y=c(5,7,15,17,9,11)
n=6

x1<-mean(X1)
print(x1)
x2<-mean(X2)
print(x2)
y<-mean(Y)
print(y)

sX1Y=sum(X1*Y)-(n*(x1*y))
print(sX1Y)

sX2X2=(sum(X2*X2)-(n*(x2*x2)))
print(sX2X2)

sX1X2=(sum(X1*X2)-(n*(x1*x2)))
print(sX1X2)

sX1X1=(sum(X1*X1)-(n*(x1*x1)))
print(sX1X1)

sX2Y=(sum(X2*Y)-(n*(x2*y)))
print(sX2Y)

b1=((sX1Y*sX2X2)-(sX1X2*sX2Y))/((sX1X1*sX2X2)-(sX1X2)^2)
print(b1)

b2=((sX1X1*sX2Y)-(sX1X2*sX1Y))/((sX1X1*sX2X2)-(sX1X2)^2)
print(b2)

b0=((mean(Y))-(b1*mean(X1))-(b2*mean(X2)))
print(b0)

y_hat=b0+(b1*X1)+(b2*X2)
print(y_hat)

TSS=sum(Y*Y)-(n*(mean(Y)^2))
print(TSS)

SSR=(sum(y_hat-y)^2)
print(SSR)

SSE=TSS-SSR
print(SSE)

coeff_of_regg=SSR/TSS
print(coeff_of_regg)



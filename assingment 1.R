F=c(100,200,300,400,500,600,700)
R=c(10,20,10,30,20,20,30)
Y=c(40,50,50,70,65,65,80)
n=7

x1<-mean(F)
print(x1)
x2<-mean(R)
print(x2)
y<-mean(Y)
print(y)

sX1Y=sum(F*Y)-(n*(x1*y))`
print(sX1Y)

sX2X2=(sum(R*R)-(n*(x2*x2)))
print(sX2X2)

sX1X2=(sum(F*R)-(n*(x1*x2)))
print(sX1X2)

sX1X1=(sum(F*F)-(n*(x1*x1)))
print(sX1X1)

sX2Y=(sum(R*Y)-(n*(x2*y)))
print(sX2Y)

b1=((sX1Y*sX2X2)-(sX1X2*sX2Y))/((sX1X1*sX2X2)-(sX1X2)^2)
print(b1)

b2=((sX1X1*sX2Y)-(sX1X2*sX1Y))/((sX1X1*sX2X2)-(sX1X2)^2)
print(b2)

b0=((mean(Y))-(b1*mean(F))-(b2*mean(R)))
print(b0)

y_hat=b0+(b1*F)+(b2*R)
print(y_hat)

TSS=sum(Y*Y)-(n*(mean(Y)^2))
print(TSS)

SSR=(sum(y_hat-y)^2)
print(SSR)

SSE=TSS-SSR
print(SSE)

coeff_of_regg=SSR/TSS
print(coeff_of_regg)



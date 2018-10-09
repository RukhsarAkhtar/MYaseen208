P=c(30,10,60,40,20,40,50,30)
L=c(10,0,45,65,70,30,40,20)
Y=c(15,8,23,53,55,37,29,16)
n=8

x1<-mean(P)
print(x1)
x2<-mean(L)
print(x2)
y<-mean(Y)
print(y)

sX1Y=sum(P*Y)-(n*(x1*y))`
print(sX1Y)

sX2X2=(sum(L*L)-(n*(x2*x2)))
print(sX2X2)

sX1X2=(sum(P*L)-(n*(x1*x2)))
print(sX1X2)

sX1X1=(sum(L*L)-(n*(x1*x1)))
print(sX1X1)

sX2Y=(sum(L*Y)-(n*(x2*y)))
print(sX2Y)

b1=((sX1Y*sX2X2)-(sX1X2*sX2Y))/((sX1X1*sX2X2)-(sX1X2)^2)
print(b1)

b2=((sX1X1*sX2Y)-(sX1X2*sX1Y))/((sX1X1*sX2X2)-(sX1X2)^2)
print(b2)

b0=(mean(Y))-(b1*mean(P))-(b2*mean(L))
print(b0)

y_hat=b0+(b1*P)+(b2*L)
print(y_hat)

TSS=sum(Y*Y)-(n*(mean(Y)^2))
print(TSS)

SSR=(sum(y_hat-y)^2)
print(SSR)

SSE=TSS-SSR
print(SSE)

coeff_of_regg=SSR/TSS
print(coeff_of_regg)



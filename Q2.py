rom pandas import DataFrame
from sklearn import linear_model
import matplotlib.pyplot as plt
import statsmodels.api as sm
my_data = {'X1': [0,0,10,10,20,20],
           'X2': [0,0,100,100,400,400],
           'Y1': [5,7,15,17,9,11]
           }
df = DataFrame(my_data,columns=['X1','X2','Y'])

print (df)
plt.scatter(df['X1'], df['Y'], color='red')
plt.title('X1 Vs Y1', fontsize=14)
plt.xlabel('X1', fontsize=14)
plt.ylabel('Y1', fontsize=14)
plt.grid(True)
plt.show()

plt.scatter(df['X2'], df['Y1'], color='green')
plt.title(' X2 Vs Y1', fontsize=14)
plt.xlabel('X2', fontsize=14)
plt.ylabel('Y1', fontsize=14)
plt.grid(True)
plt.show()


X = df[['X1','X2']]
Y = df['Y1']
reg = linear_model.LinearRegression()
reg.fit(X, Y)
print('Intercept: \n', reg.intercept_)
print('Coefficients: \n', reg.coef_)
predictions = reg.predict(X)
print('predictions: \n', predictions)

X = sm.add_constant(X)

model = sm.OLS(Y, X).fit()
predictions = model.predict(X)

print_model = model.summary()
print(print_model)
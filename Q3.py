rom pandas import DataFrame
from sklearn import linear_model
import matplotlib.pyplot as plt
import statsmodels.api as sm
my_data = {'P': [30,10,60,40,20,40,50,30],
           'L': [10,0,45,65,70,30,40,20],
           'Y1': [15,8,23,53,55,37,29,16]
           }
df = DataFrame(my_data,columns=['P','L','Y1'])

print (df)
plt.scatter(df['P'], df['Y1'], color='red')
plt.title('P Vs Y1', fontsize=14)
plt.xlabel('P', fontsize=14)
plt.ylabel('Y1', fontsize=14)
plt.grid(True)
plt.show()

plt.scatter(df['L'], df['Y1'], color='green')
plt.title(' L Vs Y1', fontsize=14)
plt.xlabel('L', fontsize=14)
plt.ylabel('Y1', fontsize=14)
plt.grid(True)
plt.show()


X = df[['P','L']]
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
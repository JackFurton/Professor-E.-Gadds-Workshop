from sklearn.linear_model import LinearRegression
import numpy as np

def train_model(x, y):
    x = np.array(x).reshape((-1, 1))
    y = np.array(y)

    model = LinearRegression()
    model.fit(x, y)

    return model.coef_, model.intercept_


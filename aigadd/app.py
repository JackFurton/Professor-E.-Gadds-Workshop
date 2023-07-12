from flask import Flask, render_template, request
from model import train_model  # import the function from model.py

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        data = request.form['data']
        parameters = request.form['parameters']

        # For now, let's assume that data is a list of x values and 
        # parameters is a list of y values. 
        # In reality, you would probably want to use more complex data structures 
        # and do some validation and error handling here.

        # Convert the strings to lists
        data = [int(i) for i in data.split(',')]
        parameters = [int(i) for i in parameters.split(',')]

        # Train the model
        coef, intercept = train_model(data, parameters)

        return 'Model trained. Coef: {}. Intercept: {}.'.format(coef, intercept)

    return '''
        <form method="POST">
            Data (x values): <input type="text" name="data"><br>
            Parameters (y values): <input type="text" name="parameters"><br>
            <input type="submit" value="Submit">
        </form>
    '''

if __name__ == '__main__':
    app.run(debug=True)


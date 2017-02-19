import os
from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Welcome to ' + os.environ['ORG_NAME'] + '\'s site'


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')

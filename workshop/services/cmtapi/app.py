from flask import Flask
app = Flask(__name__)

@app.route('/',methods = ['POST', 'GET'])
def hello_world():
    return 'Hello, World!'
@app.route('/_/heath')
def ready():
    return 'ok'
    
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port='8080')

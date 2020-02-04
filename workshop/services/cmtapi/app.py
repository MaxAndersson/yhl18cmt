from flask import Flask
from flask import url_for
import tasks
import os
import json 

app = Flask(__name__)

@app.route('/',methods = ['POST', 'GET'])
def hello_world():
    return 'Hello, World!'
@app.route('/_/heath')
def ready():
    return 'ok'

@app.route('/add/<int:x>/<int:y>')
def add(x, y):
   #task = celery.send_task('tasks.add', args=[x, y])
    task = tasks.add.delay(x,y)
    return json.dumps(dict(id=url_for('check_task', task_id=task.id, external=True)))

@app.route('/check/<string:task_id>')
def check_task(task_id):
    respond = tasks.celery.AsyncResult(task_id)
    if respond.state == states.PENDING:
        return respond.state
    else:
        return str(respond.result)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port='8080')

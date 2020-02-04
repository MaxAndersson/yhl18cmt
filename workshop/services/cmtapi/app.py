from flask import Flask
from flask import url_for
from celery.states import state
import tasks
import os

app = Flask(__name__)

@app.route('/',methods = ['POST', 'GET'])
def hello_world():
    return 'Hello, World!'
@app.route('/_/heath')
def ready():
    return 'ok'

@app.route('/add/<int:x>/<int:y>')
def add(x, y):
    task = celery.send_task('tasks.add', args=[x, y])
    response = f"<a href='{url_for('check_task', task_id=task.id, external=True)}'> Status of: {task.id} </a>"
    return response

@app.route('/check/<string:task_id>')
def check_task(task_id):
    respond = celery.AsyncResult(task_id)
    if respond.state == states.PENDING:
        return respond.state
    else:
        return str(respond.result)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port='8080')

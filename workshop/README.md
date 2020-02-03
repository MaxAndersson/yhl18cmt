# Welcome to the CMT Workshop. 

You will be devided into teams during the day and we will be building our own microservices architecture (at a small scale) to show-case it's posibilities. 

This might will require that personal engagement from all participants and hopefully we can learn some of the challanges with deploying distributed systems. 

First task that will be distributed to the teams are.

We will use Keycloak to manage our authentication and authorization
We will use RabbitMQ as our servicebus.
We will create a distributed task queue coupled with a web service (using flask & Celery)
We will integrate these services with our demo app.


Goals:
- A user should be able to login from our demo app with the help of keycloak
- A user should be able to call our web service
- Our web service should be able to publish a task on our servicebus
- Our service should be able to return the results of a task to the demo app.
- Our web service should be accessable and deployed though openfaas.

Procedure.
1. Start by creating a deployment for our assigned service.
2. Make sure an example works that you can show-case
3. Make sure your service integrates with the rest of the services.


Team 1: Start with configuring Keycloak and create an example

Team 2: Start with configuring Openfaas and create an example

Team 3: Start with building a containerized flask app with celery dependencies






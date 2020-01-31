### Observability
#### The Three pillars of observability

Tracing, Causal ordering of recorded events.

Logging, Records events that have happened.

Metrics, Data combined of events we track.

#### Blackbox vs. Whitebox monitoring
Blackbox means that we look at what we put in and what we get out but not what's in the "box". We are just happy with having the application up and running not paying attention to what exactly it's doing.

Whitebox, means that we are looking at whats happening inside the "box" and have an understanding of whats happenign inside. Instead now we know whats happening inside, and we can with the right knowledge of the application see whats happening inside.

#### Alerting

An alert means that we are sending out a message with some level of urgency related to it, it could require immediete attention or just that it needs to be tended to at all. These alerts could be sent an email, or other means of messaging depending on the level of urgency involved.

#### Monitoring Signals

Latency, the time it takes per service request. We also need to be aware of what Error latency would be as an error might be served very fast as well so we shouuld be aware and not filter everything out.

Traffic, what kind of demand is there on the service, are we getting 1 000 requests per second, 10 000 requests, or what ever that number might be. It depends on the type of service what we exactly define as traffic for it. It could be as simple as HTTP requests or concurrent users. 

Errors, failed HTTP requests, failed healthchecks, or other kind of logic based failures.

Saturation, what kind of load and utilization do we have on the service and will it impact performance? It can also help us with making a predictions of saturation e.g., our storage will be at maximum capacity in 3 hours. 

#### Why do we need logs?

It's not just that we need logs, but that we also need to to know what we should log. We could log literally everything, but are the logs we get relevant to what we want to know?

We do need to log for tracking what is happening on the server or service, we would want to see where an error occured or what was happening at the time when an error occured.
It can also show us who has accessed the system. It's an invaluable tool for many different types of events that we would want to look further into.

#### What is the difference between logs and metrics?

Logs are descriptions of events that have happenend.

Metrics are a specific point in time that usually happens at intervals these intervals could be every 5 minutes, every hour and so on. Through these we can visualize the data through various types of graphs.

#### What is Tracing ?

We can follow the path a request would take, what services it talks to and so on. So that we could see what caused an event to take 200ms to respond, and what path it would have taken and so on.

### Service Mesh
#### What is a Service Mesh?

#### How does enable it’s data plane?

#### mTLS

#### Circuit Breaking

#### Traffic splitting/steering

#### Fault Injection

#### Rolling Update

### Serverless
#### What are some benefits and drawbacks of adopting serverless architecture?

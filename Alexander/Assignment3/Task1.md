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

It is an infrastructure for communication service to service.

#### How does it enable it’s data plane?

It uses a sidecar to the application instance, wether its a pod or container. It takes over all ingress and egress traffic from the application and allows you to manage that without having to bother with application code for it.

#### mTLS

Ensures that traffic is authenticated by exchange of certificates by client and server. It means that both server and client can verify the recipient of the traffic. 

#### Circuit Breaking

It is to design where failure is an option, we build in a 'circuit breaker'. To allow us after reaching a threshold of failed requests to 'open' the breaker meaning we have now stopped all requests without executing them at all and we send an error message out. Then we can after a timeout period, we go over to trying to allow for the service to be used once again, and if it works we go back to full functionality again. Thus we can limit the impact of cascading failures by having a backlog of requests or having long load times that just ends in an error anyway.

#### Traffic splitting/steering

Rules for how traffic is directed on the network by the service mesh. 

#### Fault Injection

To allow testing the resilience of our application by introducing various types of faults, could be HTTP delay etc. There's various types of faults you could test, and it can be isolated to not impact the end users of the service.

#### Rolling Update

It allows us by to do updates with no lost requests, by using a virtual service, and rerouting the traffic from v1 and v2 with actual 0 downtime. So we create separate deployments for the versions and then once successfully rolled out we reroute the traffic to v2 and while we do that we leave v1 still up and functional for a period of time. Then once it's all done we can bring down v1 and there we go, we have v2 up and running without losing requests.

### Serverless
#### What are some benefits and drawbacks of adopting serverless architecture?

Benefits:

No server management, you leave the management of the actual servers to your vendor, as even serverless takes place on actual servers. 

Reduced cost, you only pay for exactly what you use, down into hundreds of milliseconds depending on your provider.

Scalability, it's inherently scalable  as it increases the instances to meet the demands within your limits of course. It has the capability of handling the lows and highs through that scalability.

Drawbacks:

Security concerns, you leave the security to someone else to manage and thus reliant on them to do their job properly. You are going to be sharing servers with other tenants, meaning you could be impacted by something caused by others.

Vendor lock-in, you could be locked in with your current code by having reliance on specific ways something functions with your current vendor, especially as the vendors do offering services that are somewhat different in workflow and features.

It is best used with short duration tasks, as you get charged for the time code is running and there can be a cap on the duration of your tasks. Meaning it could be more efficient and better to run your task in a more traditional way.
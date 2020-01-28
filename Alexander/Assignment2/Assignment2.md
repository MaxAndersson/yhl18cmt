Assignment 2
======
## Alexander Stenmark
### Task 1
#### Continuous Integration vs. Continuous Delivery

Continuous integration, means that we have our source code versioned controlled through e.g., git, and that we do automatic integration tests, and unit tests. For it to work ideally we need to often commit to our git repository. Thus we are able to quickly and easily able to find errors.

Continuous Delivery, means that we take it a step further and we have review of the code and staging into an actual release, but not actually deployed to production, as with Continuous delivery we have a manual step before we push it into production.

#### Jenkins vs. Gitlab

Jenkins, is very heavily plugin based with the pros and cons involved with that. It is free to use. It can be split away from your code repository.

Gitlab, is an environment you can run on premises or as SaaS from Gitlab, at a cost for the more advanced features or more runner time. There's also the fact that gitlab is a full environment from version control to deployment.

#### SDN (Software Defined Networks)

In SDNs we have three layers in the network, we  have an application layer, control layer and an infrastructure layer connected together through northbound and southbound APIs. Where applications talks to the control layer through the northbound API, and the control layer and infrastructure layer talk through the southbound API.

#### OpenFlow

A protocol for servers to switches and or routers what to do with packages. In a traditionally setup network you have propietary software in each unit telling it how to operate, with OpenFlow we can centralize the control over the network and be conrolled independant of what gear we have available as long as they support the OpenFlow protocol.

#### Control Plane vs. Data Plane

Control plane, handles the config, management and the routing of the network, it builds and handles the routing tables.

Data plane, handles the transfer of data between clients, servers. It also handles multiple protocols. The traffic in the data plane travels through the network not to a router and then to the next one per say, rather you could say it moves through them instead.

#### Microservices
##### *API Gateway*

An API gateway, is a service we put infront of our services, so that we don't need to expose all our API's but rather only a single one which acts as an intermediary between client and services.

##### *What a Service is.*

It is a process that communicates over the network to fulfill someform of a goal. They are also modular in that each one can be deployed individually.

##### *Advantages of Microservices*

Modularity, scalability, release speed, easier to review the code. These are some of the advantages of microservices.

##### *Limitations/Pitfalls of Microservices*

Communication, security, harder to test. These are a few of the issues with Microservices.

##### *Service Discovery*

It can be separated to be either client side or server side, to automatically discover services, through a registry over the services.

#### Inter-Service Communication
##### *REST*

Representational State Transfer, is able to take advantage of exisiting and can be used with most protocols, for web APIs it often takes advantage of HTTP. The calls used by REST are stateless, which means that we cant have something be remembered between transactions.

##### *RPI / RPC*

There are several implentations of RPI/RPC, but it is an inter-process communication protocol that handles it through a request/reply protocol to make requests to services.

##### *gRPC*

It consists of two parts, data serialization and the gRPC protocol. It is based around a client application making direct calls to methods on a server application remotely as though it was local. It's quite similar to RPC in how it defines a service, and defining the methods which can be called and the return types.

##### *Message Queues (alt. Service Bus)*

They are involved in decoupling systems by making the process of decoupling them a lot easier for the communcation between these applications, while maintaining or improving performance, and scalability. They also allow for asynchronous communication. It works through a publisher and subscriber model.

##### *AMQP*

It's a standard for asyncronous messaging. It allows for different types of confirmation messages, among those are the following : At-most-once, sending a message once, wether it reaches it's destination or not. At-least-once, where we make sure it's delivered but we can get duplicated messages.

##### *RabbitMQ & Kafka*

RabbitMQ operates under a push based approach for messages. It can be used for communication between microservices. It supports multiple different protocols where AMQP is one of them. It is keeping track of wether messages have been read unlike. It supports durable and transient messages, where the durable ones are stored while the transient ones will disappear if something happens to a node. It is capable of synchrnous and asynchronous communication.

Kafka, is a distributed public/subscribe messaging system. It works in the way that it keeps the messages for a set period of time, and it doesn't itself keep track of wether a message has been read, but rather making the consumer responsible for that. It operates under a pull based approach for messages.

#### Storage
##### *Openstack Cinder vs. GlusterFs*

Cinder is the block store for in Openstack, that can use several different backends including but not limited to, Ceph, GlusterFS. Through these backends the volumes for the block store are provided. Ceph as far as i'm aware is the most commonly used one in the Openstack sphere.

GlusterFS, is a distributed file system which could be the foundation you place your cinder block storage on. It works through storage pools and bricks. So it can be used with Cinder to integrate for Openstack or it can be used standalone to provide the benefits of a distributed file system.

##### *Openstack Swift vs. S3 Storage*

Openstack Swift is open and available for being deployed with Openstack along with plenty of other services.

S3, is Amazons proprietary object storage, thats available to use from their platform.

Overall they are relatively similar in my experince in that they both are object/blob storage services, but the platforms they are on take a bit of a different approach, with Opentack being open, and AWS being propietary.

##### *Block storage vs. File Storage vs. Object Storage*

Block storage is that we only provide storage in the form of blocks, no filesystem or anything, just a place for storing bytes in general.

File storage, uses a hierarchal structure for storing information and your system needs to know the path to be able to access it.

Object storage, stores the data as objects and within a single pool of storage, there is no folders or hierarchy involved. Each object, is all the data and metadata combined and uses a unique identifier to find the specific data you are looking for.

#### Kubernetes
##### *RBAC*

Role-based acceess control, is an authentication mechanism for permissions in regards to Kubernetes resources. It can be updated and managed without a restart of the cluster. It is purely addative with permissions, in that there are no deny rules, it also uses namespaces in that.

##### *Persistent Volumes (PV) vs. Persistent Volume Claims (PVC)*

Persistent volumes, are the actual storage you gained from your claims from the cluster.

Persistent volume claims, is a request for storage sent to the cluster and what properties the storage should have.

##### *Storage Classes*

Storage classes are for defining different types of storage defined by the administrator for allow for different types of storage or different back up policies and such. It could be local or using another provisioner e.g., Ceph, Cinder or GlusterFS.

##### *Ingress Controller*

An ingress controller is a daemon that would be deployed as a pod. It is sitting there and watching the apiserver's endpoint for changes and updates to the ingress.
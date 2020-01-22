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

#### OpenFlow

#### Control Plane vs. Data Plane

#### Microservices
##### *Api Gateway*

##### *What a Service is.*

##### *Advantages of Microservices*

##### *Limitations/Pitfalls of Microservices*

##### *Service Discovery*

#### Inter-Service Communication

##### *REST*

##### *RPI / RPC*

##### *gRPC*

##### *Message Queues (alt. Service Bus)*

##### *AMQP*

##### *RabbitMQ & Kafka*

#### Storage
##### *Openstack Cinder vs. GlusterFs*

##### *Openstack Swift vs. S3 Storage*

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
Storage classes are for defining different types of storage defined by the administrator for allow for different types of storage or different back up policies and such. It could be local, or using another provisioner e.g., CephFS, Cinder or GlusterFS
##### *Ingress Controller*

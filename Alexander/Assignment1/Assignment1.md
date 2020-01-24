Assignment 1
======
## Alexander Stenmark
### Task 1

#### IaaS, PaaS & SaaS

##### *Infrastructure as a Service*

The least encompassing of the main categories within cloud computing, in that you are more of a provider of resources at this stage. With IaaS you are providing the means for your customers to use resources you provide, which could encompass e.g., backup, replication, log access, clustering and so on.

##### *Platform as a Service*

Not quite as encompassing as SaaS but provides software tools unlike IaaS and it's often used to provide tools for application development remotely i.e., over the internet. It would in such a use case allow for more similar develop environment. 

But for PaaS you would see the service include more of the cloud infrastructure than IaaS like middleware, databases, storage services etc. All of these features managed by the thirdparty leaving you with less worries and get back to doing what you need to do on your platform and allows for less reliance upon physical location unlike a more traditional environment.

##### *Software as a Service*

With SaaS you get a finished product served to you by having a third party hosting and making the applications available to customers over the internet. It is the furthest reaching main category within cloud computing in that it encompasses the mosts with IaaS encompassing the least, not necessairly in the useage part but in the simplicity for the customer to get started by taking away the worry of having to do anything but use the actual software.

#### OS-level virtualization

OS Virtualization works in the OS layer, and the kernel of the host OS allows for multiple user-space instances to exist in isolation from each other. This is generally referred to as containers and allows us to utilize the host machines kernel, meaning you are locked into running containers based on the same platform as you. You couldn't run a windows container on a Linux host with few exceptions to this rule. It also allows for quite smooth migration of individual applications.

#### cgroups

cgroups are a feature of the Linux kernel, for organizing processes along with their child processes and controlling access and limiting system resources to the processes. Including CPU, memory, network among others, it does however not isolate what a processes can see which is done by namespaces. It is also largely consistent of two parts, controller and the core, where the core organizes processes and the controller responsible for system resources to be distributed to the processes.

#### Copy-on-Write (COW) & Snapshots
COW is a feature for filesystems in which we don't modify immedietly overwrite the original data, but rather we make a copy referrencing the master and from there we modify the copied data, and then once successful we write it to the master copy of the data.

Snapshots are made up by a set of references for data at a specific point in time. It can be used to have a state of restoring your system to if you want to test multiple different applications without having to clean up between them and such.

#### High-Availability
A highly available system is a system which you measure the uptime and design it around having a high uptime and eliminating single points of failure. You need to keep failovers, backups, access among other things in how it affects the system. With Kubernetes you'd need at least 3 nodes for a high-availability system to some degree.

#### Idempotency
To make our code always have the same result, regardless of how many repetitions.

It should be the same from one or multiple requests.

A very simple example would be the following

```

X = 10

Y += 1
```
The first example here is always going to have the value of 10.  While the second example will have an incremental value and thus it will not stay the same between the first and second request.

#### Mutable vs Immutable Infrastructure
Mutable infrastructure is when we can and will be updating the infrastructure in place and it's expected to be changed as well.There are some benefits to be had in a mutable environment e.g., adaptability on a per server basis, more adaptability for the specific applications. A drawback is that you are gonna have to deal with 'configuration drift' to some extent in a mutable environment due to the mutability. Another issue is that it can be harder to reproduce issues due to more unique configurations and it might just happen on that one server but not on the other one even though they are mostly the same.

On the other hand when we use immutable infrastructure we get the opposite we get infrastrucutre where we end up creating an entirely new instance with the proper modifications made to it. A benefit you gain with the declarative approach is that you will avoid 'configuration drift' because of it's immutable nature. It also fits nicely in with version control and thus you can easily switch between versions if you need to roll back and such. While those are some of the benefits, some of the drawbacks include e.g., your inability to modify things in place, if you need to do an update you would need to upgrade all the servers using the same configuration.

#### Configuration Management vs. Orchestration

Configuration Management is when you have turned your configuration into code essentially. It allows for introduction of automation into the workflow, where now you could manage more servers in a given time, you will need to be vigilant about keeping your environments consistent between each other, so that place A isn't vastly different from place B. Thus we get a standardization in environment and that enables an easier time for handling the systems by removing variables and documentation is easier to maintain.

Orchestration consists of many parts, among which are automated configuration,management, coordination of systems and services. At the increasing complexity of managing systems and the fact that we need to manage a large amount of systems means that we need something scalable built into how we want to manage our platform. Orchestration makes you able to manage multiple configurations, automatated tasks among other things across groups of machines. It makes the workflow easier to handle and easier to handle the complexity in modern systems.

#### Procedural vs Declarative

Procedural, is when we define a step by step process on how to achieve our desired end state.

Declarative, we define the end state we want to reach and let the software be responsible for figuring out how to reach the desired end state. 

#### Git Submodule

A git submodule allows for a git repo to be part of another git repository as directory in the working directory of the parent repository. 

You use a .gitmodules file in the root of the main repository to specify paths and URL for interacting with the submodule. A submodule can be interacted with independantly from the main repository with commit, push and pull.

#### Ansible
##### *Inventory File*

Contains a list of hosts. In the inventory file you can for  example add specific host variables or define groups of hosts, so that you for example only apply certain roles to one group or even one particular host. If a host is part of multiple groups they will get all applicable roles applied to them.

##### *Playbook*

A playbook is where we define what ansible will be doing. In essence it's like a to do list or an instruction manual. It is read sequentially and will proceed in that order through everything you have configured here. 

#### Kubernetes
##### *Compare Stateful and Stateless Applications*

A stateless application is where one of your sessions have no impact on your next one, you could just say that your application 'resets' or 'forgets' you between sessions. 

Meanwhile a stateful application will have a memory of you being there stored away in persistent storage, so that when you come back the next time you will get recognized. In the instance that you comeback and you can see the history of what you did in your last session, then you can assume that the application has some form of state. What it stores is usually determined by the need of the application. 

##### *ReplicaSets,Deployments, Pods & Services*
###### *ReplicaSets*

It is a controller where you can define how many replicas of a pod should be running at a given time. It always wants to achieve the desired state and make sure that the observable state is inline with the desired state of pod replicas. It manages the pods through labels, and manages all pods matching the applicable labels. Don't use overlapping labels as that can cause issues making different selectors think they did things they didn't actually do.

###### *Deployments*

A deployment is a concept not vastly different from ReplicaSets, in that it does a similar job to it, but it is a level higher up and is declarative. It uses a Pod template and through this we specify what a pod should contain, labels, volumes among other things.  So when you modify the Pod template of your deployment you will get new Pods created to match the new desired state.

###### *Pods & Services*

A Pod is in essence a group of containers with common resources, e.g., storage, network and a definitionon how to run the containers. It is also the smallest unit that you can manage and create in Kubernetes. A Pod could also be seen as a tightly bound group of applications that in the past would have been executed in the same machine. It is in essence one logical unit where the individual containers in the Pod can communicate using standard inter-process communication and even share one port space and the same IP address. 

Services are essentially a way for defining how to access a set of Pods. Essentially it is a way to allow us to allow an application to not need to keep track of what Pod it should be talking to just that it has a Pod to talk to, this is why we use services to allow for this decoupling, at least this is how you could define it when we are dealing with something stateless. As the application would be fine with talking to any Pod just that it can talk to a Pod.

### Task2

#### Why might you want to make a multi-stage build ?

One reason would be that you don't need the environment you build your application in for deploying your application and thus to minimize the footprint of your application you could then just copy the artifact from the build container. It could also serve to reduce the amount of different Dockerfiles you would need as you basically can have as many stages as you need with the introduction of multi-stage builds.

#### Mounting database dumps like this can be a good solution to use for a test database, but why might you not want to do it like this for a production database?
One reason would be that every container you will be starting would be taking a fair amount of time to finish initializing. Depending on the size of your database it could be fast or it could take 15 minutes or even longer and thus we have achieved a state which is anything but ideal.
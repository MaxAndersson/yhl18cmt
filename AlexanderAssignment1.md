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

#### cgroups

#### Copy-on-Write (COW) & Snapshots
COW is a feature for filesystems in which we don't modify immedietly overwrite the original data, but rather we make a copy referrencing the master and from there we modify the copied data, and then once successful we write it to the master copy of the data.


#### High-Availability

#### Idempotency
To make our code always have the same result, regardless of how many repetitions.

It should be the same from one or multiple requests.

#### Mutable vs Immutable Infrastructure
Mutable infrastructure is when we can and will be updating the infrastructure in place and it's expected to be changed as well.There are some benefits to be had in a mutable environment e.g., adaptability on a per server basis, more adaptability for the specific applications. A drawback is that you are gonna have to deal with 'configuration drift' to some extent in a mutable environment due to the mutability. Another issue is that it can be harder to reproduce issues due to more unique configurations and it might just happen on that one server but not on the other one even though they are mostly the same.

On the other hand when we use immutable infrastructure we get the opposite we get infrastrucutre where we end up creating an entirely new instance with that proper modifications made to it. 
#### Configuration Management vs. Orchestration

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

A stateless applicaiton is one where one of your sessions have no impact on the next one, you could just say that your application 'resets' between sessions in that it forgets you. 

Meanwhile a stateful application will have a memory of you being there stored away in persistent storage, so that when you come back the next time you will get recognized. In the instance that you comeback and you can see the history of what you did in your last session, then you can assume that the application has some form of state. What it stores is usually determined by the need of the application. 

##### *ReplicaSets,Deployments, Pods & Services*

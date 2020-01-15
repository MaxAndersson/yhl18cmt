Assignment 1
======
## Alexander Stenmark
### Task 1

#### IaaS, PaaS & SaaS
*Infrastructure as a Service*

*Platform as a Service*

*Software as a Service*

#### OS-level virtualization

#### cgroups

#### Copy-on-Write (COW) & Snapshots

#### High-Availability

#### Idempotency
To make our code always have the same result, regardless of how many repetitions.

It should be the same from one or multiple requests.

#### Mutable vs Immutable Infrastructure

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
A stateless application doesn't save any data and won't have a volume.

A stateful application will save data about the clients, and will hold on to that, the data could be stored locally or remotely depending on your setup for storage. It will have some form of volume coming with it. 
##### *ReplicaSets,Deployments, Pods & Services*

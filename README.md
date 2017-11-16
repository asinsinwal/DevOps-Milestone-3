# DevOps: Milestone 3 - Deploy

### Components - How our milestone meets each requirement. 

* **Screencast:**

* Screencast for [Deployment, Infrastructure Upgrade (Redis feature flag), Canary Release](https://www.youtube.com/watch?v=Z7D6MrIOJPU)</br>
* Screencast for [Infrastructure Upgrade (Nomad Cluster)](https://youtu.be/KVnHJjEi0ws)</br>
* Screencast for [Rolling Updates](https://youtu.be/baOLIKE9vSQ)</br>

Your production infrastructure and deployment pipeline should support the following properties.

* **Deployment:** Deploy iTrust and checkbox.io to a production environment. Create a git hook on your jenkins server that will trigger a deployment when doing a git push to "production". The deployment needs to occur on actual remote machine (e.g. AWS, droplet, VCL), and not a local VM. The deployment should create and configure the production environment using ansible.

* **Infrastructure Upgrade** Make improvements to the infrastructure of checkbox.io.
  - Create a nomad cluster (3 nodes) for running a service job for `server.js`. Keep a single instance of the service. Demonstrate service is still available after turning off the node with the current instance running service.
  - Create a redis feature flagserver that can be used to turn off/on features on checkbox.io. Pick one feature to demo in screencast. The redis properties server should be mirrored locally to each instance.
 
* **Canary Release**. Implement the ability to perform a canary release for checkbox.io: Using a proxy/load balancer server, route a percentage of traffic to a newly staged version of software and remaining traffic to a stable version of software. Stop routing traffic to canary if alert is raised.

* **Rolling Update**. Implement a rolling update deployment strategy for iTrust, where 5 instances of iTrust have been deployed, and each instance of iTrust must be reployed while 4 instances remain operational.


* NOTE: We have explained everything in detail, in the screencast.

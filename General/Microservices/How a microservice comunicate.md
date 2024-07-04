With a microservices architecture, an application is built as independent components that run each application process as a service. These services **communicate via** a well-defined **interface** using lightweight APIs.

---

Communicate with one another over a combination of [representational state transfer (REST) APIs](https://www.ibm.com/topics/rest-apis), event streaming and [message brokers](https://www.ibm.com/topics/message-brokers).

---

Each backend service might expose an API, and services consume APIs provided by other services.

Although the total functionality is unchanged, you use microservices to separate the application into manageable chunks or services. Each service has a well‑defined boundary in the form of an RPC or message‑driven API.

----

In a microservice architecture, each service has separate access controls. To help ensure security, you need to secure access to each service both within the environment and from external applications that consume its APIs.

### References

Amazon. What are Microservices?
  https://aws.amazon.com/microservices/

IBM. What are microservices?
   https://www.ibm.com/topics/microservices
   
Google. Introduction to microservices
  https://cloud.google.com/architecture/microservices-architecture-introduction

### See also
[Database per service](Database%20per%20service.md)
[Implement interservices communication](Implement%20interservices%20communication.md)
The monolithic approach can provide performance advantages, because modules can call each other directly. By contrast, microservices typically require a network call to communicate with each other.

---

Another challenge with microservices is that you need to manage transactions across different microservices (also referred to as a _distributed transaction_). Business operations that update multiple business entities are fairly common, and they are usually applied in an [atomic](https://wikipedia.org/wiki/Atomicity_(database_systems)) manner in which either all operations are applied or everything fails. When you wrap multiple operations in a single database transaction, you ensure atomicity.

In a microservices‑based application, business operations might be spread across different microservices, so you need to update multiple databases that different services own. If there is a failure, it's non-trivial to track the failure or success of calls to the different microservices and roll back state. **The worst case scenario can result in inconsistent data between services** when the rollback of state due to failures didn't happen correctly. For information about the various methodologies to set up distributed transactions between services, see the third document in this series, [Interservice communication in a microservices setup](https://cloud.google.com/architecture/microservices-architecture-interservice-communication).

---

The division of services in a microservice architecture allows the application to perform more functions at the same time. However, because the modules run as isolated services, latency is introduced in the response time due to network calls between services.
### References
Google. Introduction to microservices
  https://cloud.google.com/architecture/microservices-architecture-introduction

### See also
[Drawbacks of microservices](Drawbacks%20of%20microservices.md)
The microservices architecture pattern significantly changes the relationship between the application and the database. Instead of sharing a single database with other services, we recommend that each service have its own database that best fits its requirements. When you have one database for each service, you ensure loose coupling between services because all requests for data go through the service API and not through the shared database directly. The following diagram shows a microservices architecture pattern in which each service has its own database:

![microservices-and-databases](microservices-and-databases.svg)


**Figure:** Each service in a microservice architecture has its own database.

In figure, the order service in the ecommerce application functions well using a document-oriented database that has real-time search capabilities. The payment and delivery services rely on the strong [atomicity, consistency, isolation, durability (ACID)](https://wikipedia.org/wiki/ACID) guarantees of a relational database.

### References

Google. Introduction to microservices
  https://cloud.google.com/architecture/microservices-architecture-introduction
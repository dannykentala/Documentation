When you understand the problem space, you understand the natural boundaries in the domain that provide the right level of isolation. We recommend that you create larger services instead of smaller services until you thoroughly understand the domain.

Defining service boundaries is an iterative process. Because this process is a non-trivial amount of work, you need to continuously evaluate the cost of decoupling against the benefits that you get. Following are factors to help you evaluate how you approach decoupling a monolith:

- Avoid refactoring everything all at once. To prioritize service decoupling, evaluate cost versus benefits.
- Services in a microservice architecture are organized around business concerns, and not technical concerns.
### References

Google. Refactoring a monolith into microservices
  https://cloud.google.com/architecture/microservices-architecture-refactoring-monoliths
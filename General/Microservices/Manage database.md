### Reference tables
In monolithic applications, it's common for modules to access required data from a different module through an SQL join to the other module's table. The following diagram uses the previous ecommerce application example to show this SQL join access process:

![A module uses an SQL join to access data from another module.](https://cloud.google.com/static/architecture/images/microservices-architecture-refactoring-monoliths-sql-join-process.svg)

**Figure:**. A module joins data to a different module's table.

In figure, to get product information, an order module uses a `product_id` foreign key to join an order to the products table.

However, if you deconstruct modules as individual services, we recommend that you don't have the order service directly call the product service's database to run a join operation. The following sections describe options that you can consider to segregate the database objects.
### References
https://cloud.google.com/architecture/microservices-architecture-refactoring-monoliths#manage_a_monolithic_database
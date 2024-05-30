## What is the difference between field, variable, attribute, and property?
Variable can be local, field, or constant (although this is technically wrong). It's vague like attribute. Also, you should know that some people like to call final non-static (local or instance) variables

"Values". This probably comes from emerging JVM FP languages like Scala.

"Field" is generally a private variable on an instance class. It does not mean there is a getter and a setter.

"Attribute" is a vague term. It can easily be confused with XML or Java Naming API. Try to avoid using that term.

"Property" is the getter and setter combination.

## References
https://stackoverflow.com/questions/10115588/what-is-the-difference-between-field-variable-attribute-and-property-in-java

https://www.dotnetodyssey.com/2017/05/31/difference-fields-properties-c/
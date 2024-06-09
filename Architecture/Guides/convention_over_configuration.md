# Convention over configuration
Do you remember what your teacher said about standars when building a system in operative
system class?

This is what he was talking about, following conventions and standars. We can also 
call it an "interface" of names, I mean asume that everything have the same contrac 

------

The goal is to **decrease the number of decisions the programmer has to make** and **eliminate the complexity of having to configure all** and each of the areas of application development. The immediate result is that you can create many more things in less time.

-----

Convention-based programming is a simple idea. Build your applications to 'assume' values 
in their infrastructure as following a convention. For example, my log file output directory 
is always '/mapped-drive/logs/websites/site.name/', my database connection string is always 
mapped to the name named instance, no matter in which environment its running. My cache 
server URI is always mapped to an internal reference of 'cacheserver: 6379'.

## Importance
Because of the inherent neediness of source code, I tend to look for as many possible ways to only write that code which is critical to my success, which means I go out of my way to avoid writing boilerplate code.

  >> boilerplate code or just boilerplate are sections of code that have to be included in many places with little or no alteration. When using languages that are considered verbose, the programmer must write a lot of code to accomplish only minor functionality. Such code is called boilerplate.

## Benefits

* Promotes uniformity. Developers working on different projects but using the same framework can quickly grasp how different systems work since the same naming conventions are promoted throughout the framework. This helps in maintaining a ubiquitous language3 for the development team.

## References
https://freedium.cfd/https://medium.com/it-dead-inside/avoiding-the-configuration-spiderweb-a05261323752

Facilethings. (2024). Convention Over Configuration
  https://facilethings.com/blog/en/convention-over-configuration

https://stasyuk.net/conventions-over-the-configuration-programming-pattern/

## Also check
[What is Scaffolding?](/Architecture/Guides/importance_of_scaffolding.md)
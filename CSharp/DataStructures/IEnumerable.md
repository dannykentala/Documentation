## What is IEnumerable in C#

#### Concept
It's ... something... that you can loop over. That might be a `List` or an `Array` 
or (almost) anything else that supports a `foreach` loop. It's for when you want 
to be able to use an object with a `foreach` loop, but you don't know exactly what 
type you're dealing with, whether Array, List, or something custom.

#### Use case


So that's the first advantage there: if your methods accept an `IEnumerable` rather 
than an array or list they become more powerful because you can pass more different 
kinds of objects to them.

Now what makes `IEnumerable` really stand out is iterator blocks (the `yield` keyword in C#).
Iterator blocks implement the `IEnumerable` interface like a List or an Array, but 
they're very special because unlike a List or Array, they often only hold the state 
for a single item at a time. So if you want to loop over the lines in a very large file,
for example, you can write an iterator block to handle the file input. Then you'll never 
have more than one line of the file in memory at a time, and if you finish the 
loop earlier (perhaps it was a search and you found what you needed) you might not need 
to read the whole file. Or if you're reading the results from a large SQL query you can 
limit your memory use to a single record.

Another feature is that this evaluation is lazy, so if you're doing complicated work 
to evaluate the enumerable as you read from it, that work doesn't happen until it's 
asked for. This is extra beneficial, because often (say, for searches again) you'll 
find you might not need to do the work at all.
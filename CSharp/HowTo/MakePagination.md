## How to make pagination in .NET

### Offset Pagination
```cs
var data = _context.Doctors
  .Skip((pageNumber - 1) * pageSize)
  .Take(pageSize)
  .ToList();

// With relationship of models
var data = _context.Doctors.Include(d => d.Specialty)
  .Skip((pageNumber -1) * pageSize)
  .Take(pageSize)
  .ToList();
```

## See also
[How to make a response wrapper](/CSharp/HowTo/MakeResponseWrapper.md)

## References
Codewithmukesh. (2020). How to Implement Pagination in ASP.NET Core WebAPI? - Ultimate Guide
  https://codewithmukesh.com/blog/pagination-in-aspnet-core-webapi/

https://www.c-sharpcorner.com/article/pagination-in-a-net-with-ef-core/

https://learn.microsoft.com/en-us/ef/core/querying/pagination
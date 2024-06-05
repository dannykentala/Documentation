## How to connect to databases with EF Core
To connect to databases do

### Models
```cs
public class Book
{
  public int Id { get; set; }
  public string Title { get; set; }
  public int AuthorId { get; set; }

  // Remember to give a direct reference of the foreign key
  [ForeignKey("AuthorId")]
  public Author Author { get; set; }
}

public class Author
{
  public int AuthorId { get; set; }
  public string Name { get; set; }
  public List<Book> Books { get; set; }
}
```

### Query expression
```cs
using (var context = new BookStore())
{
  var authors = context.Authors
    .Include(a => a.Books)
    .ToList();
}
```

## References
Microsoft. (2020). Loading Related Entities
  https://learn.microsoft.com/en-us/ef/ef6/querying/related-data

https://entityframework.net/include
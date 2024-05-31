## Example code of repository implementation in Web API

### Make repository interface
```cs
namespace "$project_name".Services."$repository_name"
{
  // We have to create the following methods
  public interface "$repository_interface_name": IHttpGet<"$model_name""$model_name""$model_name">, IHttpPost<"$model_name">, IHttpPut<"$model_name">, IHttpDelete<"$model_name">
  { }
}
```

### Make repository primary class
```cs
namespace "$project_name".Services."$repository_name"
{
  public class "$repository_name": "$repository_interface_name"
  {
    private readonly BaseContext _context;

    public "$repository_name"(BaseContext context)
    {
      _context = context;
    }

    // call a class to make the job 
    public IEnumerable<Book> GetAll()
    {
      BooksGet booksGet = new BooksGet(_context);
      return booksGet.GetAll();
    }
  }
}
```

## Unit of work - HTTP Methods
```cs
namespace "$project_name".Services."$repository_name".BooksMethods
{
  public class BooksGet
  {
    private readonly BaseContext _context;
    public BooksGet(BaseContext context){
      _context = context;
    }
        
    public IEnumerable<Book> GetAll()
    {
      return _context.Books.ToList();
    }
  } 
}
```
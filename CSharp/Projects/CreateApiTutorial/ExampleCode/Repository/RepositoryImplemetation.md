## Example code of repository implementation in Web API

### Make repository interface
```cs
// Reference of namespace
namespace PrismaBooks.Services.BooksRepository
{
  // Interface name
  public interface IBooksRepository
  {
    // Model
    IEnumerable<Book> GetAll();
  }
}
```

### Make repository primary class
```cs
namespace PrismaBooks.Services.BooksRepository
{
  public class BooksRepository: IBooksRepository
  {
    private readonly BaseContext _context;

    public BooksRepository(BaseContext context)
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
namespace PrismaBooks.Services.BooksRepository.BooksMethods
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
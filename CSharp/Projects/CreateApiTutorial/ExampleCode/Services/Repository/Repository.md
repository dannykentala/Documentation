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
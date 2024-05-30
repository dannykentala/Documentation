## Controller example API
```cs
namespace PrismaBooks.Controllers
{
  public class BooksController: ControllerBase
  {
    private readonly IBooksRepository _bookRepository;
    public BooksController(IBooksRepository bookRepository)
    {
      _bookRepository = bookRepository;
    }

    [HttpGet]
    [Route("api/books")]
    public IEnumerable<Book> GetCupones()
    {
        return _bookRepository.GetAll();
    }
  }
}
```
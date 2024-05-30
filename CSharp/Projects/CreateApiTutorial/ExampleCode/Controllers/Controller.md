## get controller structure API
```cs
namespace "$project_name".Controllers
{
  public class $controller_name: ControllerBase
  {
    private readonly IBooksRepository _bookRepository;
    public $controller_name(IBooksRepository bookRepository)
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
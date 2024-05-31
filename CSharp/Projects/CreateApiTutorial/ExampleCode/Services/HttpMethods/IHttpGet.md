```cs
namespace "$project_name".Services.HttpMethods
{
  public interface IHttpGet<T>
  {
    // IEnumerable<T>
    "$http_getAll_return" GetAll();

    // T
    "$http_getById_return" GetById(int id); 
  }
}
```
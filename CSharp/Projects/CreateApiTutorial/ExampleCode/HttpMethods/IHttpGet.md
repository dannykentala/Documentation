```cs
namespace "$project_name".Services.HttpMethods
{
  public interface IHttpGet<T>
  {
    "$http_getAll_return" GetAll(); 
    "$http_getById_return" GetById(int id); 
  }
}
```
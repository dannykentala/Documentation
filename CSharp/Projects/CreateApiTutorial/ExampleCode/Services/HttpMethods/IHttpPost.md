```cs
namespace "$project_name".Services.HttpMethods
{
  public interface IHttpPost<T>
  {
    T Create(T model); 
  }
}
```
## Example code of HTTP implementation in Web API
Creting a dynamic type injection

```cs
using "$project_name".Models;

namespace "$project_name".Services.HttpMethods
{
  public interface IHttp"$http_type"<T>
  {
    T "$method_name"();
  }
}
```
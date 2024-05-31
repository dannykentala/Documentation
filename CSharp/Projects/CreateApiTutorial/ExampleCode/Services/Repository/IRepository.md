```cs
namespace "$project_name".Services."$repository_name"
{
  // We have to create the following methods
  public interface "$repository_interface_name": IHttpGet<"$model_name">, 
    IHttpPost<"$model_name">, 
    IHttpPut<"$model_name">, 
    IHttpDelete<"$model_name">
  { }
}
```
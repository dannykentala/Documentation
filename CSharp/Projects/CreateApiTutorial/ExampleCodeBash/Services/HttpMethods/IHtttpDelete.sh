cat > ${modelName}UpdateController.cs << EOM
namespace "$project_name".Services.HttpMethods
{
  public interface IHttpDelete<T>
  {
    // int
    "$http_delete_return_local" Delete("$http_delete_param_type_local" "$http_delete_param_local"); 
  }
}
EOM
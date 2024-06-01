cat > ${modelName}UpdateController.cs << EOM
namespace "$project_name".Services.HttpMethods
{
  public interface IHttpPut<T>
  {
    // T
    "$http_put_return_local" Update("$http_put_param_type_local" "$http_put_param_local");
  }
}
EOM
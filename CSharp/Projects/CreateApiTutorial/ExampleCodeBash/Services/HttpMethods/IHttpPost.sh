cat > ${modelName}UpdateController.cs << EOM
namespace "$project_name".Services.HttpMethods
{
  public interface IHttpPost<T>
  {
    "$http_post_return_local" Create("$http_post_param_type_local" "$http_post_param_local"); 
  }
}
EOM
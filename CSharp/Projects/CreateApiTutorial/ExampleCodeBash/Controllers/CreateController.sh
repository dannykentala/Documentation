cat > ${modelName}UpdateController.cs << EOM
namespace "\$project_name".Controllers
{
  [Route("\$api_endpoint_name")]
  [ApiController]
  public class "\$create_controller_name": ControllerBase
  {
    private readonly "\$repository_interface_name" _"\$repository_filed";
    public "\$create_controller_name"("\$repository_interface_name" "\$repository_filed")
    {
      _"\$repository_filed" = "\$repository_filed";
    }

    [HttpPost]
    public "\$http_post_return" Create([FromBody] "\$model_name" "\$model_name_argument")
    {
      return _"\$repository_filed".Create("\$model_name_argument");
    }
  }
}
EOM
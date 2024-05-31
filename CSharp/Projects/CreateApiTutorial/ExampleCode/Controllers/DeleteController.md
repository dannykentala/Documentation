```cs
namespace "$project_name".Controllers
{
  [Route("$api_endpoint_name")]
  [ApiController]
  public class "$delete_controller_name": ControllerBase
  {
    private readonly "$repository_interface_name" _"$repository_filed";
    public "$delete_controller_name"("$repository_interface_name" "$repository_filed")
    {
      _"$repository_filed" = "$repository_filed";
    }

    [HttpDelete("{Id}")]
    public "$http_delete_return" Delete(int Id)
    {
      return _"$repository_filed".Delete(Id);
    }
  }
}
```
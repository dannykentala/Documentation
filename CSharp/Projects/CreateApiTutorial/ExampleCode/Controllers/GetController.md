```cs
namespace "$project_name".Controllers
{
  [Route("$api_endpoint_name")]
  [ApiController]
  // Remember that in works in onion (this is level 1, repository is level 2), so
  // others classes, don't know about this one
  public class "$get_controller_name": ControllerBase
  {
    private readonly "$repository_interface_name" _"$repository_filed";
    public "$get_controller_name"("$repository_interface_name" "$repository_filed")
    {
      _"$repository_filed" = "$repository_filed";
    }

    [HttpGet]
    public "$http_getAll_return" getAll()
    {
      return _"$repository_filed".getAll();
    }

    [HttpGet("{Id}")]
    public "$http_getById_return" getById(int Id)
    {
      return _"$repository_filed".getById(Id);
    }
  }
}
```
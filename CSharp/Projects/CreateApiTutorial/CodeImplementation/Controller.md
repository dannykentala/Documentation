## Get controller structure API
This is the code strucutre.

Now you can just make `CTR + SHIFT + F` and replace in all files
```cs
namespace "$project_name".Controllers
{
  [Route("$api_endpoint_name")]
  [ApiController]
  public class "$controller_name": ControllerBase
  {
    private readonly "$repository_interface_name" _"$repository_filed";
    public "$controller_name"("$repository_interface_name" "$repository_filed")
    {
      _"$repository_filed" = "$repository_filed";
    }

    ["$htpp_method"]
    public "$return_type" "$method_name"()
    {
      return _"$repository_filed"."$repository_method";
    }
  }
}
```

## Example code
You can check controllers implementation examples in this folder

[Controllers implementation](/CSharp/Projects/CreateApiTutorial/ExampleCode/Controllers/)
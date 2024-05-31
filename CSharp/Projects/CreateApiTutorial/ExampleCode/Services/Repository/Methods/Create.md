```cs
namespace "$project_name".Services."$repository_name".Methods
{
  public class "$model_name"sCreate: IHttpPost<"$model_name">
  {
    private readonly "$db_context_name" _"$db_context_field";
    public "$model_name"sCreate("$db_context_name" "$db_context_field"){
      _"$db_context_field" = "$db_context_field";
    }

    public "$http_post_return" Create("$model_name" "$model_name_argument")
    {
      _context."$model_name"s.Add("$model_name_argument");
      _context.SaveChanges();
      return  "$model_name_argument";
    }
  } 
}
```
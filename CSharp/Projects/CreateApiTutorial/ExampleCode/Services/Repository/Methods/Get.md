```cs
namespace "$project_name".Services."$repository_name".Methods
{
  public class "$model_name"sGet: IHttpGet<"$model_name">
  {
    private readonly "$db_context_name" _"$db_context_field";
    public "$model_name"sGet("$db_context_name" "$db_context_field"){
      _"$db_context_field" = "$db_context_field";
    }
        
    public "$http_getAll_return" GetAll()
    {
      return _"$db_context_field"."$model_name"s.ToList();
    }

    public "$http_getById_return" GetById(int id)
    {
      return _"$db_context_field"."$model_name"s.Find(id);
    }
  } 
}
```
cat > ${modelName}UpdateController.cs << EOM
namespace "\$project_name".Services."\$repository_name".Methods
{
  public class "\$model_name"sUpdate: IHttpPut<"\$model_name">
  {
    private readonly "\$db_context_name" _"\$db_context_field";
    public "\$model_name"sUpdate("\$db_context_name" "\$db_context_field"){
      _"\$db_context_field" = "\$db_context_field";
    }

    public "\$http_put_return" Update("\$model_name" "\$model_name_argument")
    {
      _context.Entry("\$model_name_argument").State = EntityState.Modified;
      _context.SaveChanges();
      return "\$model_name_argument";
    }
  } 
}
EOM
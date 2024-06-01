cat > ${modelName}UpdateController.cs << EOM
namespace "\$project_name".Services."\$repository_name".Methods
{
  public class "\$model_name"sDelete: IHttpDelete<"\$model_name">
  {
    private readonly "\$db_context_name" _"\$db_context_field";
    public "\$model_name"sDelete("\$db_context_name" "\$db_context_field"){
      _"\$db_context_field" = "\$db_context_field";
    }

    public "\$http_delete_return" Delete(int id)
    {
      var dataEntry = _context."\$model_name"s.Find(id);
      _context."\$model_name"s.Remove(dataEntry);
      _context.SaveChanges();
      return dataEntry.Id;
    }
  } 
}
EOM
cat > ${modelName}UpdateController.cs << EOM
namespace "\$project_name".Data
{
  public class "\$db_context_name": DbContext
  {
    public "\$db_context_name"(DbContextOptions<"\$db_context_name"> options): base(options)
    { }

    // Remember that model is singular, and table is plural
    // DbSet<Model> SqlTable
    public DbSet<"\$model_name"> "\$model_name"s {get; set;}
  }
}
EOM
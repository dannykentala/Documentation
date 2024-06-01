cat > ${modelName}UpdateController.cs << EOM
namespace "\$project_name".Services."\$repository_name"
{
  public class "\$repository_name": "\$repository_interface_name"
  {
    private readonly BaseContext _context;

    public "\$repository_name"(BaseContext context)
    {
      _context = context;
    }

    public "\$http_getAll_return" GetAll()
    {
      BooksGet "\$model_name"sGet = new BooksGet(_context);
      return "\$model_name"sGet.GetAll();
    }

    public "\$http_getById_return" GetById(int id)
    {
      BooksGet "\$model_name"sGet = new BooksGet(_context);
      return "\$model_name"Get.GetById(id);
    }

    public "\$http_post_return" Create("\$model_name" "\$model_name_argument")
    {
      BooksCreate "\$model_name"sCreate = new BooksCreate(_context);
      return "\$model_name"Create.Create("\$model_name_argument");
    }

    public "\$http_put_return" Update("\$model_name" "\$model_name_argument")
    {
      BooksUpdate "\$model_name"sUpdate  = new(_context);
      return "\$model_name"Update.Update("\$model_name_argument");
    }

    public "\$http_delete_return" Delete(int id)
    {
      BooksDelete "\$model_name"sDelete = new(_context);
      return "\$model_name"Delete.Delete(id);
    } 
  }
}
EOM
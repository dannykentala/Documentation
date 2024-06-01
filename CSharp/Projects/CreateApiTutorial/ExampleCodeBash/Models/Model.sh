cat > ${modelName}UpdateController.cs << EOM
namespace "\$project_name".Models
{
  public class "\$model_name"
  {
    // A good part of models have ID
    public int Id {get; set;}
    public "\$data_type" "\$field_name" {get; set;}
  }
}
EOM
## DbContext implementation code
```cs
using Microsoft.EntityFrameworkCore;
using "$name_space".Models;

namespace "$name_space".Data
{
  public class "$db_context_name": DbContext
  {
    public "$db_context_name"(DbContextOptions<"$db_context_name"> options): base(options)
    { }

    public DbSet<"$model_name"> "$sql_table_name" {get; set;}
  }
}
```
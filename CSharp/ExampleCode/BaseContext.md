## DbContext implementation example code
```cs
using Microsoft.EntityFrameworkCore;
using PrismaBooks.Models;

namespace PrismaBooks.Data
{
  public class BaseContext: DbContext
  {
    public BaseContext(DbContextOptions<BaseContext> options): base(options)
    { }

    public DbSet<Book> Books {get; set;}
  }
}
```
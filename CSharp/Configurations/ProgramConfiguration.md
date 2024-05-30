## Configuration of Program.cs example

### MySql
```cs
// BaseContext: Intance of DbContext
builder.Services.AddDbContext<BaseContext> ( options => 
  options.UseMySql
  (
    // MySqlConnection: Alias use in appsettings.json to link mysql database
    builder.Configuration.GetConnectionString("MySqlConnection"),

    // 8.0.20-mysql: Version of Pomelo SQL
    Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.20-mysql")
  )
);
```

### Repostory connection
```cs
// Inyection of CuponRepository in Controller
builder.Services.AddScoped<ICuponRepository, CuponRepository>();
```
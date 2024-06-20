## Install libraries
[JwtBearer](JwtBearer.md)

## Models

#### JwtOptions
```cs
public class JwtOptions
{
  public string Key {get; set;}
  public string Audience {get; set;}
  public string Issuer {get; set;}
  public int ExpirationHrs {get; set;}
}
```
#### LoginDTO
```cs
public class LoginDTO
{
  [Required(ErrorMessage = "Username is required")]
  public string Username {get; set;}

  [Required(ErrorMessage = "Password is required")]
  public string Password {get; set;}
}
```

## Make token manager
```cs
public class JwtAuthManager
{
  private readonly IConfiguration _configuration;
  private readonly JwtOptions _jwtOptions;

  public JwtAuthManager(IConfiguration configuration)
  {
    _configuration = configuration.GetSection(nameof(JwtOptions));
    
    // int.TryParse(_configuration["ExpirationHrs"], out int expirationTime);

    _jwtOptions = new JwtOptions
    {
      Key = _configuration["Key"],
      Issuer = _configuration["Issuer"],
      Audience = _configuration["Audience"],
      ExpirationHrs =  int.TryParse(_configuration["ExpirationHrs"], out int expirationTime) ? expirationTime: 1,
    };
  }

  /*
    ## Subject 
    We recive the claims outside of manager, because we want to allow user to pass it directly from auth system
  */

  public string GenerateToken(Claim[] claimsAuth)
  {
    var key = Encoding.ASCII.GetBytes(_jwtOptions.Key); // Codificación de la clave secreta en bytes

    // Descripción del token JWT con los claims (reclamaciones) del usuario
    var tokenDescriptor = new SecurityTokenDescriptor
    {
      Subject = new ClaimsIdentity(claimsAuth),
      Expires = DateTime.UtcNow.AddHours(_jwtOptions.ExpirationHrs),

      // Don't forget to add Issuer and Audience
      Issuer = _jwtOptions.Issuer,
      Audience = _jwtOptions.Audience,

      // Sign token with secret key
      SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature) 
    };

    var tokenHandler = new JwtSecurityTokenHandler();
    var token = tokenHandler.CreateToken(tokenDescriptor);
    return tokenHandler.WriteToken(token); // Parse token to string
  }
}
```

## Controller 
Example of controller integration
```cs
[Route("api/auth")]
[ApiController]
public class AuthController: ControllerBase
{
  private readonly JwtAuthManager _jwtAuthManager;
  public AuthController (IConfiguration configuration)
  {
    _jwtAuthManager = new JwtAuthManager(configuration);
  }

  [HttpPost]
  public string Login ([FromBody] LoginDTO login)
  {
    int userId = 2;
    var claims = new Claim[]
    {
      new Claim(ClaimTypes.NameIdentifier, userId.ToString()),
      new Claim(ClaimTypes.Role, "Admin")
    };

    return _jwtAuthManager.GenerateToken(claims);
  }
}
```

## Setting up Program
```cs
builder.Services.AddAuthentication(options => 
{
  options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
  options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
  options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
})
  .AddJwtBearer(options =>
  {
    options.SaveToken = true;
    options.RequireHttpsMetadata = false;
    options.TokenValidationParameters = new TokenValidationParameters
    {
      ValidateIssuerSigningKey = true,
      ValidateIssuer = true,
      ValidateAudience = true,
      ValidateLifetime = true,
      ValidIssuer = builder.Configuration["JwtOptions:Issuer"],
      ValidAudience = builder.Configuration["JwtOptions:Audience"],
      IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["JwtOptions:Key"])),

      // Remove the token inmediatly without giving an aditional expiration range
      ClockSkew = TimeSpan.Zero
    };
  });
```

#### Middleware

```cs
// Authentication & Authorization
app.UseAuthentication();
app.UseAuthorization();
```
## Setting up appsettings

Example data
```json
"JwtOptions": {
    "Key": "hhDy2U2upL3ko4GFfzInjQCFnX2h8I7vgdQ34ROy7Tyj8adroCe5d8ahUg0dMeT",
    "Issuer": "http://localhost:5014",
    "Audience": "http://localhost:5014",
    
    // This can be null
    "ExpirationHrs": 2
  }
```

## References

Medium. (2024).Integrating JWT to .NET 8
  https://medium.com/@amund.fremming/integrating-jwt-to-net-8-925c4f60695e


C-sharpcorner. (2023). JWT Authentication And Authorization In .NET 6.0 With Identity Framework
  https://www.c-sharpcorner.com/article/jwt-authentication-and-authorization-in-net-6-0-with-identity-framework/

Microsoft. (2017). JWT Validation and Authorization in ASP.NET Core
  https://devblogs.microsoft.com/dotnet/jwt-validation-and-authorization-in-asp-net-core/

https://jasonwatmore.com/post/2021/12/14/net-6-jwt-authentication-tutorial-with-example-api

https://www.infoworld.com/article/3669188/how-to-implement-jwt-authentication-in-aspnet-core.html

https://www.c-sharpcorner.com/article/implement-jwt-in-net-core-api/

https://learn.microsoft.com/en-us/aspnet/core/security/authentication/jwt-authn?view=aspnetcore-8.0&tabs=linux
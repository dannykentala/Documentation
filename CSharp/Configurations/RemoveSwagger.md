## Remove swagger configuration Web API
```cs
// Program.cs
//---- Remove settings ----//
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

//---- Remove middleware ----//
// Configure the HTTP request pipeline
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
```
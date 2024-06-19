## Tutorial

#### Create a class library
```bash
dotnet new classlib -o StringLibrary
```

#### Make your code

#### Build the library
```bash
dotnet build
```

#### Create your project
```bash
dotnet new <project_type> -o <project_name>
```

See [Web API template](Web%20API%20template.md)
#### Make reference in your project
```bash
dotnet add reference ShowCase/ShowCase.csproj
```

#### Use the library

#### Run your app
```
dotnet run --project ShowCase/ShowCase.csproj
```

## References

Microsoft. (2023). Tutorial: Create a .NET class library using Visual Studio Code
  https://learn.microsoft.com/en-us/dotnet/core/tutorials/library-with-visual-studio-code?pivots=dotnet-8-0

Stackoverflow. (2017). Add a package with a local package file in dotnet
  https://stackoverflow.com/questions/43400069/add-a-package-with-a-local-package-file-in-dotnet

Atomicobject. (2021). Creating and Using a Local NuGet Package 
  https://spin.atomicobject.com/local-nuget-package/

others

https://www.c-sharpcorner.com/article/creating-C-Sharp-class-library-dll-using-visual-studio-net/

https://learn.microsoft.com/en-us/dotnet/core/tutorials/library-with-visual-studio?pivots=dotnet-8-0

https://www.c-sharpcorner.com/article/building-a-net-core-class-library/

https://devblogs.microsoft.com/visualstudio/creating-and-packaging-net-standard-library/

https://wellsb.com/csharp/learn/create-csharp-class-library-dll/

https://wellsb.com/csharp/beginners/csharp-constructor-overload/

https://www.techieclues.com/articles/creating-and-using-net-class-library-in-csharp-using-visual-studio

https://dev.to/bradwellsb/create-a-c-class-library-dll-3cbb

https://www.c-sharpcorner.com/uploadfile/61b832/creating-class-library-in-visual-C-Sharp/

## Also see

[Build a package](Build%20a%20package.md)
[Publish console App](Publish%20console%20App.md)
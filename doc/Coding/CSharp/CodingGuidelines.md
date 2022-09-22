# Coding Guidelines
In this chapter we will have a look at the official [c# coding guidelines](https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions) from Microsoft.
## Naming conventions
| Object | Visibility | Naming |
|--|--|--|
|classes| any |PascalCase|
|interfaces| any |`I`PascalCase|
|Methods / Functions| any |PascalCase|
|properties| any |PascalCase|
|variables| `public`, `protected` |PascalCase|
|variables| `private`, `internal` |`_`camelcase|
|variables| `private static`, `internal static` |`s_`camelcase|
|parameters| - |camelcase|
## Commenting conventions
- Comment on a separate line than code
- begin with an uppercase letter
- end with a full stop (.)
- one space between `//` and the text
- All public members must have a comment (`///`)
### Strings
- Use string interpolation `$"{var1}, {var2}"`
### dataTypes
- use `var` if the type is obvious:
```csharp
var var1 = "This is clearly a string.";
var var1 = new List<...>();
//alternative:
List<...>() var1 = new();
```
- write the type if it is not obvious e.g. return value of a method
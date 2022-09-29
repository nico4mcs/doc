# Coding Guidelines

In this chapter we will have a look at the official [c# coding guidelines](https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions) from Microsoft.

## Naming Conventions

| Object              | Visibility                          | Naming        |
|---------------------|-------------------------------------|---------------|
| classes             | any                                 | PascalCase    |
| interfaces          | any                                 | `I`PascalCase |
| methods / functions | any                                 | PascalCase    |
| properties          | any                                 | PascalCase    |
| variables           | `public`, `protected`               | PascalCase    |
| variables           | `private`, `internal`               | `_`camelCase  |
| variables           | `private static`, `internal static` | `s_`camelCase |
| parameters          | -                                   | camelCase     |

## Commenting Conventions

- Comment must be on a separate line instead of a line with code.
- Begin with an uppercase letter.
- End with a full stop.
- One space between `//` and the text.
- All public members must have an XML comment (`///`).
- 
## Strings

- Use string interpolation `$"{var1}, {var2}"` instead of using plus `var1 + ", " + var2`
- 
## Data Types

- Use `var` if the type is obvious:
```csharp
var var1 = "This is clearly a string.";
var var2 = new List<...>();
// alternative:
List<...>() var1 = new();
```
- Write the type if it is not obvious, e.g. return value of a method even if the method name includes the data type:
```csharp
string var3 = var2.toString();
```

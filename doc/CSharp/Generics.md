# Generics
With generics you can make functions or classes with a variable type. This is mostly used with collections, e.g. combining two collections.
## Functions
The following function combines two items to an array. The datatypes of the items and the array are variable.
```csharp
public static T[] Combine<T>(T a, T b)
{
    return new T[] { a, b };
}
```
The type `T` is variable, this means you can give any value as parameter and get an array of the same type.
## Classes
You can also use generics in classes, e.g:
```csharp
public class MyClass<T>
{
    public T Value;
}
```

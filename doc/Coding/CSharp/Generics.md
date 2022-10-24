# Generics
With generics, you can make functions or classes with a variable type. This is mostly used with collections, e.g. combining two collections.
## Functions
The following function combines two items to an array. The data types of the items and the array are variable.
```csharp
public static T[] Combine<T>(T a, T b)
{
    return new T[] { a, b };
}
```
The type `T` determines the data type of the properties. This means you can give variables of any type as parameters and get an array of the same type.
## Classes
You can also use generics in classes or constructors, e.g:
```csharp
public class MyClass<T>
{
    public T Value;

	public MyClass<T>(T value1)
	{
		Value = value1;
	}
}
```

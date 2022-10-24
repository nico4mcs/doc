# Operators

There are many different operators besides the basic ones:
- \+
- \-
- \*
- /
- %

Some are just rarely used on the other hand there are some very powerfull functions.

## Mathematical operators
|Operator|Function|
|-|-|
|+| addition|


Besides the basic operators (+, -, %...), there are more complex ones:
- Ternary conditional
- Null Coalescing
- Pattern matching

## Ternary Conditional

With the ternary conditional you can make the following structure a lot shorter:

```csharp
if(myVar == myOtherVar)
{
    result = 1
}
else
{
    result = 2
}
```

If you use the ternary conditional, it looks like this:

```csharp
result = myVar == myOtherVar ? 1 : 2
```

If you want, you can also put it on multiple lines:

```csharp
result = 
    myVar == myOtherVar 
        ? 1 
	: 2
```

## Null Coalescing

The null coalescing is a simplified version of the [ternary Conditional](#-Ternary-Conditional). It replaces code like this:

```csharp
result = myVar != null ? myVar : "null"
```

This is the simplified version:

```csharp
result = myVar ?? "null"
```

A rather new version of the null-coalescing operator can simplify the following code. if `myVarm` is `null` it will get the Value `"null"`:

```csharp
myVar = myVar ?? "null"
```

to

```csharp
myVar ??= "null"
```

## Pattern Matching

Pattern matching is similar to the [ternary conditional](#-Ternary-conditional) but in this time it replaces a switch statement like the following:

```csharp
switch(myVar){
    case 1:
        result = "one";
	break;
    case 2:
	result = "two";
	break;
    case 3:
	result = "three";
	break;
    default:
	result = "empty"
	break;
}
```

With pattern matching it looks like this:

```csharp
result = myVar switch {
    1 => "one",
    2 => "two",
    3 => "three",
    _ => "empty"
}
```

Another function is that you can use comparison operators

```csharp
result = myVar switch {
    < 1 => "less",
    1 => "one",
    2 => "two",
    3 => "three",
    > 3 => "more"
}
```

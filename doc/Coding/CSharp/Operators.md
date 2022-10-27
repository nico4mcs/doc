# Operators

There are many different operators besides the basic ones:

- \+
- \-
- \*
- /
- %

Some are just not that useful on the other hand there are some very powerful functions.

## Mathematical operators

| Operator | Function                                | Usage                  |
| -------- | --------------------------------------- | ---------------------- |
| +        | addition                                | `1 + 2 = 3`            |
| -        | subtraction                             | `3 - 2 = 1`            |
| *        | multiplication                          | `3 * 2 = 6`            |
| /        | division                                | `6 / 2 = 3, 5 / 2 = 2` |
| %        | remainder                               | `5 % 3 = 2`            |
| x++      | increases x by 1 after executing line   |                        |
| ++x      | increases x by 1 before executing line  |                        |
| --       | same as before                          |                        |
| op=      | `x op= y` is equivalent to `x = x op y` | `x += 1` = `x = x + 1` |
| d        | converts to double                      | `5d = (double)5`       |
| f        | converts to float                       | `5f = (float)5`        |
| m        | converts to decimal                     | `5m = (decimal)5`      |

## Boolean operators

| Operator | Function                                                             | usage / true                   |
| -------- | -------------------------------------------------------------------- | ------------------------------ |
| ==       | equals                                                               | `1 == 1`                       |
| !=       | not equal                                                            | `1 != 2`                       |
| <        | less                                                                 | `1 < 2`                        |
| <=       | less or equal                                                        | `1 <= 2`                       |
| >        | greater                                                              | `1 > 2`                        |
| >=       | greater or equal                                                     | `1 >= 2`                       |
| is       | is object of given type                                              | `5 is int`                     |
| &        | and                                                                  | `true && true`                 |
| \|       | or                                                                   | `true \| false` `true \| true` |
| &&       | conditional and, both sides are executed, even if the first is false | `func1() && func2()`           |
| \|\|     | conditional or, both sides are executed, even if the first is true   | `5 % 3 = 2`                    |
| !        | not                                                                  | `!false`                       |
| ^        | xor                                                                  | `true \| false`                |
| op=      | `x op= y` is equivalent to `x = x op y`                              | `x &= true` = `x = x & true`   |

## Bit operators

Bitwise operators convert integers or chars to bits and convert them:

```-
2 => 10
13 => 1101
```

| Operator          | Function                                | usage / true                 |
| ----------------- | --------------------------------------- | ---------------------------- |
| Boolean operators | &, \|, ^ work bitwise too.              | `110 & 1101 = 1011`          |
| ~                 | complement / not                        | `~1101 = 0010`               |
| <<                | Left-shift                              | `1101 << 4 = 11010000`       |
| uint >>           | Right-shift unsigned                    | `1101 >> 1 = 1110`           |
| int  >>           | Right-shift                             | `1101 >> 1 = 1110`           |
| &&                | conditional and,                        | `func1() && func2()`         |
| \|\|              | conditional or, both sides              | `5 % 3 = 2`                  |
| !                 | not                                     | `!false`                     |
| ^                 | xor                                     | `true \| false`              |
| op=               | `x op= y` is equivalent to `x = x op y` | `x &= true` = `x = x & true` |

## Type Operators

| Operator | Function                          | usage / true                   |
| -------- | --------------------------------- | ------------------------------ |
| is       | is object of given type           | `5 is int`                     |
| as       | converts object to the given type | `IEnumerable<T> a as IList<T>` |

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

The null coalescing is a simplified version of the [ternary Conditional](#ternary-conditional). It replaces code like this:

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

Pattern matching is similar to the [ternary conditional](#ternary-conditional) but in this time it replaces a switch statement like the following:

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

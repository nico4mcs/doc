# Operators

In this chapter you can find almost all the operators available in c#.

## Mathematical operators

| Operator | Function                                | Comment                |
| -------- | --------------------------------------- | ---------------------- |
| +        | Addition                                | `1 + 2 = 3`            |
| -        | Subtraction                             | `3 - 2 = 1`            |
| *        | Multiplication                          | `3 * 2 = 6`            |
| /        | Division                                | `6 / 2 = 3, 5 / 2 = 2` |
| %        | Remainder                               | `5 % 3 = 2`            |
| x++      | Increases x by 1 after executing line   |                        |
| ++x      | Increases x by 1 before executing line  |                        |
| x--      | Decreases x by 1 after executing line   |                        |
| --x      | Decreases x by 1 before executing line  |                        |
| op=      | `x op= y` is equivalent to `x = x op y` | `x += 1` = `x = x + 1` |
| d        | Converts to double                      | `5d = (double)5`       |
| f        | Converts to float                       | `5f = (float)5`        |
| m        | Converts to decimal                     | `5m = (decimal)5`      |

## Boolean operators

| Operator | Function                                                          | Comment                        |
| -------- | ----------------------------------------------------------------- | ------------------------------ |
| ==       | Equals                                                            | `1 == 1`                       |
| !=       | Not equal                                                         | `1 != 2`                       |
| <        | Less                                                              | `1 < 2`                        |
| <=       | Less or equal                                                     | `1 <= 2`                       |
| >        | Greater                                                           | `1 > 2`                        |
| >=       | Greater or equal                                                  | `1 >= 2`                       |
| is       | Is object of given type                                           | `5 is int`                     |
| &        | Logical and                                                       | `true & true`                  |
| \|       | Logical  or                                                       | `true \| false` `true \| true` |
| &&       | Conditional and, uses [lazy evaluation](#-Lazy-Evaluation)        | `func1() && func2()`           |
| \|\|     | Conditional or, uses [lazy evaluation](#-Lazy-Evaluation)         | `5 % 3 = 2`                    |
| !        | Not                                                               | `!false`                       |
| ^        | Xor                                                               | `true \| false`                |
| op=      | `x op= y` is equivalent to `x = x op y`                           | `x &= true` = `x = x & true`   |

### Lazy Evaluations

The difference between logical and conditional operators is the lazy evaluation. This means, that conditional operators always evaluate both sides.

```csharp
func1() & func2()
// If func1() is false, func2() won't be executed.
func1() && func2()
// Even if func1() is false, func2() will be executed.
```

## Bit operators

Bitwise operators handle integers, chars and more as bits:

$2_{10}$ => $10_2$

$13_{10}$ => $1101_2$

| Operator          | Function                                                                 | Comment                                                          |
| ----------------- | ------------------------------------------------------------------------ | ---------------------------------------------------------------- |
| Boolean operators | &, \|, ^ work bitwise too. ([boolean operators](#-boolean-operators))    | $110_2$ & $1100_2 = 0100_2$                                      |
| ~                 | Complement / not                                                         | ~ $1101_2 = 0010_2$                                               |
| <<                | Left-shift converts number to int if to small                            | $1101_2$ << $4_{10} = 11010000_2$                                |
| int >>>           | Right-shift unsigned, always uses $0$ to fill                            | $1101_2$ >>> $1_{10} = 0110_2$                                   |
| int  >>           | Right-shift uses $0/1$, depending if it is a positive or negative number | $1101_2$ >> $1_{10} = 1110_2$ <br> $0101_2$ >> $1_{10} = 0010_2$ |

## Type Operators

| Operator | Function                                                                                             | Comment                        |
| -------- | ---------------------------------------------------------------------------------------------------- | ------------------------------ |
| is       | Is object of given type? Returns a boolean                                                           | `5 is int`                     |
| as       | Converts object to another type, must be related (Eg. array => list)                                 | `IEnumerable<T> a as IList<T>` |
| (T)x     | Converts object to the given type, can use user-defined conversions (ToDo: user-defined conversions) | `(IList<T>) a`                 |

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

The null coalescing is a simplified version of a special case of the [ternary conditional](#ternary-conditional). It replaces code like this:

```csharp
result = myVar != null ? myVar : "null"
```

This is the simplified version:

```csharp
result = myVar ?? "null"
```

A rather new version of the null-coalescing operator can simplify code further, if the result and the variable on the right are the same. If `myVarm` is `null` it will get the Value `"null"`:

```csharp
myVar = myVar ?? "null"
```

to

```csharp
myVar ??= "null"
```

## Pattern Matching

Pattern matching is similar to the [ternary conditional](#ternary-conditional) but this time it replaces a switch statement like the following:

```csharp
switch(myVar)
{
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
result = myVar switch
{
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

# Inheritance and Interfaces

In this chapter we will have a look at the different kinds of inheritances and interfaces

## Normal Class

When a normal class inherits another class, it will have access to all properties, variables and methods which are protected or more visible.

```csharp
public class Animal
{
    protected void Eat()
    {
        // CodeToEat
    }
}

public class Dog : Animal
{
    public Dog()
    {
        Eat();
    }
}
```

You can also override methods of the base class using the `override` declaration. Only `virtual` or `override` methods can be overridden.

```csharp
public class Animal
{
    public virtual void Eat()
    {
        // CodeToEat
    }
}

public class Dog : Animal
{
    public override void Eat()
    {
        // AnotherCodeToEat
    }
}
```

## Interface

In an interface, you can define methods which the inheriting class has to implement. You cannot instantiate an object of an interface, since the methods and properties are missing. You don't have to write an access modifier, all properties and functions are `public`:

```csharp
public interface IAnimal
{
    double Size { get; set; }

    void Eat();
}

public class Dog : IAnimal
{
    public double Size { get; set; }

    public void Eat()
    {
        // CodeToEat
    }
}
```

## Abstract Class

In an abstract class, you can add methods and properties just as in a normal class. But you can also use the `abstract` keyword on these. Then, the inheriting class has to implement these using the `override` keyword. Like the interface you cannot instantiate from an abstract class:

```csharp
public abstract class Animal
{
    public abstract double Size {get; set;}

    public abstract void Eat();

    public void Run()
    {
        // CodeToRun
    }
}

public class Dog : Animal
{
    public override double Size {get; set;}

    public override void Eat()
    {
        // CodeToEat
    }
}
```

# Inheritance and Interfaces
In this File we will have a look at the different kinds of inheritance and Interfaces
## Normal Class
When a normal class inherits another class it will have access to all properties, variables and methods which are protected or more visible.
You can also override methods of the base class using the `override` declaration. Only `virtual` or `override` methods can be overridden.
```csharp
public class Animal
{
    protected void Eat()
    {
        //CodeToEat
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
## Interface
In an interface, you can define methods which the inheriting class has to implement:
```csharp
public interface IAnimal
{
    public double Size { get; set; }

    void Eat();
}

public class Dog : IAnimal
{
    public double Size { get; set; }

    public void Eat()
    {
        //codeToEat
    }
}
```
## Abstract Class
In an abstract class, you can add methods and properties just as in a normal class. But you can also use the `abstract` keyword on these. Then the inheriting class has to implement these using the `override` keyword:
```csharp
public abstract class Animal
{
    public abstract double Size {get; set;}

    public abstract void Eat();

    public void Run()
    {
        //codeToRun
    }
}

public class Dog : Animal
{
    public override double Size {get; set;}

    public override void Eat()
    {
        //codeToEat
    }
}
```
# MVVM

MVVM or **M**odel **V**iew **V**iew**M**odel is a software pattern that completely separates the view from the logic. To communicate between the UI (View) and the logic (Model), we use the so called ViewModel. 

![](./media/mvvm.svg)

## MVVM in C# #

Before starting coding you should create a folder structure. The best practice is the following:
```
📁Project
┣📁Model
┃┗📝Contact.cs
┣📁View
┃┣📝MainWindow.xaml
┃┗📝MainWindow.xaml.cs
┗📁ViewModel
 ┗📝MainWindowViewModel.cs
```
### Model

Let's first take a look at the model. In the model you put all the data and logic. E.g. a contact:
```csharp
public class Contact
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string PhoneNumber { get; set;}
    public string Email { get; set; }
}
```

### ViewModel

The ViewModel is used as a connection between the View and the Model. 

First, the ViewModel has to implement the `INotifyPropertyChanged` interface:
```csharp
internal class BaseViewModel : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler? PropertyChanged;
}
```
We also need a function to call the event.
```csharp
protected virtual void NotifyPropertyChanged([CallerMemberName] string? propertyName = null)
{
    PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
}
```
`[CallerMemberName]` means that it automatically gets the `propertyName` from the object it is called from. E.g. in the setter.

Now you can add public properties, which you want to include in the UI:
```csharp
private Contact _contact = new Contact();
public Factory FirstName 
{ 
    get => contact.FirstName;
    set 
    {
        contact.FirstName = value;
        NotifyPropertyChanged();
    } 
}
```
When you call `NotifyPropertyChanged()` inside the setter, you don't have to give any parameter. In this example it would be equal to `NotifyPropertyChanged(nameof(FirstName))`.

### View

Before we can use the properties in the View, we have to set the ViewModel as `DataContext`:
```csharp
public MainWindow()
{
	InitializeComponent();
	DataContext = new MainWindowViewModel();
}
```
The easiest way is, to add it in the constructor in the code behind.

Now you can use the properties in the XAML:
```csharp
<Label Content="{Binding FirstName}"/>
```
Or for an input field, you need to clarify the mode:
```csharp
<TextBox Text="{Binding FirstName, Mode=TwoWay}"/>
```

#### Mode

The mode can be one of the following 

| Name           | Function                                                                                |
|----------------|-----------------------------------------------------------------------------------------|
| OneWay         | Always gets the current values, but won't send changes back to the ViewModel.           |
| OneWayToSource | Only sends data to the ViewModel                                                        |
| OneTime        | Gets the current value when it's created but won't update after that.                   |
| TwoWay         | Constantly sends changes to the ViewModel and updates itself when the property changes. |
| Default        | Default `Mode`. Depends on the UI-Element.                                              |

### Command Binding

You can also bind commands to objects like a button. First we have to write the two functions `SaveExecute` and `SaveCanExecute`:

```csharp
private void SaveExecute(object? _)
{
	// I'm Executed when the Button is pressed
}

private bool SaveCanExecute(object? _)
{
	// I return a boolean, depending if the button can be pressed
}
```

For that you need to create a RelayCommand object wich uses the two methods:

```csharp
class MainWindowViewModel
{
	public ICommand SaveCommand;

	public MainWindowViewModel()
	{
		SaveCommand = new RelayCommand(SaveExecute, SaveCanExecute);
	}
}
```

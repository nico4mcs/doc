# MVVM
Mvvm or **M**odel **V**iew **V**iew**M**odel means, that we completely separate the view from the logic. To communicate between both, we use the so called ViewModel. 
![](./media/mvvm.svg)
## MVVM in c# #
Before starting coding you should create a folder structure, the best practice is the following:
```
📁Project
┣📁Model
┃┗📝Contact.cs
┣📁View
┃┗📝MainWindow.cs
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

First the ViewModel has to implement the `INotifyPropertyChanged`:
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
`[CallerMemberName]` means, that it automatically gets the `propertyName` from the object it is called. E.g. in the setter.

Now you can add public properties, which you want to include in the UI:
```csharp
private Factory _woodFactory = new WoodFactory();
        public Factory WoodFactory { get => _woodFactory;
            set 
            {
                _woodFactory = value;
                NotifyPropertyChanged();
            } 
        }
```
You need to use `_woodFactory` unless you want to call `NotifyPropertyChanged()` manually
### View
Before we can use the properties in the View, we have to set the ViewModel as `DataContext`:
```csharp
public MainWindow()
{
	InitializeComponent();
	DataContext = new MainWindowViewModel();
}
```
The easiest way to do so is to add it in the constructor in the code behind.

Now you can use the properties in the xaml:
```csharp
<Label Content="{Binding FirstName}"/>
```
Or for an input field, you need to clarify the mode:
```csharp
<TextBox Text="{Binding FirstName, Mode=TwoWay}"/>
```
### Command Binding
You can also bind commands to objects like a button. For that you need to create a RelayCommand:
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
Now we have to write the two functions `SaveExecute` and `SaveCanExecute`:
```csharp
private void SaveExecute(object? _)
{
	//SomeCode
}

private bool SaveCanExecute(object? _)
{
	return /*SomeCode*/;
}
```
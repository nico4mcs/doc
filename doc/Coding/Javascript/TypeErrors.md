# TypeErrors
In this chapter, I want to cover an error that occurred in a project.

This was the code that caused the problem.
```javascript
if(!id){
	id = makeId(5);
}
```
I thought that if I use a string `'0'` and use the 'not' operator on it, it would automatically parse to a boolean and 0 becomes false, everything else true. Instead, it was always true, no matter what the `id` was. 
When I found the mistake I compared the string to the string `'0'` and it worked.
```csharp
if(id === '0'){
	id = makeId(5);
}
```
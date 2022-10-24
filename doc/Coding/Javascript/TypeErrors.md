# TypeErrors

In this chapter, I want to cover an error that occurred in the PST AdminUI.

This was the code that caused the problem.

```javascript
if(!id){
    id = makeId(5);
    // 'makeId(5)' generates a random id with the length 5
}
```

I thought, that if I parse a string `id = '0'` to a boolean, it becomes false, everything else true. Instead, it was always true, no matter what the `id` was. An empty string on the other hand is parsed to false.
When I found the mistake, I compared the string `id` to the string `'0'` which worked.

```javascript
if(id === '0'){
    id = makeId(5);
}
```

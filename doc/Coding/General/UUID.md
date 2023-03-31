# UUID

UUID is short for '**U**niversally **U**nique **Id**entifier'. It is used to identify some kind of object. You can generate UUIDs yourself using a various software. E.g. the `uuid` npm package. Of course enumerating would work too, but you would have to use the variable throughout the software so it is much easier and cleaner with uuid.

## Different Versions

There are 5 versions of UUID, each using a different approach to generate the ID.

| Version   | short description      | long description                                                                                                                  | usage                                                                                             |
| --------- | ---------------------- | --------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| Version 1 | Time + node ID         | node ID is usually the mac address                                                                                                | Can be used if you're storing devices in a database where each device has a different mac address |
| Version 2 | DCE Security           | Similar to Version 1 but including a User ID, group ID or similar. The biggest downside is, that the ID changes once in 7 minutes | Same as above                                                                                     |
| Version 3 | Name-Based using MD5   | Uses two strings and creates a hash using MD5                                                                                     | Used when IDs are based on a name. E.g. URLs or email addresses.                                  |
| Version 4 | Random                 | Most common UUID version, generates a "random" ID (as random as possible)                                                         | Commonly used for applications, where ui-elements need to get a unique id                         |
| Version 5 | Name-Based using SHA-1 | Uses two strings and creates a hash using SHA-1                                                                                   | Same as version 3                                                                                 |

## UUID in javascript

In JavaScript you can use the npm package `uuid`, it offers functionality for versions 1, 3, 4 and 5. You can use it like shown in the following code snippet.

```tsx
import { v4 as uuidv4 } from "uuid";

let randomId = uuidv4();
```

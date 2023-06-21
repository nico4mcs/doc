# UUID

UUID is short for '**U**niversally **U**nique **Id**entifier'. It is used to identify some kind of object. You can generate UUIDs yourself using various software, e.g. the `uuid` npm package. Of course, enumerating would work too, but you would have to use one variable throughout the software so it is much easier and cleaner with UUIDs.

## Different Versions

There are 5 versions of UUID, each one using a different approach to generate the ID.

| Version                 | short description      |
| ----------------------- | ---------------------- |
| [Version 1](#version-1) | Time + node ID         |
| [Version 2](#version-2) | DCE Security           |
| [Version 3](#version-3) | Name-Based using MD5   |
| [Version 4](#version-4) | Random                 |
| [Version 5](#version-5) | Name-Based using SHA-1 |

### Version 1

UUID Version 1 is generated using the Time and a Node ID, which is usually the mac address. It can be used for storing devices in a database since each device is supposed to have a different mac address.

### Version 2

Version 2 is similar to [Version 1](#version-1). In addition to the time and a node ID it includes an User ID, group ID or similar. The Downside of version 2 is, that it only changes once in 7 minutes.

### Version 3

Version 3 takes two strings and hashes them using MD5. It is generally used if the describing Objects have a unique value, e.g. an e-mail.

### Version 4

Version 4 is the most commonly used version, it creates a completely random ID. It is often used for applications, where ui-elements need to get a unique id.

### Version 5

Version 5 is mostly equal to [Version 3](#version-3). The only difference is the usage of SHA-1 instead of MD5.

## UUID in javascript

In JavaScript you can use the npm package `uuid`, it offers functionality for versions 1, 3, 4 and 5. You can use it like shown in the following code snippet.

```tsx
import { v4 as uuidv4 } from "uuid";

let randomId = uuidv4();
```

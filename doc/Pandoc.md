# Pandoc
Pandoc is a console application to convert between documentation file types. E.g.
- Markdown
- HTML
- Docx
- PDF
- LaTeX
## Using Pandoc
You can simply use pandoc in the terminal. If you want to convert a file to another file you can use the following command:
```bash
pandoc -f docx -t markdown -o .\to.md .\from.docx
```
|Parameter|Meaning|
|---|---|
| -f (`docx`)| filetype you want to convert from|
| -t (`markdown`)| filetype you want to convert to|
|-o (`.to.md`)|output file|
|default (`.\from.docx`)|input file|

If you remove the output parameter, pandoc will print the converted file to the console.
### Images
You can convert a file with images using the following command:
```Shell
pandoc -f docx -t markdown -o .\to.md .\from.docx --extract-media .
```

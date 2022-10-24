[![CheckPaths](https://github.com/nico4mcs/doc/actions/workflows/CheckPaths.yml/badge.svg?branch=main)](https://github.com/nico4mcs/doc/actions/workflows/CheckPaths.yml)
[![GenerateDocs](https://github.com/nico4mcs/doc/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/nico4mcs/doc/actions/workflows/main.yml)
[![release](https://github.com/nico4mcs/doc/actions/workflows/release.yml/badge.svg?branch=main)](https://github.com/nico4mcs/doc/actions/workflows/release.yml)

# doc

This Repo contains my Lerndokumentation.

## Folder Structure

```
📁 doc
┣📁 .git
┣📁 .github   -   GitHub Files
┃┗📁 workflows   -   GitHub Workflows / Actions.
┣📁 actionFiles   -   Additional files for the workflows.
┃┣📄 checkPaths.ps1   -   Checks if the paths in 'toc.txt' are correct and if there are any double image names.
┃┣📄 generateMarkdown.ps1   -   Merges all Markdown files listed in 'toc.txt'.
┃┣📄 styling.css   -   CSS file for the generated html doc.
┃┗📄 toc.txt   -   Table of Content describing the relations between the markdown files.
┣📁 doc   -   Folder for all the doc Files.
┃┣📁 media   -   All images are stored in a 'media' folder.
┃┃┗🖼️ img.jpeg   -   Dummy img.
┃┗📄 doc.md   -   Dummy doc.
┣📄 .gitattributes   -   Needed for GitLfs.
┣📄 .gitignore
┣📄 Lerndokumentation.docx   -   Old doc as word document.
┗📄 README.md
```

# Doc

[![CheckPaths](https://github.com/nico4mcs/doc/actions/workflows/checkPaths.yml/badge.svg?branch=main)](https://github.com/nico4mcs/doc/actions/workflows/checkPaths.yml)
[![GenerateDocs](https://github.com/nico4mcs/doc/actions/workflows/generateDocs.yml/badge.svg?branch=main)](https://github.com/nico4mcs/doc/actions/workflows/generateDocs.yml)
[![ReleaseDocs](https://github.com/nico4mcs/doc/actions/workflows/releaseDocs.yml/badge.svg?branch=main)](https://github.com/nico4mcs/doc/actions/workflows/releaseDocs.yml)

## Introduction

This Repo contains my Lerndokumentation.

## Folder Structure

```-
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

created with [FolderStructureTxt](https://github.com/nico4mcs/FolderStructureTxt)

---

## Workflows

### CheckPaths

|                    |                                                                                                                                                                                          |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Workflow File:** | checkPaths.yml                                                                                                                                                                           |
| **Trigger:**       | Is executed when a commit is pushed on any branch.                                                                                                                                       |
| **Function:**      | <ol><li>Executes checkPaths.ps1</li><ol style="list-style-type: lower-alpha;"><li>Checks if the paths in toc.txt exist</li><li>Checks if there are any double image Names</li></ol></ol> |

### GenerateDocs

|                    |                                                                                                                                                                                                                                                                                                                                          |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Workflow File:** | generateDocs.yml                                                                                                                                                                                                                                                                                                                         |
| **Trigger:**       | Is executed when [CheckPaths](#checkpaths) was successfull on main branch.<br>Can be triggered manually on any branch.                                                                                                                                                                                                                   |
| **Function:**      | <ol><li>Executes generateMarkdown.ps1</li><ol style="list-style-type: lower-alpha;"><li>Merges all markdown files to a single one using toc.txt</li><li>Publishes the markdown file as an artifact</li></ol><li>Converts the markdown file to HTML using Pandoc</li><li>Publishes the HTML file and styling.css as an artifact</li></ol> |

### ReleaseDocs

|                    |                                                                                                                                                                                          |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Workflow File:** | releaseDocs.yml                                                                                                                                                                           |
| **Trigger:**       | Can be triggered manually on any branch.                                                                                                                                       |
| **Function:**      | <ol><li>Downloads the artifacts of the last `GenerateDocs` Workflow</li><li>Creates a release including the Files.</li></ol> |

## toc.txt

The toc.txt is used by the workflows [CheckPaths](#checkpaths) and [GenerateDocs](#generatedocs). The following code block is an example how it could look like:

```-
Header1
 Path\To\File.md
 Path\To\Another\File.md
 Header2
  Path\To\File2.md
 Header2
  Path\To\File3.md
```

[GenerateDocs](#generatedocs) will parse the file using the spaces on the left and edit the specified Files, so that e.g. in `Path\To\File.md` every Header1 becomes a Header2.

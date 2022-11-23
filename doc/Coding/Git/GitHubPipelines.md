# GitHub Pipelines

With GitHub Pipelines (also called Actions or Workflows) you can automate simple tasks. You can write them by yourself or use official or community actions.

## Writing A Pipeline

The following code snippet contains a basic structure for a Pipeline. It consists of a name, trigger conditions, variables and jobs:

```yml
name: GenerateDocs
# Name that is shown in GitHub.

on: 
  push:
    branches: 
      - main
# Triggers for the pipeline.
# In this example it is executed whenever something is pushed to main.
  
env:
  GITHUB_TOKEN: ${{ github.token }}
# The Environment / Repo Files are checked out from.

jobs:
  Job1:
    ...
  Job2:
    ...
```

A job has two names, steps which are executed and an OS they are executed on. In the step you can write further informations like again a name and in this example the shell and the executed command. This Example executes a powershell script

```yml
GenerateMarkdown:
​# Name of the Job, used inside of the Pipeline.
    runs-on: windows-latest
    # OS where all steps are executed.
    name: Generate Markdown
    # Name used to show on the UI.
    steps:
        - name: Generate md Doc
        # Name of the step.
            shell: pwsh
            # Shell used. 
            run: |
            .\actionFiles\generateMarkdown.ps1
            # Commands executed.
```

In the chapter [Commonly Used Actions](#-Commonly-Used-Actions) you can find more examples for useful steps.

### Triggers And Dependencies

#### Run A Job After Another

If you add the following code to the job, it will only execute if the job `StepBefore` was executed:

```yml
needs: StepBefore
```

#### Run A Workflow After Another

There is no good-looking solution for this but you can use these two code snippets as a workaround:

```yml
on:
  workflow_run:
  # When a workflow is run
    branches: 
      - main
    # Branch of the Workflow
    workflows: 
      - checkPaths
    # Name of the Workflow
    types: 
      - completed
      # Only if it has been completed (!= succeeded)
```

```yml
if: ${{ github.event.workflow_run.conclusion == 'success' }}
# Added to a job. Is only executed when it was a success.
```

#### Running a Workflow Manually

With the following Code snippet, you can run the pipeline manually from the `Actions` menu in GitHub:

```yml
on:
  workflow_dispatch:
```

## Commonly Used Actions

### Check Out Repo

```yml
- name: Checkout
    uses: actions/checkout@v2
    # Is required to use an action (official or community).
```

### Upload Files As Artifact

```yml
- uses: actions/upload-artifact@v3
    with:
    # Parameters for an action
        name: mdFiles
        path: ${{ github.workspace }}/artifact/
```

### Download Artifact

```yml
- name: Download artifact
    id: download-artifact
    uses: dawidd6/action-download-artifact@v2
    with:
        # Optional, GitHub token, a Personal Access Token with `public_repo` scope if needed
        # Required, if the artifact is from a different repo
        # Required, if the repo is private a Personal Access Token with `repo` scope is needed
        github_token: ${{secrets.GITHUB_TOKEN}}
        # Optional, workflow file name or ID
        # If not specified, will be inferred from run_id (if run_id is specified), or will be the current workflow
        workflow: main.yml
        # Optional, the status or conclusion of a completed workflow to search for
        # Can be one of a workflow conclusion:
        #   "failure", "success", "neutral", "cancelled", "skipped", "timed_out", "action_required"
        # Or a workflow status:
        #   "completed", "in_progress", "queued"
        # Use the empty string ("") to ignore status or conclusion in the search
        workflow_conclusion: success
        # Optional, will get head commit SHA
        pr: ${{github.event.pull_request.number}}
        # Optional, no need to specify if PR is
        commit: ${{github.event.pull_request.head.sha}}
        # Optional, will use the specified branch. Defaults to all branches
        branch: main
        # Optional, a directory where to extract artifact(s), defaults to the current directory
        path: .
        # Optional, choose to skip unpacking the downloaded artifact(s)
        # default false
        skip_unpack: true
```

### Pandoc

```yml
- name: Markdown to HTML
    uses: docker://pandoc/core:2.9
    with:
        args: "--standalone --webtex=https://latex.codecogs.com/svg.latex? --css=styling.css -o out/doc.html bin/doc.md"
        # Arguments, as you would write them in a bash console.
```

### Release

```yml
- uses: "marvinpinto/action-automatic-releases@latest"
    with:
        repo_token: "${{ secrets.GITHUB_TOKEN }}"
        automatic_release_tag: "latest"
        prerelease: false
        title: "doc"
        files: |
            *
```

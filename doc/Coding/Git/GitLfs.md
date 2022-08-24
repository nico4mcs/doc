# Git LFS
With Git LFS you can easily store big files with git by saving them on another remote server. Git then will only save a text pointer to it.

![](./media/graphic.gif)

## Using Git LFS
### 1.
If you haven't installed Git LFS already you can download the needed files here: https://github.com/git-lfs/git-lfs/releases/latest 
If you're on Linux you can use these two commands (at least on ubuntu 20.04):
```bash
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

sudo apt-get install git-lfs
```
### 2.
If you're using Git LFS for the first time on the user account you have to run
``` bash
git lfs install
```
### 3.
When you're in the repository you can add the different filetypes using the following command:
```bash
git lfs track "*.docx"
```
You then need to update `.gitattributes`:
```bash
git add .gitattributes
```
4.
Now add the files as you normally would and git LFS will do the rest.
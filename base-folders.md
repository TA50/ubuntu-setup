# Basic Folders:

## shell-programs

Contains shell programs that are used to automate tasks, or just cli tools that are useful.
This folder is added to the PATH variable so that the programs can be run from anywhere.

## scripts

Contains custom scripts that are used to automate tasks.
These scripts are not added to the PATH variable. instead, they run from the folder they are in (or by using aliases).

## source

Contains source code for projects I work on.

## containers

Contains docker-compose files and volume folders for containers that I use.

## .ssh/keys

Contains ssh keys for connecting to servers.

# Script to create the basic folders

```bash
mkdir -p shell-programs scripts source containers .ssh/keys
```

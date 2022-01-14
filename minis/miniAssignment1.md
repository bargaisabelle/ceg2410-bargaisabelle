# Bash command line essentials

This guide includes essential commands for bash/ sh shells, their definitions, and a sample of usage

## Basic Commands

- `man`
  - `man` followed by another command will show the `man`ual page for the given command, which can include what it does, options / flags for the command, and sometime sample usage.
  - `man ssh`
- `help`
  - can be used to find more information on builtin commands
  - `help help`
- `history`
  - displays a list of all past commands.
  - `history | grep "ssh"`
- `cd`
  - cd stands for change directory
  - `cd home/`
- `ls`
  - allows you to list directory contents, like folders and directories
  - `ls -lah`
- `pwd`
  - allows you to print the name of current/working directory
- `cat`
  - allows you to concatenate files or prints the contents of the file without having to enter the file
  - `cat file.txt`
- `vim`
  - vim is a text editor, allows you to create a file and enter it in one command
  - `vim file.txt`
- `mkdir`
  - allows you create a directory
  - mkdir project1`
- `sudo`
  - allows you to execute commands as another/authorized user. Used to 'override.'
  - `sudo !!'
- `chmod`
  - allows you to change permissions for a file (or the mode)
  - `chmod u+rwx file.txt`
- `chown`
  - allows you to change ownership of a file 
  - `chown barga file.txt`
- `chgrp`
  - allows you to change the group ownership of a file
  - `chgrp students file.txt`
- `ssh`
  - allows you to login to a remote machine and execute commands
  - `ssh -i /file/path/key ubuntu@ip`

## Shortcuts and symbols

- `~`
  - used with cd to go to home directory
- `..`
  - used with cd backup one directory or go to parent directory
- `.`
  - shows the current directory with cd
- `!!`
  - used to repeat a command without having to retype the entire command, useful for fixing typos

## Resources

- [sample link to resource](https://url.of.resource)

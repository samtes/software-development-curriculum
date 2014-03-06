# Basic Command-Line Fluency

## The Command Prompt

The command prompt can be called the shell, the command line, the terminal, or the console. OS X users tend to call it the terminal, as that is the name of the application in OS X.

I'm assuming that the reader has a basic grasp of how to turn on their terminal, etc.  This document is here merely to serve as a quick reference to commands that you should either know already or learn soon.

## Basic Commands

### less

Displays a text document in your terminal.  You can navigate the document using your keyboard:

* space or 'f' will move you forward in the document
* 'b' will move you back in the document
* the up and down arrow keys will move you up and down by one line
* '/word' followed by return will search for 'word' in the document. Press 'n' to go to the next matching line, or 'p' to go to the previous matching line.
* 'q' will exit less

Example:

	> less mylongtextdocument.txt

### man

<b>man</b>ual for unix command.

	> man ls

Displays the manual for the command `ls`, using less.

### pwd

<b>p</b>rint <b>w</b>orking <b>d</b>irectory

Example:

	> pwd
	/Users/elizabrock/Projects/software-development-curriculum/computer-science

### cd

<b>c</b>hange <b>d</b>irectory

	> pwd
	/path/to
	> cd adirectory/
	> pwd
	/path/to/adirectory

### ls

<b>l</b>i<b>s</b>t directory contents

	> ls
	advanced-cs           computer-networks     programming
	algorithms            databases
	computer-architecture operating-systems

When using the 'l' flag, `ls` includes details about the files: the file permissions, the file's owner, the file's group, the size, date last modified, and the filename.

	> ls -la
	total 32
	drwxr-xr-x  10 elizabrock  staff    340 Mar  2 14:23 .
	drwxr-xr-x  13 elizabrock  staff    442 Mar  2 16:39 ..
	-rw-r--r--@  1 elizabrock  staff  12292 Mar  2 14:29 .DS_Store
	drwxr-xr-x   9 elizabrock  staff    306 Mar  2 14:29 advanced-cs
	drwxr-xr-x   7 elizabrock  staff    238 Mar  2 14:29 algorithms
	drwxr-xr-x   3 elizabrock  staff    102 Mar  2 10:30 computer-architecture
	drwxr-xr-x   6 elizabrock  staff    204 Mar  2 12:55 computer-networks
	drwxr-xr-x  29 elizabrock  staff    986 Mar  2 14:29 databases
	drwxr-xr-x   7 elizabrock  staff    238 Mar  2 19:10 operating-systems
	drwxr-xr-x   6 elizabrock  staff    204 Mar  2 14:23 programming

#### File Permissions

File permissions are denoted in an octal notation.  This list is by no means complete, and this summary is intended as a refresher, rather than to teach you about the full file permission structure. You can read up on this on Wikipedia!

	| Symbolic Notation | Octal Notation | English                |
	| ----------        | 0000           | no permissions         |
	| ---x--x--x        | 0111           | execute                |
	| --w--w--w-        | 0222           | write                  |
	| --wx-wx-wx        | 0333           | write & execute        |
	| -r--r--r--        | 0444           | read                   |
	| -r-xr-xr-x        | 0555           | read & execute         |
	| -rw-rw-rw-        | 0666           | read & write           |
	| -rwxrwxrwx        | 0777           | read, write, & execute |

(Source: Wikipedia's File System Permissions article)

### whoami

Prints out the user you are currently logged in as.

	> whoami
	elizabrock

### chown

<b>ch</b>ange <b>own</b>er

Changes the file or directory's owner.

	> ls -la
	total 0
	drwxr-xr-x   6 elizabrock  staff  204 Mar  3 09:19 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:12 ..
	-rw-r--r--   1 elizabrock  staff    0 Mar  3 09:19 awesomefile
	> chown joe awesomefile
	> ls -la
	total 0
	drwxr-xr-x   6 elizabrock  staff  204 Mar  3 09:19 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:12 ..
	-rw-r--r--   1 joe         staff    0 Mar  3 09:19 awesomefile

### chmod

<b>ch</b>ange file <b>mod</b>e

Changes the permissions on a file.

This is often used to make a file executable.

	> ls -la
	total 16
	drwxr-xr-x   4 elizabrock  staff   136 Mar  3 09:27 .
	drwxr-xr-x  11 elizabrock  staff   374 Mar  3 09:27 ..
	-rw-r--r--@  1 elizabrock  staff  6148 Mar  3 09:27 .DS_Store
	-rw-r--r--   1 elizabrock  staff     0 Mar  3 09:27 myscript.sh
	> chmod +x myscript.sh
	> ls -la
	total 16
	drwxr-xr-x   4 elizabrock  staff   136 Mar  3 09:27 .
	drwxr-xr-x  11 elizabrock  staff   374 Mar  3 09:27 ..
	-rw-r--r--@  1 elizabrock  staff  6148 Mar  3 09:27 .DS_Store
	-rwxr-xr-x   1 elizabrock  staff     0 Mar  3 09:27 myscript.sh

### touch

"Touches" a file, which creates the item if it doesn't exist.  Otherwise it updates the last modified timestamps and last accessed timestamps on the file. (Note: `ls -la` shows the time at which the file was last modified)

	> cd mydir
	> ls -la
	total 0
	drwxr-xr-x   3 elizabrock  staff  102 Mar  2 19:10 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:10 ..
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:10 existingfile

	> touch newfile
	> ls -la
	total 0
	drwxr-xr-x   4 elizabrock  staff  136 Mar  2 19:10 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:10 ..
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:10 existingfile
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:12 newfile

	> touch existingfile
	> ls -la
	total 0
	drwxr-xr-x   4 elizabrock  staff  136 Mar  2 19:10 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:10 ..
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:13 existingfile
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:12 newfile

### mkdir

<b>m</b>a<b>k</b>e a <b>dir</b>ectory. (A directory is just another word for a folder).

	> ls
	existingfile
	> mkdir adirectory
	> ls
	adirectory   existingfile
	> cd adirectory/
	> pwd
	/path/to/adirectory

### rm

<b>r</b>e<b>m</b>ove a given file or directory.

	> ls
	existingfile newfile
	> rm existingfile
	> ls
	newfile

To remove a directory, you must use the -r (recursive) flag:

	> ls
	adirectory existingfile
	> rm adirectory/
	rm: adirectory/: is a directory
	> rm -r adirectory/
	> ls
	existingfile

### cp and mv

<b>c</b>o<b>p</b>y

	> ls
	adirectory   existingfile newfile
	> cp existingfile copyofexistingfile
	> ls
	adirectory         copyofexistingfile existingfile       newfile

<b>m</b>o<b>v</b>e

	> ls
	adirectory   existingfile newfile
	> mv existingfile newname
	> ls
	adirectory newfile    newname


# Sources and Further Reading:

* [Wikipedia: File System Permissions](http://en.wikipedia.org/wiki/File_system_permissions)
http://mally.stanford.edu/~sr/computing/basic-unix.html
http://cli.learncodethehardway.org/book/

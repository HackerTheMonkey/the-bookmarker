# The Bookmarker script

The Bookmarker is a set of bash shell script that aim to simplify the navigation through *nix file system by acting as a 
bookmarking tool to bookmark/unbookmark directory paths and assigning short aliases for them that are easy to remember.

So say goodbye to remembering lengthy directory names and typing what seems like a train wreck of directories everytime 
you want to navigate to one.

# Usage example

To mark a directory using an absolute path
``` shell
mark /this/is/a/very/very/looooong/path mydir
```
To navigate to the marked directory, simply type the aliased directory name
```
mydir
```
To list all the marked directories, you can use the `marks` command, here is a sample output:
```
 bin  -> /Users/khafaji/bin
 eBooks  -> /Users/khafaji/eBooks
```

To un-bookmark a directory
```
umark myDir
```

# Other ways to book mark a directory:

Bookmarking a directory using its absolute path is not the only way, we can bookmark a directory using its:

1. A relative path, e.g. `mark relative/path/to/some/directory dirA`
2. Marking the current directory, e.g. `mark . myCurrentDir`
3. Marking the parent directiry, e.g. `mark .. myParentDir`

# Installation

1. Unpack the [source](https://github.com/hasanein/BookmarkerScript/archive/0.1.zip) of the Bookmarker shell script into a directory of your choice and make sure that directory is included
in your PATH environment variable.
2. Edit your bash profile and add the following blocks of code.

``` shell
# Include aliases file created by the marker script
if [ -f ~/.marker_functions ] ; then	
	source ~/.marker_functions
fi
```

``` shell
function mark()
{
	markme $*
	. ~/.bash_profile
}

function umark()
{
	umarkme $*
	unset $*
}
```

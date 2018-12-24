# Add the current working directory to the PATH
export PATH=${ZSH}/plugins/bookmarker/bin:${PATH}

# Make sure that they are executable.
chmod u+x ${ZSH}/plugins/bookmarker/bin/*

# Include aliases file created by the marker script
if [ -f ~/.marker_functions ] ; then	
	source ~/.marker_functions
fi

# Define the facade marking and unmarking functions
function mark()
{
	markme $*
	. ~/.zshrc
}

function umark()
{
	umarkme $*
	unset $*
}

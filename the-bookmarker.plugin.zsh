PLUGIN_DIR=${ZSH}/custom/plugins/the-bookmarker
# Add the current working directory to the PATH
export PATH=${PLUGIN_DIR}/bin:${PATH}

# Make sure that they are executable.
chmod u+x ${PLUGIN_DIR}/bin/*

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

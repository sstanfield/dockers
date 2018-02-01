# ~/.bashrc: executed by bash(1) for non-login shells.

. ~/.shrc.funcs

setPath

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0073642" #black
	echo -en "\e]P8002b36" #brblack
	echo -en "\e]P1dc322f" #red
	echo -en "\e]P9cb4b16" #brred
	echo -en "\e]P2859900" #green
	echo -en "\e]PA586e75" #brgreen
	echo -en "\e]P3b58900" #yellow
	echo -en "\e]PB657b83" #bryellow
	echo -en "\e]P4268bd2" #blue
	echo -en "\e]PC839496" #brblue
	echo -en "\e]P5d33682" #magenta
	echo -en "\e]PD6c71c4" #brmagenta
	echo -en "\e]P62aa198" #cyan
	echo -en "\e]PE93a1a1" #brcyan
	echo -en "\e]P7eee8d5" #white
	echo -en "\e]PFfdf6e3" #brwhite
	clear #for background artifacting
fi

setShopt

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
function set_prompt {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[1;36m\]"
  local      YELLOW="\[\033[0;33m\]"
  local     DEFAULT="\[\033[0;38m\]"

  # set a fancy prompt (non-color, unless we know we "want" color)
  case "$TERM" in
  xterm*|rxvt*|linux|screen*|ansi|st*|tmux*)
    PS1="$GREEN\h$YELLOW:$BLUE\W/$LIGHT_GRAY\$(parse_git_branch)$YELLOW\$ $DEFAULT"
    ;;
  *)
    PS1='\h:\W/$(parse_git_branch)\$ '
    ;;
  esac
}
set_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*|st*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

colorLS

# For OSX, it has crappy ssh-agent support so work around it.
# This is for xterms, the do not run .profile.  If an Apple
# terminal has not been opened first the agent will not be running...
if [[ "`uname`" = "Darwin" ]]; then
  AGENT=$HOME/.ssh/agent
  export SSH_AUTH_SOCK=$AGENT
fi

# enable programmable completion features, lifted from Ubuntu 11.4
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi

# Need this to fix fonts on ARCH and IntelliJ (showed up after an update).
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'

set -o vi


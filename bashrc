export EDITOR=nvim
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
        export TERM=xterm-256color
fi

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# Append to the history file, don't overwrite it.
shopt -s histappend
# For setting history length see HISTSIZE and HISTFILESIZE in bash(1).
HISTSIZE=1000
HISTFILESIZE=2000

# Enable color support of ls and also add handy aliases.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# psdir
MYPSDIR_AWK=$(cat << 'EOF'
BEGIN { FS = OFS = "/" }
{ 
   if (length($0) > 14 && NF > 3)
      print $1,$2,"+" NF-3 "",$NF
   else
      print $0
}
EOF
)
export MYPSDIR='$(echo -n "${PWD/#$HOME/~}" | awk "$MYPSDIR_AWK")'
export PS1='\[\e[32m\]\u@\h\[\e[0m\]\[\e[32m\]:$(eval "echo ${MYPSDIR}")$\[\e[0m\] '

if [ -f "$FILE" ]; then
    source ~/.git-completion.bash
fi


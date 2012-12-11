# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "/usr/local/ssl/bin" ] ; then
    PATH="/usr/local/ssl/bin:$PATH"
fi

if [ -d "/usr/local/php/bin" ]; then
    PATH="/usr/local/php/bin:$PATH"
fi

if [ -d "/usr/local/pgsql/bin" ]; then
    PATH="/usr/local/pgsql/bin:$PATH"
fi

if [ -d "/usr/local/mysql/bin" ]; then
    PATH="/usr/local/mysql/bin:$PATH"
fi

#if [ -e "/usr/bin/keychain" ]; then
## load up ssh key
#    keychain --timeout 240 ~/.ssh/id_rsa
#    source ~/.keychain/$HOSTNAME-sh
#fi

# some aliases
alias vi='vim'
alias ta='tmux attach'
alias ta2='tmux -2 attach'
alias ns='netstat -tulpn'
alias llh='ls -lh'
alias ll='ls -lp'
alias ls='ls -p'

# set 1337 h4x0r looking shell prompt
#PS1="\w > "
PS1='\[\e[1;32m\][\u@\h \w] \$\[\e[0m\] '

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export EDITOR=vim

PATH=/usr/local/bin:$PATH

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

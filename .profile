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

# load up ssh key
keychain --timeout 60 ~/.ssh/id_rsa
. ~/.keychain/$HOSTNAME-sh

# some aliases
alias vi='vim'
alias ta='tmux attach'
alias ns='netstat -tulpn'
alias llh='ls -lh'

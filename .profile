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

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export EDITOR=vim
export GPG_TTY=$(tty)

if [ ! -e /run/systemd/system ]; then
    SSH_ENV="${HOME}/.ssh/env"

    function start_ssh_agent {
        ssh-agent | sed -e '/^echo/d' > "${SSH_ENV}"
        chmod 0600 "${SSH_ENV}" 
        . "${SSH_ENV}"
    }

    if [ -f "${SSH_ENV}" ]; then
        . "${SSH_ENV}"
        if ! kill -0 "${SSH_AGENT_PID}" > /dev/null 2>&1; then
            start_ssh_agent
        fi
    else
        start_ssh_agent
    fi
else
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

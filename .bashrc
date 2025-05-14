# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

function log() {
    if [[ -v "$VERBOSE" ]]; then
        echo "$1"
    fi
}

function success() {
    log "✅ ${1}"
}

function warn() {
    log "⚠️ ${1}"
}

# Run systemd generators
if [[ -f /usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator ]]; then
    set -o allexport
    # shellcheck disable=1090
    source <(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)
    set +o allexport
fi

# User specific environment
if ! [[ "$PATH" =~ $HOME/.local/bin:$HOME/bin: ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            # shellcheck disable=1090
            . "$rc"
        fi
    done
fi
unset rc

# Environment variables

# history control
HISTSIZE=10000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignorespace:ignoredups
shopt -s histappend

if command -v nvim > /dev/null; then
    success "setting EDITOR to nvim"
    export EDITOR=nvim

    success "setting MANPAGER viewer to nvim"
    export MANPAGER="nvim +Man!"
else
    warn "nvim not found"
fi

# OS specific environment
case "$OSTYPE" in
    darwin*)
        # Homebrew
        if [[ -f /opt/homebrew/bin/brew ]]; then
            eval "$(/opt/homebrew/bin/brew shellenv)"
            success "set up homebrew"
        else
            warn "homebrew not found"
        fi

        # Ruby
        if [[ -d /opt/homebrew/opt/ruby ]]; then
            export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
            export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
            export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
            success "set up homebrew ruby"
        else
            warn "homebrew ruby not found"
        fi
        ;;
esac

# Tools

# fzf
if command -v fzf > /dev/null; then
    eval "$(fzf "--$(basename "$SHELL")")"
    success "set up fzf"
else
    warn "fzf not found"
fi

# starship
if command -v starship > /dev/null; then
    eval "$(starship init "$(basename "$SHELL")")"
    success "set up starship"
else
    warn "starship not found"
fi

# Aliases
alias nview="nvim -R"

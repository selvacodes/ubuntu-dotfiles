set -g -x PATH /usr/local/bin $PATH
set -g -x PATH /usr/local/lib/node_modules $PATH
set -g -x PATH /Users/selva/Library/Python/2.7/bin $PATH
set -g -x PATH $HOME/bin $PATH
set -g -x PATH $HOME/.cargo/bin $PATH

export TMUXP_CONFIGDIR=$HOME/.config/tmuxp
export TERM=xterm-256color
export TERM=xterm-256color
export GOPATH=/Users/selva/repos/backup/golearn

function cd 
        builtin cd $argv; and exa -F
end

function tn 
      set CURRENT (pwd)
      set BASENAME (basename $CURRENT)
      tmuxinator s node $CURRENT -n $BASENAME
end

function txn 
      set CURRENT (pwd)
      set BASENAME (basename $CURRENT)
      env SESSION_NAME=$BASENAME tmuxp load $TMUXP_CONFIGDIR/node.yml 
end

function gg 
      git log --oneline --decorate -n 5
end

alias v=vim
alias vi=vim
alias y=yarn
alias r=ranger
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias cat='bat --theme=TwoDark'

alias tx="tmuxinator"
alias tks="tmux kill-session"
alias tkr="tmux kill-server"
alias tls="tmux list-sessions"
alias tas="tmux attach-session -t"
alias tad="tmux attach-session -t default"

alias g=git
alias ga='git add'
alias gca='git commit --amend --no-edit'
alias gap='git add -p'
alias gph='git push'
alias gpl='git pull'
alias gla='git config -l | grep alias | cut -c 8-'

alias gs='git status'
alias gss='git status -sb'
alias gd='git diff'
alias gds='git diff --staged'

alias gm='git commit -m'
alias gc='git checkout'

alias glg='git log --oneline --decorate'
alias vclean='find . -type f -name "*.sw[klmnop]" -delete'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias docker-clean-unused='docker system prune --all --force --volumes'

source $HOME/.cargo/env

starship init fish | source
# Meta
complete -c alacritty \
  -s "v" \
  -l "version" \
  -d "Prints version information"
complete -c alacritty \
  -s "h" \
  -l "help" \
  -d "Prints help information"

# Config
complete -c alacritty \
  -l "live-config-reload" \
  -d "Enable automatic config reloading"
complete -c alacritty \
  -l "no-live-config-reload" \
  -d "Disable automatic config reloading"
complete -c alacritty \
  -l "persistent-logging" \
  -d "Keep the log file after quitting Alacritty"
complete -c alacritty \
  -f \
  -l "config-file" \
  -d "Specify an alternative config file"
complete -c alacritty \
  -s "t" \
  -l "title" \
  -d "Defines the window title"
complete -c alacritty \
  -l "class" \
  -d "Defines the window class"
complete -c alacritty \
  -l "embed" \
  -d "Defines the X11 window ID (as a decimal integer) to embed Alacritty within"
complete -c alacritty \
  -x \
  -a '(__fish_complete_directories (commandline -ct))' \
  -l "working-directory" \
  -d "Start shell in specified directory"
complete -c alacritty \
  -l "hold" \
  -d "Remain open after child process exits"

# Output
complete \
  -c alacritty \
  -l "print-events" \
  -d "Print all events to stdout"
complete \
  -c alacritty \
  -s "q" \
  -d "Reduces the level of verbosity (min is -qq)"
complete \
  -c alacritty \
  -s "qq" \
  -d "Reduces the level of verbosity"
complete \
  -c alacritty \
  -s "v" \
  -d "Increases the level of verbosity"
complete \
  -c alacritty \
  -s "vv" \
  -d "Increases the level of verbosity"
complete \
  -c alacritty \
  -s "vvv" \
  -d "Increases the level of verbosity"

complete \
  -c alacritty \
  -l "ref-test" \
  -d "Generates ref test"

complete \
  -c alacritty \
  -s "d" \
  -l "dimensions" \
  -d "Window dimensions <columns> <lines>"

complete \
  -c alacritty \
  -l "position" \
  -d "Window position <x-pos> <y-pos>"

complete \
  -c alacritty \
  -s "e" \
  -l "command" \
  -d "Execute command (must be last arg)"

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="lambda"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions web-search copypath copyfile dirhistory zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
alias zshconfig="nvim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias alacrittyconf="nvim ~/.config/alacritty/alacritty.yml"
alias neovimconf="cd ~/.config/nvim/ && nvim ~/.config/nvim/init.lua"
alias tmuxconf="nvim ~/.tmux.conf"
alias t="tmux new -s"
alias ta="tmux a -t"
alias tls="tmux ls"
alias tk="tmux kill-session -t"
alias tks="tmux kill-server"


# Node Version Manager
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
source ~/.nvm/nvm.sh

# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_COMPLETION_TRIGGER="~~"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)
export TERM='xterm-256color'
export PATH=$PATH:/usr/local/Cellar/openvpn/2.5.7/sbin
alias openjdk="/usr/local/opt/openjdk/bin"


# starship prompt
eval "$(starship init zsh)"


export LC_ALL=en_US.UTF-8
eval "$(zoxide init zsh)"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# LLVM (Homebrew)
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export C_INCLUDE_PATH="/usr/local/include:$CI_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH="/usr/local/include:$CPLUS_INCLUDE_PATH"


#RUBY
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

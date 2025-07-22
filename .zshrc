# ~/.zshrc file for zsh interactive shells.
# Enhanced for Ethical Hacking, Terminal Productivity, and Hacker Style

##### ZSH OPTIONS #####
setopt autocd                      # cd into dir just by typing its name
setopt interactivecomments         # allow # comments in command line
setopt magicequalsubst            # expand expressions like foo=bar
setopt nonomatch                   # hide error if pattern doesn't match
setopt notify                      # notify when background job completes
setopt numericglobsort             # sort filenames numerically
setopt promptsubst                 # allow substitution in prompt
setopt hist_ignore_space           # ignore commands starting with space
setopt hist_ignore_dups            # skip duplicate commands
setopt hist_expire_dups_first      # delete dups first when history file is full
setopt hist_verify                 # show expanded history before executing

WORDCHARS=${WORDCHARS//\/}        # remove backslash from WORDCHARS
PROMPT_EOL_MARK=""                 # hide % end-of-line mark

##### KEY BINDINGS #####
bindkey -e                          # emacs bindings
bindkey ' ' magic-space             # expand history on space
bindkey '^U' backward-kill-line
bindkey '^[[3;5~' kill-word         # ctrl+supr
bindkey '^[[3~' delete-char
bindkey '^[[1;5C' forward-word      # ctrl+->
bindkey '^[[1;5D' backward-word     # ctrl+<-
bindkey '^[[5~' beginning-of-buffer-or-history
bindkey '^[[6~' end-of-buffer-or-history
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[Z' undo                 # shift+tab

##### COMPLETION CONFIG #####
autoload -Uz compinit && compinit -d ~/.cache/zcompdump
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' menu select
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose true

##### HISTORY #####
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000
alias history='history 0'

##### TIME CONFIG #####
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'

##### CHROOT DETECTION #####
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

##### COLOR PROMPT SETUP #####
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
  else
    color_prompt=
  fi
fi

configure_prompt() {
  prompt_symbol=\u238f
  case "$PROMPT_ALTERNATIVE" in
    twoline)
      PROMPT=$'%F{%(#.blue.green)}\u250c──${debian_chroot:+($debian_chroot)-}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))-}(%B%F{%(#.red.blue)}%n'$prompt_symbol$'%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n\u2514─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
      ;;
    *)
      PROMPT='%F{blue}%n@%m%f:%F{green}%~%f %# '
      ;;
  esac
  unset prompt_symbol
}

PROMPT_ALTERNATIVE=twoline
NEWLINE_BEFORE_PROMPT=yes

if [ "$color_prompt" = yes ]; then
  VIRTUAL_ENV_DISABLE_PROMPT=1
  configure_prompt

  # Syntax highlighting
  if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
  fi

  # Autosuggestions
  if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
  fi

else
  PROMPT='%n@%m:%~ %# '
fi

bindkey ^P toggle_oneline_prompt
zle -N toggle_oneline_prompt

##### Terminal Title #####
case "$TERM" in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*|alacritty)
    TERM_TITLE=$'\e]0;${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}%n@%m: %~\a'
    ;;
esac

precmd() {
  print -Pnr -- "$TERM_TITLE"
  if [ "$NEWLINE_BEFORE_PROMPT" = yes ]; then
    if [ -z "$_NEW_LINE_BEFORE_PROMPT" ]; then
      _NEW_LINE_BEFORE_PROMPT=1
    else
      print ""
    fi
  fi
}

##### COLORS & ALIASES #####
if [ -x /usr/bin/dircolors ]; then
  eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
  export LS_COLORS="$LS_COLORS:ow=30;44:"

  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias diff='diff --color=auto'
  alias ip='ip --color=auto'
fi

alias ll='ls -lAh --group-directories-first'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias ports='netstat -tulanp'
alias sniff='tcpdump -i any'
alias update='apt update && apt upgrade -y'
alias pyserver='python3 -m http.server'
alias ..='cd ..'
alias ...='cd ../..'
alias please='sudo'
alias todo='echo "Focus, hacker. What will you pwn today?"'
alias lol='echo "Hacking the planet"'

##### command-not-found #####
if [ -f /etc/zsh_command_not_found ]; then
  source /etc/zsh_command_not_found
fi

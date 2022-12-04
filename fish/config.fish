####### https://www.github.com/hyperclocker/dotfiles #########
# _                               _            _             # 
#| |__  _   _ _ __   ___ _ __ ___| | ___   ___| | _____ _ __ #
#| '_ \| | | | '_ \ / _ \ '__/ __| |/ _ \ / __| |/ / _ \ '__|#
#| | | | |_| | |_) |  __/ | | (__| | (_) | (__|   <  __/ |   #
#|_| |_|\__, | .__/ \___|_|  \___|_|\___/ \___|_|\_\___|_|   #
#       |___/|_|                                             #
#                                                            #
####### https://www.gitlab.com/hyperclocker/dotfiles #########

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# scripts
alias cls="/home/hyperclocker/bin/cls"
alias upcls="/home/hyperclocker/bin/upcls"
alias bkcls="/home/hyperclocker/bin/bkcls"
alias prime-run="/home/hyperclocker/bin/prime-run"

alias moon="curl 'wttr.in/moon?format=%l:\[%m\]%M'"
alias wttr="curl 'wttr.in/'"

# git
alias gs='git status'
alias commit='git commit -m'

# apt
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias upgradable='apt list --upgradable'

# pacman
#alias syu='sudo pacman -Syu'
#alias syyu='sudo pacman -Syyu'

alias up='uptime -p'
alias neo='neofetch'
alias rm='trash'

alias note='cd ~/note'

alias bright='brightnessctl list'

### "vim" as manpager
 set -x MANPAGER '/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'



fish_vi_key_bindings

function fish_user_key_bindings
    # Ctrl-Alt-x
    bind \ce accept-autosuggestion
    bind \cf forward-word
end

# no greetings
set -U fish_greeting 

# vi mode color
function fish_mode_prompt
  switch $fish_bind_mode
    case default
      set_color brpurple
      echo '[n]'
    case insert
      set_color brcyan
      echo '[i]'
    case replace_one
      set_color green
      echo '[r]'
    case visual
      set_color yellow 
      echo '[v]'
    case replace
      set_color green
      echo '[R]'
    case '*'
      set_color purple
      echo '[?]'
  end
  set_color normal
end

# backup file
# `backup file.txt` copies file as file.txt.bak
function backup --argument filename
    cp $filename $filename.backup
end


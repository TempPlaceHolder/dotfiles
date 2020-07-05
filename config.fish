alias showFiles 'defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles 'defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias dirSizes "du -hs * | sort -nr"

alias clearh "history -cw"

alias cd.. 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# Quick apt-get install/search
alias gitfixup "git commit -a --amend --no-edit"
alias i "apt-get install"
alias s "apt-cache search"
alias h "history | grep"

alias sf "source ~/.config/fish/config.fish"

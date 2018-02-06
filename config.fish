alias showFiles 'defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles 'defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias de "eval (docker-machine env default)"

alias dirSizes "du -hs * | sort -nr"

alias clearh "history -cw"

alias cd.. 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# Quick apt-get install/search
alias i "apt-get install"
alias s "apt-cache search"
alias h "history | grep"
alias aria "aria2c -x16 --http-user=transmission --http-passwd=updatethis"
alias dcup "docker-compose -f ~/repos/wfp/infrastructure/docker/local-environment/docker-compose.yml up"
alias dcdown "docker-compose -f ~/repos/wfp/infrastructure/docker/local-environment/docker-compose.yml down"
alias wfpgradle "cd ~/repos/wfp and ./gradlew clean ear --rerun-tasks"


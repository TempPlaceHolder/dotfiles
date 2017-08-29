alias editAliases='vim ~/.bash_aliases'
alias ll='ls -lh'
alias la='ls -lah'
# OSX
if [ $(uname) != 'Linux' ]; then
  alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
  alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
  alias editAliases='sudo vim ~/.bash_profile'
  alias de='eval "$(docker-machine env default)"'
  alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim'
fi

alias dirSizes='du -hs * | sort -hr'

# Get directory md5
md5dir() {
    find "$1" -type f -print0 | sort -z | xargs -r0 md5sum | md5sum
}

# generic
alias upgrade='sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean'
alias clearh='history -cw'

# go back x directories
b() {
    str=""
    count=0
    while [ "$count" -lt "$1" ];
    do
        str=$str"../"
        let count=count+1
    done
    cd $str
}

# Extract almost any archive
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        p7zip -d $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# Quick apt-get install/search
alias i="apt-get install"
alias s="apt-cache search"
alias h="history | grep"

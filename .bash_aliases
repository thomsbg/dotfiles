alias ls="ls --color"
alias openports="sudo netstat --tcp --listening --numeric --program"
alias wpn-excat="tail -n1 /opt/wp/log/wpn_rails/exception.log | excat"
alias hood-excat="tail -n1 /opt/wp/log/neighborhoods/exception.log | excat"
alias wpirb="irb -rrubygems -rwplib -r'remote/common'"

alias bundle1.9.2="ruby1.9.2 /opt/ruby-1.9.2/bin/bundle"
alias compass1.9.2="ruby1.9.2 /opt/ruby-1.9.2/bin/compass"

function web() {
  if [ $1 ] ; then
    sudo $HOME/dev/rcommon/bin/unified_installer $1 --role=wpnrails	
  fi
}

function hood() {
  if [ $1 ] ; then
    sudo $HOME/dev/rcommon/bin/unified_installer $1 --role=neighborhoods
  fi
}

function hooddb() {
  if [ $1 ] ; then
    sudo $HOME/dev/rcommon/bin/unified_installer $1 --role=hooddb
  fi
}

function control() {
  if [ $1 -a $2 ] ; then
    sudo $HOME/dev/rcommon/bin/unified_installer $2 --role=$1
  fi
}

function gfind() {
    if [ $# -le 1 ] ; then
        search_dir="."
    else
        search_dir=$2
    fi
    grep -rn "$1" $search_dir;
}

function gsub() {
    echo "Pattern: $1"
    echo "Replacement: $2"
    grep -rl "$1" . | xargs -p -i perl -p -i -w -e "s/$1/$2/gi" '{}'
}


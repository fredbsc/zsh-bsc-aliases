#/bin/bash
#          _             _ _                     
#  _______| |__     __ _| (_) __ _ ___  ___  ___ 
# |_  / __| '_ \   / _` | | |/ _` / __|/ _ \/ __|
#  / /\__ \ | | | | (_| | | | (_| \__ \  __/\__ \
# /___|___/_| |_|  \__,_|_|_|\__,_|___/\___||___/
#                                                
# add the @-aliases for googler
source ~/scripts/googler_at

#alias ducks="sudo ls -a | grep -v -e '"^\.\.$' | xargs -i du -ks {} |sort -rn |head -11"
alias ducks='sudo du -cks * | sort -rn | head -11'
alias ducksm='sudo du -cms * | sort -rn | head -11'

# list all aliases
alias aliases="compgen -a"
alias ali='alias | fzf'
alias vi='/usr/bin/nvim'
alias vig='/opt/goneovim-v0.4.12/goneovim'

#system helpers
	alias cat="bat"
alias ..="cd .."
alias ...="cd ../.."
alias h='cd ~'
alias c='clear'
alias e='exit'
alias b='cd ~-'
alias hg=history_fzf
export COLUMNS  # Remember columns for subprocesses.
function ls {
  command ls --color=always -hals "$@" | less -R -X -F
}
alias ls='ls'
alias l='$(which ls)'
alias ge='setxkbmap -layout de'

# Command line head / tail shortcuts
alias -g M='| mailme'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| rg'
alias -g L="| less"
alias -g S="| sort"
alias -g X="| xc"
alias -g W="| wc -l"
alias -g SU="| sort | uniq"
alias -g GT="| awk '{ print \$0; s+=1 } END { print \"lines: \"s }'"
alias -g LL="2>&1 | less"
alias -g NUL="> /dev/null 2>&1"

# jump 
alias jj='cd $(j -s | head -n -7 | awk "{ print \$2 }" | fzf)'
alias jp='j --purge'

# disk usage 
alias dud='du -d 1 -h'
alias duf='du -sh *'


# change dir fzf all from home  / all from root / whithout hidden from home

alias gla='glances'

#glab - Gitlab cli
alias glabil='glab issue list'
alias glabila='glab issue list --all'
alias glabiv='glab issue view'
alias glabivw='glab issue view --web'
alias glabrv='glab repo view --web'

# remote terminal
alias ssh='TERM=xterm ssh'
alias sshrc='TERM=xterm sshrc'

# alias vim='gvim 2>/dev/null'
# alias vv='tmux split-window -h vi'
# alias vh='tmux split-window vi'

# PDF
alias z='zathura'

# Golang
alias ggta="grc go test ./..."  
alias ggtav="grc go test ./... -v" 
alias ggtaw="watch -c -n 3 grc --colour=on go test ./..."
alias ggtavw="watch -c -n 3 grc --colour=on go test -v ./..."

#laravel programming
alias art='php artisan $OPTIONS'
alias lroute='php artisan route:list'
alias csep='vendor/bin/codecept'
alias pu='vendor/phpunit/phpunit/phpunit'

#vagrant
alias vaprobash="curl -L http://bit.ly/vaprobash > Vagrantfile"
alias vss='vagrant ssh -c "sudo su -; bash --login"'
alias vsgo='echo "bringing vagrant up and sshing as root ... .... ";vagrant up && vagrant provision && vagrant ssh -c "sudo su -;cd /vagrant; bash --login"'

#homestead
alias hs7up='echo "bringing up homestead PHP 7 and sshing in ... ...";cd ~/PhpCode/homestead/;vagrant up && vagrant ssh -c "cd ~/PhpCode; ls"'
alias hs7down='echo "stopping homestead box ... ..."; cd ~/PhpCode/homestead/; vagrant halt'
alias hss7='echo "sshing to homestead PHP 7 box ... ..."; cd ~/PhpCode/homestead/; vagrant ssh -c "cd ~/PhpCode; ls; bash --login"'
alias hs7edit='cd ~/.homestead/; vi Homestead.yaml'

alias hs5up='echo "bringing up homestead PHP 5.6 and sshing in ... ...";cd ~/PhpCode/homestead56/;vagrant up && vagrant ssh -c "cd ~/PhpCode; ls"'
alias hs5down='echo "stopping homestead PHP 5.6 box ... ..."; cd ~/PhpCode/homestead56/; vagrant halt'
alias hss5='echo "sshing to homestead PHP 5.6 box ... ..."; cd ~/PhpCode/homestead56/; vagrant ssh -c "cd ~/PhpCode; ls; bash --login"'
alias hs5edit='cd ~/.homestead-56/; vi Homestead.yaml'
source ~/.homestead/aliases

#laradock
alias dc='time docker-compose'
alias dcr='dc down && dc up -d && dc ps && dc logs'
alias dcu='time docker-compose up -d && docker-compose ps'
alias dcd='time docker-compose down'
alias dcl='docker-compose logs -f'
alias dcnp='time docker-compose up -d nginx postgres'
alias dcnm='time docker-compose up -d nginx mysql'
alias dcw='time docker-compose up -d nginx mysql workspace'  
alias dcnmm='time docker-compose up -d nginx mysql mailcatcher'
alias dold='docker-compose exec --user=laradock workspace bash'
alias doldr='docker-compose exec workspace bash'

alias dolm='docker-compose exec mysql bash'
alias dolmm='docker-compose exec mysql /usr/bin/mysql'
alias dolmdump='docker-compose exec mysql /usr/bin/mysqldump'



# laravel/vagrant project donkey
alias donup='cd /home/fred/PhpCode/donkey; vagrant up && vagrant ssh -c "cd /vagrant/laravel; bash --login"'
alias dond="cd /home/fred/PhpCode/donkey; vagrant halt"
alias donb='cd /home/fred/PhpCode/donkey/laravel; google-chrome --new-window "http://donkey.bsc.at/" "http://laravel.com/docs/5.1"'
alias dons='cd /home/fred/PhpCode/donkey; vagrant ssh -c "cd /vagrant/laravel; bash --login"'
alias donart='cd /home/fred/PhpCode/donkey/laravel/; art'
alias dong='cd /home/fred/PhpCode/donkey/laravel/; gulp watch'

# laravel Project Donkey on EDI
alias ssd='ssh root@edi -t "cd /var/www/donkey/laravel; bash --login"'

#laravel KGV MARUNAS Project
alias kgvb='cd /home/fred/PhpCode/dev-marunas; google-chrome --new-window "http://dev-marunas.bsc.at/" "http://laravel.com/docs/4.2"'
alias kgvart='cd /home/fred/PhpCode/dev-marunas; art'
alias sskgv='ssh root@edi -t "cd /var/www/dev-marunas/; bash --login"'

# kubernetes
alias kk='kubectl'
alias kg='kubectl get'

# sql statment store
alias sq='sqe yank'
alias sqn='sqe new'

#ansible
alias ap='ansible-playbook'
alias an='ansible'

# Rsync
alias rco="rsync -avz --progress -h"
alias rmo="rsync -avz --progress -h --remove-source-files"
alias rup="rsync -avzu --progress -h"
alias rsy="rsync -avzu --delete --progress -h"

#todo.txt
export TODOTXT_DEFAULT_ACTION=ls
alias tt='figlet -f smslant "todo  "$(LANG=en_us_88591; date +"%a  %b%d") && /home/fred/dotfiles/todo.txt/todo.sh'
[[ -f /home/fred/dotfiles/todo.txt/todo_completion ]] && source /home/fred/dotfiles/todo.txt/todo_completion
complete -F _todo tb

#taskbook
alias t='figlet -f smslant "task  "$(LANG=en_us_88591; date +"%a  %b%d") && tb'
alias tu='figlet -f smslant "task  "$(LANG=en_us_88591; date +"%a  %b%d") && tb -l star pending'
alias tl='tb | less'

# timetrap
alias tz='figlet -f smslant "timetrap  "$(LANG=en_us_88591; date +"%a  %b%d") && echo "https://github.com/samg/timetrap" && echo "" && timetrap'
alias tn="tzt new"

# weight
alias we='/run/media/fred/tower/data/programming/py/scrap/weight/wei.sh'

alias ci='code-insiders'

# issue
alias i='figlet -f smslant "issue  "$(LANG=en_us_88591; date +"%a  %b%d") && issue'
alias ic='figlet -f smslant "issue  "$(LANG=en_us_88591; date +"%a  %b%d") && issue show -c'

# habito habit manager
alias ha='figlet -f smslant  "habito  "$(LANG=en_us_88591; date +"%a  %b%d") && ~/.local/bin/habito'
alias hac='figlet -f smslant "habito  "$(LANG=en_us_88591; date +"%a  %b%d") && ~/.local/bin/habito checkin'
alias hal='figlet -f smslant "habito  "$(LANG=en_us_88591; date +"%a  %b%d") && ~/.local/bin/habito list'
alias haa='figlet -f smslant "habito  "$(LANG=en_us_88591; date +"%a  %b%d") && ~/.local/bin/habito add'

# geeknote - evernote cli 
alias g='geeknote'

#Python
alias py='python'

# dmesg with readable timestamps
alias kmesg='dmesg | perl -ne "BEGIN{\$a= time()- qx!cat /proc/uptime!}; s/\[\s*(\d+)\.\d+\]/localtime(\$1 + \$a)/e; print \$_;"'

# google chrome
alias chrome='/usr/bin/google-chrome-stable'

#git
alias gnah='git reset --hard && git clean -df'
alias gg='git log --pretty=format:"%h : %s" --graph -15'
alias gs='git status'

# Dotfiles git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# aliases for backup
alias eq8='ssh root@eq8'
alias sshh='ssh root@hhost -t "screen -r vms; bash --login"'
alias ssih='ssh root@ihost -t "cd /home/KVMBACK; bash --login"'
#alias ball='cd /home/fred/mint-raid/serverbackup/; ./save_all.sh'

# update
alias upgrade='echo "apt update and upgrade?";sudo apt-get update && sudo apt-get upgrade -yy'

# TMUX and sessions
alias tr='tmuxinator'
alias tre='tmuxinator edit'
alias trs='tmuxinator start'
alias trl='tmuxinator list'
alias s='trs ssh_to'

alias oelv-nas='ssh -p 2222 admin@oelv1'

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}
alias lg=lg

# Descibe CSV - DCSV
# Split the Headline of csv in single lines to print numbers and fieldcount
function dcsv(){
 head -n 1 $1 | sed "s/,/\n/g" | awk '{print "$"NR": " $0} END {print "FieldCount: "NR}'
}

# aliases for remote hosts
function vmssh(){
  ssh $@ -t 'cd $HOME ;
  wget --quiet --no-check-certificate -N "https://gist.githubusercontent.com/fredbsc/23cee30785c9649a79cc76e5d113b4d6/raw/debvmbashrc.sh" ;
  wget --quiet --no-check-certificate -N "https://gist.githubusercontent.com/fredbsc/a333852c3f1eb1d0e757d9ea839919d7/raw/debvmvimrc.sh" ;
  mv debvmbashrc.sh .bashrc  ;
  mv debvmvimrc.sh .vimrc
  bash --rcfile .bashrc'
}


dclean() {
    set -e
    ask 'Cleanup not used docker images?'
    processes=`docker ps -q -f status=exited`
    if [ -n "$processes" ]; then
			echo 'Removing exited containers'
      docker rm $processes
    fi

    images=`docker images -q -f dangling=true`
			echo 'Removing dangling containers'
    if [ -n "$images" ]; then
      docker rmi $images
    fi
}
alias dclean=dclean

# remove laravel* containers
# remove laravel_* images
dcleanlaradockfunction()
{
	echo 'Removing ALL containers associated with laradock'
	docker ps -a | awk '{ print $1,$2 }' | grep laradock | awk '{print $1}' | xargs -I {} docker rm {}

	# remove ALL images associated with laradock_
	# does NOT delete laradock/* which are hub images
	echo 'Removing ALL images associated with laradock_'
	docker images | awk '{print $1,$2,$3}' | grep laradock_ | awk '{print $3}' | xargs -I {} docker rmi {}

	echo 'Listing all laradock docker hub images...'
	docker images | grep laradock

	echo 'dcleanlaradock completed'
}
# associate the above function with an alias
# so can recall/lookup by typing 'alias'
alias dcleanlaradock=dcleanlaradockfunction

dspacefunction()  {
	echo 'installed docker images in GB:'
	docker images | awk '{print $7}' | sed 's/.\{2\}$//' | awk '{s+=$0}END{print s/1024}'
}
alias dspace=dspacefunction

alias pe='pet'
alias p='pet exec'
alias px='pet search | xc'
alias pn='pet new'
function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}

# bash examples man page like
alias he='tldr'

# RANGER & fzf
source ~/.fuzzyrc

# Serach bookmarks from cli
alias sb='buku --suggest -r'
alias sbb='buku'
alias sbs='google-chrome-stable $(buku -p -f 10 | fzf)'
alias sbu='buku --ai' # Update bokmarks
alias sg='googler'
alias transe='trans {=en}'

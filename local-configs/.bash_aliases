alias keys="ssh-add -l"
alias usage='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
alias grep="grep --color=auto"
alias ls="ls --classify --color"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -al"
alias dig="dig +nocomment +noquestion +nocmd +nostat"


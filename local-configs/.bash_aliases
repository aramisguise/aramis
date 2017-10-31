alias keys="ssh-add -l"
alias usage='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
alias grep="grep --exclude-dir=\".git\" --exclude-dir=\".terraform\" --color=auto"
alias ls="ls --almost-all --classify --color"
alias la="ls --all"
alias ll="ls -l"
alias lla="la -l"
alias dig="dig +nocomment +noquestion +nocmd +nostat"


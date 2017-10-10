# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# -- process .bash_aliases file
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi


# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
   if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
   # We have color support; assume it's compliant with Ecma-48
   # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
   # a case would tend to support setf rather than setaf.)
      color_prompt=yes
   else
      color_prompt=
   fi
fi

if [ "$color_prompt" = yes ]; then
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
   #PS1="${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$(__git_ps1 '(%s)')\$ "
   PS1="${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$(__git_ps1 '(%s)')\$ "
else
   #PS1="${debian_chroot:+($debian_chroot)}\u@\h:\W\$(__git_ps1 '(%s)')\$ "
   PS1="${debian_chroot:+($debian_chroot)}\u\w\$(__git_ps1 '(%s)')\$ "
fi


# -- ------------------------------------------------------------------------------------------------------------------
# -- BEGIN : bash custom ps1 with nice working directory path
# -- SOURCE https://stackoverflow.com/questions/5687446/bash-custom-ps1-with-nice-working-directory-path
# -- ------------------------------------------------------------------------------------------------------------------
#export MYPS='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{
#if (length($0) > 14) { if (NF>4) print $1 "/" $2 "/.../" $(NF-1) "/" $NF;
#else if (NF>3) print $1 "/" $2 "/.../" $NF;
#else print $1 "/.../" $NF; }
#else print $0;}'"'"')'
#PS1='$(eval "echo ${MYPS}")$ '
# -- ------------------------------------------------------------------------------------------------------------------
# -- END : bash custom ps1 with nice working directory path
# -- ------------------------------------------------------------------------------------------------------------------



 #-- ------------------------------------------------------------------------------------------------------------------
# -- BEGIN: show only current and parent directory in bash prompt
# -- SOURCE https://unix.stackexchange.com/questions/216953/show-only-current-and-parent-directory-in-bash-prompt
# -- ------------------------------------------------------------------------------------------------------------------
#cd () { builtin cd "$@" && chpwd; }
#pushd () { builtin pushd "$@" && chpwd; }
#popd () { builtin popd "$@" && chpwd; }
#chpwd () {
#  case $PWD in
#    $HOME) HPWD="~";;
#    $HOME/*/*) HPWD="${PWD#"${PWD%/*/*}/"}";;
#    $HOME/*) HPWD="~/${PWD##*/}";;
#    /*/*/*) HPWD="${PWD#"${PWD%/*/*}/"}";;
#    *) HPWD="$PWD";;
#  esac
#}
#PS1='$HPWD \$'
# -- ------------------------------------------------------------------------------------------------------------------
# -- END: show only current and parent directory in bash prompt
# -- ------------------------------------------------------------------------------------------------------------------

unset color_prompt force_color_prompt


# ---------------------------------------------------


eval `ssh-agent`
echo
echo "-----------------------------------------------------------------"
echo "-- list screens                                                  "
echo "-----------------------------------------------------------------"
screen -list
echo
echo "-----------------------------------------------------------------"
echo "-- loaded ssh-keys                                               "
echo "-----------------------------------------------------------------"
ssh-add -l
echo
echo "-----------------------------------------------------------------"
echo "-- hostname                                                      "
echo "-----------------------------------------------------------------"
hostname
echo
echo "-----------------------------------------------------------------"
echo "-- uptime                                                        "
echo "-----------------------------------------------------------------"
uptime
echo -e "\n\n"


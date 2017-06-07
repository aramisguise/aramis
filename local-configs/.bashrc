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
   PS1="${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$(__git_ps1 '(%s)')\$ "
else
   PS1="${debian_chroot:+($debian_chroot)}\u@\h:\W\$(__git_ps1 '(%s)')\$ "
fi
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


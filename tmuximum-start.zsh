
## tmuximum
## A command support tmux
if [ ! -z $TMUX ]; then
  i=0
  n=$(( $(tput cols) / 4 - 2))
  while [ $i -lt $n ] ; do
    (( i++ ))
    str="${str}- "
  done
  echo "${str}${fg_bold[red]}TMUX ${reset_color}${str}- -"
  unset i
elif [[ ! $(whoami) = "root" ]]; then
  tmuximum
fi
#[ "$LOGIN_TMUX" = ON ] && 
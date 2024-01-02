#bin!/bin/bash
c=$(nmcli -t dev wifi list | grep '*')
n=$(echo $c | cut -d: -f8)
w=$(echo $c | cut -d: -f12)
if [ $(echo $c | wc -w) -eq 0 ]; then
  echo "󰤮 "
else
  if [ $w -gt 80 ]; then
    echo "󰤨  $n"
  elif [ $w -gt 60 ]; then
    echo "󰤥  $n" 
  elif [ $w -gt 40 ]; then
    echo "󰤢  $n"
  elif [ $w -gt 20 ]; then
    echo "󰤟  $n"
  elif [ $w -gt 0 ]; then
    echo "󰤯  $n"
  else
    echo 'Error'
  fi
fi


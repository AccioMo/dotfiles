#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
# RESET="\e[m"
# USER="\e[1;96m"
# SPACE="\e[1;91m"
# export PS1="[\[${USER}\]\u\[${RESET}\]@\[${SPACE}\]\h\[${RESET}\] \W]\$ "

alias ls='ls --color=auto'
alias {f,firefox}="firefox & disown & exit"
alias grep='grep --color=auto'
alias bg="feh --bg-fill"
alias {sp,spotify}="spotify-launcher & disown & exit"
alias arch="neofetch"
alias nv="nvim"
export PATH=$PATH:/home/mzeggaf/.spicetify
export NNN_PLUG='f:finder;o:fzopen;d:diffs;t:nmount;v:imgview;1:ipinfo;p:preview-tui;o:fzz;b:nbak'
alias nnn='nnn -de' # -d for details and -e to open files in $VISUAL (for other options, see 'man nnn'...)
alias valgrind='valgrind --leak-check=full \
         --show-leak-kinds=all \
         --track-origins=yes \
         --verbose \
         --log-file=valgrind-out.txt'

#-----
# export NNN_OPTS="H" # 'H' shows the hidden files. Same as option -H (so 'nnn -deH')
# # export NNN_OPTS="deH" # if you prefer to have all the options at the same place
# export LC_COLLATE="C" # hidden files on top
# export NNN_FIFO="/tmp/nnn.fifo" # temporary buffer for the previews
# export NNN_FCOLORS="AAAAE631BBBBCCCCDDDD9999" # feel free to change the colors
# export NNN_PLUG='p:preview-tui' # many other plugins are available here: https://github.com/jarun/nnn/tree/master/plugins
# export SPLIT='v' # to split Kitty vertically
# #-----
# n () # to cd on quit
# {
#     if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
#         echo "nnn is already running"
#         return
#     fi
#     export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#     nnn "$@"
#     if [ -f "$NNN_TMPFILE" ]; then
#             . "$NNN_TMPFILE"
#             rm -f "$NNN_TMPFILE" > /dev/null
#     fi
# }

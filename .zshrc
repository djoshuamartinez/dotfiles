if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
set -o vi

export ANDROID_HOME=/opt/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin

alias android-devmenu="adb shell input keyevent 82"
alias android-reload="adb shell input text RR"
alias findrasp="sudo nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=\sudo nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'$NF}/B8:27:EB/{print ip}'"

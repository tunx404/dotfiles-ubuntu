##################################################
# Dotfiles

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles-ubuntu/ --work-tree=$HOME'

alias adddot='~/.scripts/add_dotfiles.sh'
alias pushdot='~/.scripts/push_dotfiles.sh'

##################################################
# System

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias pkgtop='pkgtop -pacman yay'
alias dd='sudo dd status=progress'
alias ssh='TERM=xterm-256color ssh'
alias genqtile='mkdir -p ~/Cloud/Google\ Drive\ 1/Miscellaneous/Qtile && python ~/.config/qtile/gen-keybinding-img -c ~/.config/qtile/config.py -o ~/Cloud/Google\ Drive\ 1/Miscellaneous/Qtile'
alias runlogid='sudo logid -c /home/anhlh33/.config/logid/logid.cfg'

alias blup='sudo brightnessctl set +10%'
alias bldown='sudo brightnessctl set 10%-'

alias hbn='sudo systemctl hibernate'

# alias python='python3'

alias setpem='sudo chown -R anhlh33 ./'

##################################################
# Update

alias removeorphans='pacman -Qtdq | sudo pacman -Rns -'
alias cleanpkg='sudo pacman -Scc && yay -Scc && rm -rf ~/.cache/yay && removeorphans'
alias cleandt='~/.config/darktable/purge_non_existing_images.sh --purge && darktable-generate-cache'
alias cleanconda='conda clean -a'
alias cleanall='cleanconda && cleanpkg'

alias updatepkg='sudo pacman -Syu && yay -Syu'
alias updateall='updatepkg'

alias editpacman='sudo subl /etc/pacman.conf'

##################################################
# Reset

alias resetlogid='sudo systemctl restart logid'
alias resetcuda='sudo rmmod nvidia_uvm && sudo modprobe nvidia_uvm'
alias resetserial='sudo chmod 666 /dev/ttyUSB0'

##################################################
# Applications

alias startdlna='minidlnad -f /home/$USER/.config/minidlna/minidlna.conf -P /home/$USER/.config/minidlna/minidlna.pid'
alias stopdlna='killall minidlnad'

alias sshot='scrot -s IMG_%Y%m%d_%H%M%S.png -e '\''mv $f ~/Miscellaneous'\'

##################################################
# Miscellaneous

alias mountmtp='aft-mtp-mount ~/MTP'
alias mountftp='curlftpfs 10.10.10.10/Gargoyle ~/Gargoyle -o'

alias exmonitor='xrandr --output HDMI-0 --mode 2560x1440 --pos 1920x0 --rotate normal'
alias exmonitorfhd='xrandr --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal'

alias updatedot='cd ~/SSD/Applications/Git/dotfiles && git pull'

##################################################
# Projects

alias fintec='cd ~/Cloud/Google\ Drive\ 1/Projects/Fintecism/financialadvisor && conda activate fin && jupyter-lab'

alias makevideo='ffmpeg -framerate 24 -pattern_type glob -i "*.png" -c:v libx264 -pix_fmt yuv420p -vf "crop=trunc(iw/2)*2:trunc(ih/2)*2" 0.mp4'


##################################################
# VinAI

alias z43='ssh z43'
alias mountz43='sshfs z43:/home/ubuntuz43 /home/anhlh33/SSHFS/z43'
alias mountnouvohcm='sshfs nouvo-hcm:/home/ubuntu /home/anhlh33/SSHFS/nouvo-hcm'
alias mountnouvo='sshfs nouvo:/home/ubuntu /home/anhlh33/SSHFS/nouvo'
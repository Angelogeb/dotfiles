#!/usr/bin/env bash

dnf -y remove gnome-maps     \
             gnome-photos    \
             gnome-weather   \
             gnome-boxes     \
             gnome-contacts  \
             gnome-documents \
             rhythmbox       \
             evolution       \
             totem           \
             tracker-miners  \



dnf update -y



dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
                 https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


dnf -y install tlp          \
              fuse-exfat




dnf -y install chromium


################################################################################
#                                                                              #
#                                Authentication                                #
#                                                                              #
################################################################################


dnf copr -y enable daftaupe/gopass
dnf -y install gopass

# Copy gitlab ssh key

# Copy own gpg key

dnf -y install transmission


################################################################################
#                                                                              #
#                              Development Setup                               #
#                                                                              #
################################################################################

dnf -y install neovim
dnf -y install python2-neovim python3-neovim


rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo
dnf check-update
dnf -y install code


curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
dnf -y install nodejs

dnf -y install fzf           \
               ripgrep


dnf -y install fish \
               boxes

sudo -u $USER curl -fLo /home/$USER/.local/share/nvim/site/autoload/plug.vim\
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

dnf -y install i3 \
               xbacklight



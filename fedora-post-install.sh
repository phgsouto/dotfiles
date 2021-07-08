# enable RPM fusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf upgrade -y

sudo dnf install -y ffmpeg-libs neofetch htop tmux vim nano git 

mkdir ~/dev

cd ~/dev

git clone https://github.com/phgsouto/dotfiles
cd dotfiles
sh setup.sh

cd ~
source .bashrc

sudo su -c "cd /home/pedro/dev/dotfiles && sh setup.sh && source /root/.bashrc"

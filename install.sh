################
## Essentials ##
################
sudo apt update
sudo apt upgrade
sudo apt install htop
sudo update-locale LANG="en_US.UTF-8" \
                   LC_NUMERIC="en_US.UTF-8" \
                   LC_TIME="en_US.UTF-8" \
                   LC_MONETARY="en_US.UTF-8" \
                   LC_PAPER="en_US.UTF-8" \
                   LC_NAME="en_US.UTF-8" \
                   LC_ADDRESS="en_US.UTF-8" \
                   LC_TELEPHONE="en_US.UTF-8" \
                   LC_MEASUREMENT="en_US.UTF-8" \
                   LC_IDENTIFICATION="en_US.UTF-8"

#########
## Git ##
#########
sudo apt install git
# git config --global user.name "Andrew Kuo"
# git config --global user.email "andrewkuogs@gmail.com"
# git config --global color.ui auto
# git config --global color.branch auto
# git config --global color.status auto
# git config --global push.default simple


#########
## Vim ##
#########
sudo apt install vim
# [source] https://github.com/leomao/pika-vim
# cd
# git clone --depth=1 https://github.com/andrewkgs/pika-vim.git
# cd pika-vim/
# ./deploy.py


##########
## Tmux ##
##########
sudo apt install tmux
# [source] https://github.com/gpakosz/.tmux
# cd
# git clone https://github.com/andrewkgs/.tmux.git
# ln -s -f .tmux/.tmux.conf
# cp .tmux/.tmux.conf.local .
# sudo mv PowerlineSymbols.otf /usr/local/share/fonts
# fc-cache -vf /usr/local/share/fonts/
# sudo apt install fonts-powerline


#############
## Openssh ##
#############
sudo apt install openssh-server
# sudo vim /etc/ssh/sshd_config
# sudo service ssh restart


############
## Others ##
############
# sudo apt install ibus-chewing
# sudo ibus restart

# sudo apt install xdotool
# cp show-desktop.desktop ~/.local/share/applications/

# sudo apt install gnome-tweak-tool
# gnome-tweaks

# sudo apt install winehq-stable
# wget https://download.mikrotik.com/routeros/winbox/3.18/winbox.exe -P ~/Desktop/
# wine winbox.exe

# wget -O ~/vmware.bin https://www.vmware.com/go/getWorkstation-linux
# sudo bash ~/vmware.bin
# rm ~/vmware.bin

# sudo apt install google-chrome-stable
# sudo apt remove --purge firefox
# sudo rm -rf .mozilla/firefox/
# sudo rm -rf /etc/firefox/
# sudo rm -rf /usr/lib/firefox/
# sudo rm -rf /usr/lib/firefox-addons/

################################################
## Install nvidia driver, CUDA10.0, cudnn7.5  ##
################################################
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-384

# https://developer.nvidia.com/cuda-downloads
wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64
sudo dpkg -i cuda-repo-ubuntu1804-10-0-local-10.0.130-410.48_1.0-1_amd64
sudo apt-key add /var/cuda-repo-10-0-local-10.0.130-410.48/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda

# https://developer.nvidia.com/rdp/cudnn-download
tar -xzvf cudnn-10.0-linux-x64-v7.5.0.56.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include/
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64/
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
# sudo restart
# watch -n 1 nvidia-smi

#############################
## Install Python packages ##
#############################
sudo apt install python3-pip
sudo pip3 install --upgrade pip
sudo apt install python3-tk
sudo pip3 install tensorflow-gpu
sudo pip3 install tensorboard
sudo pip3 install torch
sudo pip3 install torchvision
sudo pip3 install tensorboardX
sudo pip3 install keras
sudo pip3 install pydot
sudo pip3 install graphviz
sudo pip3 install pandas
sudo pip3 install matplotlib
sudo pip3 install imageio
sudo pip3 install opencv-contrib-python
sudo pip3 install scikit-learn
sudo pip3 install scikit-image
sudo pip3 install jupyter
sudo pip3 install tqdm
sudo pip3 install ipdb
sudo pip3 install visdom
sudo pip3 install dominate
sudo pip3 install virtualenv

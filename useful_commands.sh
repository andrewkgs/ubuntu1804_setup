# Add new users and create folders in data disk
sudo chmod -R 744 ${directory}
setfacl -m u:${username}:rwx ${directory}
# restart ${username}

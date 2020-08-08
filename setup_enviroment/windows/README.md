# Setup Enviroment


# This version is for Windows
- Install WSL 2 + Ubuntu
https://ubuntu.com/tutorials/ubuntu-on-windows#2-requirements

- Setup Terminal like Mac -> My choice is `Windows Terminal`
ref https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701

## Setup Windows Terminal
### Setting profile
I wanna using default Ubuntu whenever I start Windows Terminal
1. Find `guid` from `profiles.list` with name is `name": "Ubuntu-xx.xx`
2. Replace `defaultProfile` with `guid` from step 1


### zsh and oh-my-zsh

- install ZSH -> default SHELL -> echo $SHELL
`apt install zsh`
`exec zsh`

Confirm you are using zsh
```
echo $SHELL
/usr/bin/zsh << `Expected output`
```
- install oh-my-zsh (default) ref: https://github.com/ohmyzsh/ohmyzsh
`sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

- setup rbenv
follow
https://github.com/rbenv/rbenv
echo 'eval "$(rbenv init -)"' >> ~/.zshrch
- intall ruby

- setup mysql
```bash
sudo apt update
/etc/init.d/mysql start
sudo mysql_secure_installation # Setup password
mysql -u root -p
```
2nd way to Setup password for mysql
```
sudo mysql
SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
FLUSH PRIVILEGES;
exit
mysql -u root -p
```
sudo apt-get install libmysqlclient-dev

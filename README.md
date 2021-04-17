# newuser

Boilerplate to setup a new user

## Setup

As super user

### Get files (only required once as super user)

- `apt-get install vim zsh git curl make apt-utils python3.7 wget python3-pip nginx nodejs build-essential -y`
- `git clone --recurse-submodules -j8 https://github.com/drohen/newuser.git`
	- if `ls newuser/skel/custom_zsh/plugins/zsh-autosuggestions` doesn't return anything:
		- `cd ~/newuser`
		- `git submodule init`
		- `git submodule update --init`
- `cp -r ~/newuser/skel/* /etc/skel`

### Create user

- `new_user="!user!"
	- `!user!` should be replaced with intended user's username
- `useradd -m $new_user`
	- create account for the new user
- `passwd $new_user`
	- Set the password for the new user
- Optional:
	- `usermod -aG sudo $new_user`
		- Add the user to the sudo group

### Install zsh tools

- `chsh -s $(which zsh) $new_user`
	- set the shell for the new user to zsh
- `runuser -l $new_user -c 'wget --quiet -O - https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash'`
	- new user will receive oh-my-zsh tools

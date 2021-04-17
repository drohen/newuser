# newuser
boilerplate to setup a new user

## Setup

As super user

### Get files

- `apt-get install vim zsh git curl make apt-utils python3.8 wget python3-pip nginx nodejs build-essential -y`
- `git clone --recurse-submodules -j8 git@github.com:drohen/newuser.git`

### Install zsh tools

- `wget --quiet -O - https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash`
- `cp -r newuser/skel/* /etc/skel`

### Create user

Note: `!user!` should be replaced with intended user's username

- `useradd -m !user!`
  - !user! will be the username for the new user
- `passwd !user!`
  - Set the password for the new user with username !user!
- `chsh -s $(which zsh) !user!`
  - Set the shell for the new user with username !user!
- Optional: `usermod -aG sudo !user!`
  - Add the user to the sudo group

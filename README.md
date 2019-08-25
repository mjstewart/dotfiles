# dotfiles

clone this repo into home directory then execute script `symlinks.sh`.

# vscode 

on linux vscode freezes after 30 mins, try adding the following settings.

```
settings.excludeFiles (both user and workspace)
**/node_modules
```

# tmux

Don't forget to set the terminal to start up using `tmux`

Any changes to `tmux.conf` requires a reload 
```
tmux kill-server
```

# zsh

```
sudo apt install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

install any additional plugins

- https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
- https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md


# java

manage via update-alternatives which installs java into /usr/bin which is already on the default path.
Its easy to change jdk doing it like this 

```
sudo update-alternatives --remove java /opt/jdk-12/bin/java
sudo update-alternatives --remove javac /opt/jdk-12/bin/javac
sudo update-alternatives --remove jar /opt/jdk-12/bin/jar

sudo update-alternatives --install /usr/bin/java java /opt/jdk-12/bin/java 200
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk-12/bin/javac 200
sudo update-alternatives --install /usr/bin/jar jar /opt/jdk-12/bin/jar 200
```

# daml

disable update checking to improve performance

```
~/.daml/bin/daml-config.yaml
update-check: never
```

Add daml to path either through zshrc or update-alternatives

```
# add to zshrc 
PATH=$PATH:~/.daml/bin

# OR
sudo update-alternatives --install /usr/bin/daml daml ~/.daml/bin 200
```

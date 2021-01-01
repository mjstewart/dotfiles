# dotfiles

clone into home directory then execute script `symlinks.sh`

# .bashrc

to start the shell with `tmuxinator` running

```
tmuxinator start dev
```

# vim

```
https://github.com/junegunn/vim-plug

```

# google chrome

`/usr/bin/google-chrome-stable --restore-last-session --password-store=basic %U`

# vscode

`vscode-extensions.sh`

# tmux

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


# npm

via `nvm`

```
https://github.com/nvm-sh/nvm
```

# java

http://adoptopenjdk.net/

setting a symlink is easiest - see `symlinks.sh`, otherwise can also use `update-alternatives`.

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

# haskell

```
https://gitlab.haskell.org/haskell/ghcup-hs
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

# open policy agent

https://www.openpolicyagent.org/docs/latest/#running-opa


# git cheatsheet


## checkout remote branch

 This will pull origin/my-awesome-feature into a new local branch of the same name and set it up to track
 origin/my-awesome-feature. Including `-b` to checkout command
 will do the same thing, except that the local branch’s name will be set to the one specified.

```
git fetch origin my-awesome-feature
git checkout -t origin/my-awesome-feature
```


## delete remote branch

Deleting a local branch is as simple as writing `git branch -d <branch>`

For remote branches it looks a little different

```
git push <remote> -d <branch>

git push origin -d my-awesome-feature

```

## stash individual files

`git stash push -- <filepath(s)>`

```
git stash push -- src/index.js README.md
```

## show content of most recent stash

`-p` says that we want to see the actual content of the stash. Omitting it will show only the file names.
`stash@{<n>}` allows us to specify a certain stash, denoted by `n` (0 being the most recent one).

```
git stash show -p [stash@{<n>}]


git stash show -p stash@{1}

```

## apply a stash without deleting it

`git stash pop` is usually the go-to command for this and, which will apply the first stash on the
stash list (viewed with git stash list). The side effect, though, is that the stash is removed from the list in the process.
But if you’d like to keep it, Git has you covered.


```
-- Applies the first stash on the list without removing it
git stash apply


-- Applies a specific stash number in the `git stash list`
git stash apply stash@{1}
```

## checkout file from another branch

`git checkout <branch> -- <path(s)>`

```
git checkout my-awesome-feature src/lasers.js
```


## reset file to the most recent commit

`git reset --hard` is a godsend when you need to go back to the last stable state.
However when you want to just reset a file to a specific commit you can use this
`git checkout [<commit>] -- <path(s)>`

This will reset README.md to the version in the most recent commit (or a specific commit if one is specified)

```
git checkout -- README.md
```

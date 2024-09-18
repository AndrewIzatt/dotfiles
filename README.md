# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
apt git
```

### Stow

```
apt stow
```

## Installation

First, check out the dotfiels in your $HOME directory using git

```
$ git clone git@github.com:AndrewIzatt/dotfiles.git
$ cd dotfiles
```

then use GNU Stow to create symlinks

```
$ stow .
```

## More help

If you experience any problems, here is the original video where I saw this strategy of managing dotfiles:

```
https://youtu.be/y6XCebnB9gs?si=9UNCt7R2t8VOgjTw
```

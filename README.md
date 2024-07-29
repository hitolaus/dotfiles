# Environment

This is some of my personal environment configuration. The following is required to "install" the different elements

## Installation

To install the dot files and environment specific setup, run the following command.

```
$ ./install.sh
```

Note that this will _not_ run Homebrew Bundle.

## Naming convension

New dotfiles should be added using the convension `dot_<name>` instead of `.<name>`. They will automatically get the 
correct name when running the install script.

## Homebrew

If running on MacOS, Homebrew Bundle can be used to install applications.

```
$ brew install --file=macos/Brewfile
```
 To generate an updated Brew file run

 ```
$ brew bundle dump --force
```
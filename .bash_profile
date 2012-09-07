alias ls='ls -G'
alias grep='grep --colour=auto'

export PS1="\h [\[\e[0;32m\]\w\[\e[m\]] $ "

# Android SDK
export ANDROID_HOME=${HOME}/Applications/android-sdk-mac_x86

# Maven config
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256M -Dfile.encoding=UTF-8"

export PATH=${HOME}/bin:/opt/local/bin:${PATH}:${ANDROID_HOME}/tools

# Github
git config --global user.name "Jakob Hilarius"
git config --global user.email "jakob@syscall.dk"
git config --global color.ui true

if [ -f /opt/local/etc/bash_completion ]
then
	. /opt/local/etc/bash_completion
fi

# Locale
export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"
export LC_CTYPE="en_GB.UTF-8"

##
# Local completion setup
##

#complete -F _tar_completion tar

#_tar_completion() {
#}

##
# Load custom local config
##
if [ -f ${HOME}/.bash_profile_local ]
then
	. ${HOME}/.bash_profile_local
fi
alias ls='ls -G'
alias grep='grep --colour=auto'

export PS1="\h [\[\e[0;32m\]\w\[\e[m\]] $ "

# Android SDK
export ANDROID_HOME=${HOME}/Applications/android-sdk-mac_x86

export PATH=${PATH}:${HOME}/bin:${ANDROID_HOME}/tools:/Developer/usr/bin/:/opt/local/bin

# Maven config
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256M -Dfile.encoding=UTF-8"

# Github
git config --global user.name "Jakob Hilarius"
git config --global user.email "jakob@syscall.dk"

if [ -f /opt/local/etc/bash_completion ]
then
	. /opt/local/etc/bash_completion
fi

# Heroku setup
export DATABASE_URL=postgresql://postgres:postgres@localhost:5432

##
# Load custom local config
##
if [ -f ${HOME}/.bash_profile_local ]
then
	. ${HOME}/.bash_profile_local
fi
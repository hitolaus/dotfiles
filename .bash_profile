alias ls='ls -G'
alias grep='grep --colour=auto'

export PS1="\h [\e[0;32m\w\e[m] $ " 

# Android SDK
export ANDROID_HOME=${HOME}/Applications/android-sdk-mac_x86

# Maven config
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256M"

export PATH=${PATH}:${HOME}/bin:${ANDROID_HOME}/tools

# Load local configs
if [ -f ${HOME}/.bash_profile_local ]
then
	. ${HOME}/.bash_profile_local
fi

#if [ -f /opt/local/etc/bash_completion ]; then
#    . /opt/local/etc/bash_completion
#fi
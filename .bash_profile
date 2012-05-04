alias ls='ls -G'
alias grep='grep --colour=auto'

export PS1="\h [\e[0;32m\w\e[m] $ " 

# Android SDK
export ANDROID_HOME=${HOME}/Applications/android-sdk-mac_x86

export PATH=${PATH}:${HOME}/bin:${ANDROID_HOME}/tools

# Load local configs
if [ -f ${HOME}/.bash_profile_local ]
then
	. ${HOME}/.bash_profile_local
fi
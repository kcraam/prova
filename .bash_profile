alias vi='/opt/local/bin/vim -X'
alias ll='ls -AGlFT'
alias die='kill -9 $$'
alias grep='grep --color=auto'

alias car="ssh -l mcollado 84.88.95.123"

HOSTNAME=`hostname|sed -e 's/\..*$//'`
HOST_COLOR="\[\033[1;35m\]"
COLON_COLOR='0m'
if [ ${UID} -eq 0 ]; then
	COLON_COLOR='1;31m'
fi
if [ ${UID} -eq 0 ]; then
	HOSTNAME="`echo $HOSTNAME|tr '[a-z]' '[A-Z]'`"
fi
PS1=`echo -ne "\u@$HOST_COLOR$HOSTNAME\[\033[00m\]\[\e[$COLON_COLOR\]:\[\033[33m\]\w\[\033[00m\]\\[\033[01;33m\]\$\[\033[00m\] "`

#PS1='\u@\[\e[1;31m\]\h\[\e[0m\]:\W$'
export PS1
HISTCONTROL=ignoredups
export HISTCONTROL
MANPATH="/opt/local/man:${MANPATH}"
export MANPATH
##
export PATH="$PATH:/Library/Application Support/VMware Fusion"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
EDITOR=vim
export  EDITOR

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

export PATH=/Library/Frameworks/Python.framework/Versions/2.7/bin:/Users/ih/.nvm/v0.10.18/bin:/usr/local/share/python:/usr/local/bin:/usr/local/go/bin:/Applications/Racket\ v5.3.6/bin:$PATH

#maybe move this stuff to the local configuration since other setups might not have these
export WORKON_HOME=$HOME/.virtualenvs
source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

. ~/.nvm/nvm.sh
nvm install 0.10.18
nvm use 0.10.18

#show the current path in prompt
export PS1="\u@\h\w$ "
echo "using configuration bash"

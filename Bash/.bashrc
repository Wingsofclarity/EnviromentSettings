#Bash
alias commands='cat ~/EnviromentSettings/.bashrc'
<<COMMENT
function cp_bash () {
    cp -f ~/.bashrc ~/.bash_profile;
    source ~/.bash_profile;
}
COMMENT
function add_command () {
    echo "$@" >> ~/.bashrc;
    cp_bash;
}
alias reload='source ~/EnviromentSettings/Bash/.bashrc'

#Application mapping
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias matlab='/Applications/MATLAB_R2016b.app/bin/matlab -nodesktop -nosplash'
alias matlab_desktop='/Applications/MATLAB_R2016b.app/bin/matlab'
alias sublime='"/applications/Sublime Text.app/contents/MacOS/Sublime Text"'
alias lynx=' /opt/local/bin/lynx'

#CD shortcuts
alias tocode='cd ~/Desktop/Code'
alias tolab='cd ~/Desktop/matlab'
alias tohush='cd /Users/shared/unity/hush/hush'
alias home='cd ~'
alias tovim='cd /Users/Wings/EnviromentSettings/VimSettings/'

source ~/EnviromentSettings/Bash/git.bash

#Misc
function mkcd (){
    mkdir "$@";
    cd "$@";
}
function ls_grep(){
    ls -la | grep "$@";
}
alias check='ls_grep'
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9:/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9:/Users/Wings/Downloads/CUnit-2.1-3:/Users/Wings/Downloads/CUnit-2.1-3
export PATH="$PATH:/usr/local/bin"
export PATH=$PATH/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9:/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9:/Users/Wings/Downloads/CUnit-2.1-3:/Users/Wings/Downloads/CUnit-2.1-3:/usr/local/bin:/Users/Wings/Downloads/CUnit-2.1-3
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9:/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9:/Users/Wings/Downloads/CUnit-2.1-3:/Users/Wings/Downloads/CUnit-2.1-3:/usr/local/bin:/Users/Wings/Downloads/CUnit-2.1-3:/usr/local/go/bin
alias ssh_uu='ssh guro5637@hamberg.it.uu.se'
export EDITOR=vi

<<COMMENT
function cp_links(){
	cp $EnviromentSettings/links/mac_link.vim ~/.vimrc
	cp $EnviromentSettings/links/mac_link.bashrc ~/.bashrc
}
COMMENT

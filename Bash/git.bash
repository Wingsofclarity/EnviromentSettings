#Git
alias gadd='git add .'
alias au_merge='git commit -a -m merge'
function push_all() {
    git add .;
    git commit -a -m "$1";
    git push origin "$2";
}

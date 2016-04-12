!/bin/bash


VIM=~/.vim
VIMRC=~/.vimrc
# REPO=https://git.oschina.net/coderhwz/vim.git
REPO=https://git.oschina.net/coderhwz/vim.git

msg() {
    printf '%b\n' "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
        msg "\33[32m[✔]\33[0m ${1}${2}"
    fi
}

error() {
    msg "\33[31m[✘]\33[0m ${1}${2}"
    exit 1
}

setup_vundle() {
    local system_shell="$SHELL"
    export SHELL='/bin/sh'

    vim \
        -u "$1" \
        "+set nomore" \
        "+BundleInstall!" \
        "+BundleClean" \
        "+qall"

    export SHELL="$system_shell"

    success "Now updating/installing plugins using Vundle"
}

do_backup() {
    if [ -e "$1" ] || [ -e "$2" ] || [ -e "$3" ]; then
        msg "Attempting to back up your original vim configuration."
        today=`date +%Y%m%d_%s`
        for i in "$1" "$2" "$3"; do
            [ -e "$i" ] && [ ! -L "$i" ] && mv -v "$i" "$i.$today";
        done
        ret="$?"
        success "Your original vim configuration has been backed up."
   fi
}
program_exists() {
    local ret='0'
    command -v $1 >/dev/null 2>&1 || { local ret='1'; }

    # fail on non-zero return value
    if [ "$ret" -ne 0 ]; then
        return 1
    fi

    return 0
}



if [ $(vim --version | grep -c '+lua') -eq 0 ] || [ $(program_exists "vim")  ]; then
    bash vim+lua.sh
fi
if [ $(program_exists "ctags") ]; then
    sudo apt-get install ctags
fi


do_backup "$VIM" "$VIMRC"

git clone "$REPO" "$VIM"

ln -sf "$VIM"/basic.vim "$VIMRC"

git clone https://github.com/VundleVim/Vundle.vim.git "$VIM"/bundle/vundle

setup_vundle "$VIMRC"



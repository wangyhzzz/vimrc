#git submodule add git@github.com:VundleVim/Vundle.vim vundle/vundle
dir=`pwd`
dir=${dir/\//}
dir=${dir/\//:\/}
echo $dir
sed -e "s@rtp+=.*@rtp+=$dir/vundle/vundle@" \
    -e "s@directory=.*@directory=$dir/tmp@" \
    -e "s@undodir=.*@undodir=$dir/tmp@" \
    vimrc.in > vimrc
echo source "$dir"/vimrc > ~/.vimrc

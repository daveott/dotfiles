mkdir -p ~/.vimbundles
cd ~/.vimbundles

get_bundle() {
  (
  if [ -d "$2" ]; then
    echo "Updating $1's $2"
    cd "$2"
    git pull --rebase
  else
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bundle godlygeek tabular
get_bundle kchmck vim-coffee-script
get_bundle leshill vim-json
get_bundle mileszs ack.vim
get_bundle tpope vim-commentary
get_bundle tpope vim-cucumber
get_bundle tpope vim-eunuch
get_bundle tpope vim-fugitive
get_bundle tpope vim-haml
get_bundle tpope vim-pathogen
get_bundle tpope vim-rails
get_bundle tpope vim-repeat
get_bundle tpope vim-speeddating
get_bundle tpope vim-surround
get_bundle tpope vim-unimpaired
get_bundle tpope vim-ragtag
get_bundle vim-ruby vim-ruby
get_bundle jgdavey vim-blockle
get_bundle jgdavey tslime.vim
get_bundle wgibbs vim-irblack
get_bundle adamlowe vim-slurper
get_bundle godlygeek tabular

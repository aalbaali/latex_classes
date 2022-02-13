#!/bin/bash

# Amro Al-Baali
# Checkout
#   - https://github.com/aalbaali/latex_classes
#   - https://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te

# Latex search path
TEXMFHOME=$(kpsewhich -var-value TEXMFHOME)

# Clone if repo doesn't exist already
if [[ ! -d $TEXMFHOME/tex/latex/latex_classes ]]
then
  mkdir -p $TEXMFHOME/tex/latex
  cd $TEXMFHOME/tex/latex
  git clone https://github.com/aalbaali/latex_classes.git
  texhash
  echo -e "Files successfully installed to \033[96;1m$TEXMFHOME/tex/latex/latex_classes\033[0m"
else
  echo -e "Files already installed in \033[93;1m$TEXMFHOME/tex/latex/latex_classes\033[0m"
fi

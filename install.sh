#!/bin/bash

# Amro Al-Baali
# Checkout
#   - https://github.com/aalbaali/latex_classes
#   - https://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te

# Latex search path
TEXMFHOME=$(kpsewhich -var-value TEXMFHOME)

# Clone if repo doesn't exist already
if [ ! -f $TEXMFHOME/tex/latex/latex_classes ];
then
  mkdir -p $TEXMFHOME/tex/latex
  cd $TEXMFHOME/tex/latex
  git clone git@github.com:aalbaali/latex_classes.git
  texhash
fi;
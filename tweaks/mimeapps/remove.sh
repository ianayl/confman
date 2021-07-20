if [ -e "$HOME/.config/mimeapps.list.old" ]
then
    mv -v $HOME/.config/mimeapps.list.old $HOME/.config/mimeapps.list
else 
    rm -v $HOME/.config/mimeapps.list
fi

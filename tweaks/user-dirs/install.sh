. ./user-dirs.dirs
while IFS= read -r dir || [ -n "$dir" ]; do
    mkdir -pv $HOME$(echo $dir | sed 's/^.*$HOME//;s/"$//')
done < "$TWEAKDIR/user-dirs/user-dirs.dirs"

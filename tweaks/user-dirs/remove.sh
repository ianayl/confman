echo "\033[91;1mTHIS IS POTENTIALLY DANGEROUS: YOU *COULD* LOSE IMPORTANT FILES\033[0m"
printf "Are you sure? [y/n] "
read confirmation_status
case $confirmation_status in
    y|Y) ;;
    *) exit 1 ;;
esac

. ./user-dirs.dirs
while IFS= read -r dir || [ -n "$dir" ]; do
    rm -riv $HOME$(echo $dir | sed 's/^.*$HOME//;s/"$//')
done < "$TWEAKDIR/user-dirs/user-dirs.dirs"

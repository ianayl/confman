for config in $TWEAKDIR/good-fonts/*.conf
do
    sudo cp -v "$config" /etc/fonts/conf.avail
done
while IFS= read -r link || [ -n "$link" ]
do
    sudo ln -sv "$link" "/etc/fonts/conf.d/$(basename $link)"
done < "$TWEAKDIR/good-fonts/links"

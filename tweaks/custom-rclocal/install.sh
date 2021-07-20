sudo mv -v '/etc/rc.local' '/etc/rc.local.old'
su -l -c "cat $TWEAKDIR/custom-rclocal/header $TWEAKDIR/custom-rclocal/* > /etc/rc.local"
echo Modified /etc/rc.local with all snippets in $TWEAKDIR/custom-rclocal.

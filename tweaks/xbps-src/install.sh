git_repo="git://github.com/void-linux/void-packages.git"
[ -n "$1" ] && git_repo="git://github.com/$1/void-packages.git"
echo $git_repo
git clone $git_repo $HOME/pkg
$HOME/pkg/xbps-src binary-bootstrap
echo "XBPS_ALLOW_RESTRICTED"=yes >> $HOME/pkg/etc/conf

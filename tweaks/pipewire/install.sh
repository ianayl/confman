[ -f "/etc/xdg/autostart/pulseaudio.desktop" ] && sudo mv -v /etc/xdg/autostart/pulseaudio.desktop /etc/xdg/autostart/pulseaudio.disabled
sudo cp -v $TWEAKDIR/pipewire/pipewire.desktop /etc/xdg/autostart/pipewire.desktop
sudo cp -v $TWEAKDIR/pipewire/pipewire-pulse.desktop /etc/xdg/autostart/pipewire-pulse.desktop
echo "autospawn=no" >> $HOME/.config/pulse/client.conf
echo "added 'autospawn=no' to $HOME/.config/pulse/client.conf"

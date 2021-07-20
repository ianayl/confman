[ -f "/etc/xdg/autostart/pulseaudio.disabled" ] && sudo mv -v /etc/xdg/autostart/pulseaudio.disabled /etc/xdg/autostart/pulseaudio.desktop
sudo rm -v /etc/xdg/autostart/pipewire.desktop
sudo rm -v /etc/xdg/autostart/pipewire-pulse.desktop
sed -i '/^autospawn=no$/d' $HOME/.config/pulse/client.conf
echo "removed 'autospawn=no' from $HOME/.config/pulse/client.conf"

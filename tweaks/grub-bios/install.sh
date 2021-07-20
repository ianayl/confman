echo "\033[91;1mWARNING: THIS COMMAND IS DANGEROUS, YOU *COULD* SCREW UP GRUB\033[0m"
printf "Are you sure? [y/n] "
read confirmation_status
case $confirmation_status in
    y|Y) ;;
    *) exit 1 ;;
esac

echo "\033[93;1mNOTE:\033[0m This command will not detect duplicate entries. Run only ONCE."
sudo echo "\n### CUSTOM ###\nmenuentry \"Enter Bios\" {\n        fwsetup\n}" >> /boot/grub/grub.cfg
echo "A new entry should have been added to grub."

set -e

cfile=/etc/default/grub
sudo cp -i $cfile $cfile.old

sudo sed 's/GRUB_TIMEOUT=.*/GRUB_TIMEOUT=1/' $cfile -i
sudo sed 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="verbose"/' $cfile -i

sudo update-grub

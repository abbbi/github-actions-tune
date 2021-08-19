#!/bin/bash
sudo sed -i 's/yes/no/g' /etc/initramfs-tools/update-initramfs.conf
sudo rm -f /var/lib/man-db/auto-update
sudo sed '/fontconfig/d' -i /var/lib/dpkg/triggers/File
sudo sed '/install-info/d' -i /var/lib/dpkg/triggers/File
sudo sed '/mime/d' -i /var/lib/dpkg/triggers/File
sudo sed '/hicolor-icon-theme/d' -i /var/lib/dpkg/triggers/File
echo "force-unsafe-io" | sudo tee -a /etc/dpkg/dpkg.cfg.d/force-unsafe-io

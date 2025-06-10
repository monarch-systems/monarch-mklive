#!/bin/bash
#
# This hook runs inside the chroot to set up Monarch Linux

echo ">> Monarch: Running post-install setup..."

# 1. Update the linker cache
# This is critical so the system can find your custom libraries (like libsystemd.so)
echo ">> Monarch: Updating shared library cache..."
ldconfig

# 2. Configure GRUB to boot with systemd
echo ">> Monarch: Configuring GRUB for systemd boot..."
sed -i 's/\(GRUB_CMDLINE_LINUX_DEFAULT=".*\)"/\1 init=\/usr\/lib\/systemd\/systemd"/' /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg

# 3. Enable your default services
# This creates the symlinks in /etc/systemd/system/* that start services on boot.
echo ">> Monarch: Enabling default systemd services..."
systemctl enable iptables.service
systemctl enable sshd.service
systemctl enable dhcpcd.service
systemctl enable bluetooth.service

# systemctl enable NetworkManager.service # Example if you added NetworkManager
# ... add any other services you want enabled

echo ">> Monarch: Setup complete."

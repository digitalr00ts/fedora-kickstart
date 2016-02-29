#platform=x86, AMD64, or Intel EM64T
#version=DEVEL
# Install OS instead of upgrade
# install
# Keyboard layouts
keyboard 'us'
# System language
lang en_US
# Firewall configuration
firewall --enabled --ssh
# Reboot after installation
reboot
# System timezone
timezone America/Los_Angeles --isUtc --ntpservers=0.pool.ntp.org,1.pool.ntp.org,2.pool.ntp.org,3.pool.ntp.org
# System authorization information
auth  --useshadow  --passalgo=sha512 --enablefingerprint
# Use CDROM installation media
cdrom
# Use text mode install
# text
# Run the Setup Agent on first boot
firstboot --enable
# SELinux configuration
selinux --enforcing

# System bootloader configuration
bootloader --location=mbr
# Partition clearing information
clearpart --all --initlabel

%packages
@core
@firefox
@fonts
@hardware-support
@input-methods
@standard
@xfce-desktop
@xfce-extra-plugins

%end

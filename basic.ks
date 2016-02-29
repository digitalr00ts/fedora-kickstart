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
# cdrom
url --url="http://mirrors.fedoraproject.org/metalink?repo=fedora-$releasever&arch=$basearch"
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

repo --name=fedora --mirrorlist=http://mirrors.fedoraproject.org/metalink?repo=fedora-$releasever&arch=$basearch
repo --name=updates --mirrorlist=http://mirrors.fedoraproject.org/metalink?repo=updates-released-f$releasever&arch=$basearch
repo --name="RPMFusion Free" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch --cost=1000
repo --name="RPMFusion Free - Updates" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch --cost=1000
repo --name="RPMFusion Non-Free" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch --cost=1000
repo --name="RPMFusion Non-Free - Updates" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-$releasever&arch=$basearch --cost=1000


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

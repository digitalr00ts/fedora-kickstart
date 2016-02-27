#platform=x86, AMD64, or Intel EM64T
#version=DEVEL
# Install OS instead of upgrade
install
# Keyboard layouts
keyboard 'us'
# Root password
rootpw --iscrypted $1$YT3EsYuC$f5qL5MQTCufORo3aCqytf/
# System timezone
timezone America/Los_Angeles --isUtc
# System language
lang en_US
# Firewall configuration
firewall --enabled --ssh
# System authorization information
auth  --useshadow  --passalgo=sha512
# Use CDROM installation media
cdrom
# Use text mode install
text
# SELinux configuration
selinux --enforcing
# Do not configure the X Window System
skipx

# Halt after installation
halt
# System bootloader configuration
bootloader --location=mbr
# Clear the Master Boot Record
zerombr
# Partition clearing information
clearpart --all --initlabel
# Disk partitioning information
part / --fstype="xfs" --grow --size=1

%packages
@base
@core
@system-management
-NetworkManager
-NetworkManager-team
-NetworkManager-tui
-abrt-addon-ccpp
-abrt-addon-python
-abrt-cli
-abrt-console-notification
-aic94xx-firmware
-alsa-firmware
-bash-completion
-blktrace
-bridge-utils
-bzip2
-chrony
-cryptsetup
-dmraid
-dosfstools
-dracut-config-rescue
-ethtool
-fprintd-pam
-gnupg2
-hunspell
-hunspell-en
-ivtv-firmware
-iwl100-firmware
-iwl1000-firmware
-iwl105-firmware
-iwl135-firmware
-iwl2000-firmware
-iwl2030-firmware
-iwl3160-firmware
-iwl3945-firmware
-iwl4965-firmware
-iwl5000-firmware
-iwl5150-firmware
-iwl6000-firmware
-iwl6000g2a-firmware
-iwl6000g2b-firmware
-iwl6050-firmware
-iwl7260-firmware
-iwl7265-firmware
-kernel-tools
-kpatch
-ledmon
-libaio
-libreport-plugin-mailx
-libstoragemgmt
-libsysfs
-linux-firmware
-lvm2
-man-pages
-man-pages-overrides
-mdadm
-microcode_ctl
-mlocate
-mtr
-nano
-ntpdate
-pinfo
-plymouth
-pm-utils
-postfix
-rdate
-rdma
-rfkill
-rng-tools
-rsync
-scl-utils
-setuptool
-smartmontools
-sos
-sssd-client
-strace
-sysstat
-systemtap-runtime
-tcpdump
-tcsh
-teamd
-time
-unzip
-usbutils
-vim-enhanced
-virt-what
-wget
-which
-words
-xfsdump
-xz
-yum-langpacks
-yum-utils
-zip

%end

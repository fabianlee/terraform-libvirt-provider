# Build terraform libvirt provider for KVM (dynamically linked)

## for Debian buster and Ubuntu bionic 18.04
make -f Makefile.buster

## for Debian stretch and Ubuntu xenial 16.04
make -f Makefile.stretch

## for alpine with musl library
make -f Makefile.alpine


For Ubuntu 18 bionic, you will need to upgrade qemu/libvirt to use release 0.6.2
https://github.com/dmacvicar/terraform-provider-libvirt/releases/tag/v0.6.2

# here is the ppa that has a newer version for Ubuntu bionic
https://launchpad.net/~jacob/+archive/ubuntu/virtualisation?field.series_filter=bionic
https://mathiashueber.com/manually-update-qemu-on-ubuntu-18-04/
https://blog.zackad.dev/en/2017/08/17/add-ppa-simple-way.html

# add the key first, because I've seen add-apt-repository have issues fetching (takes a minute)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F90C8262A258CC539FD64268A6128A6CCDFBABD4 

# add ppa and upgrade virtualization packages
sudo add-apt-repository ppa:jacob/virtualisation
sudo apt-get update
sudo apt-get upgrade


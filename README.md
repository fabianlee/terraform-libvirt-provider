# Build terraform libvirt provider for KVM (dynamically linked)

## for Debian buster and Ubuntu bionic 18.04
make -f Makefile.buster

## for Debian stretch and Ubuntu xenial 16.04
make -f Makefile.stretch

## for alpine with musl library
make -f Makefile.alpine

#!/bin/sh

# Debian hosts its cloud qcow images at https://cdimage.debian.org/images/cloud/[codename]/latest/debian-[version]-nocloud-amd64.qcow2

qemu-system-x86_64 \
    -cpu max \
    -accel kvm \
    -m 2048 \
    -drive file=./disk/debian.qcow2,media=disk,if=virtio \
    -nic user,model=virtio \
    -vga virtio \
    -display sdl

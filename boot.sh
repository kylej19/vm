#!/bin/sh

# Debian hosts its cloud qcow images at https://cdimage.debian.org/images/cloud/[codename]/latest/debian-[version]-nocloud-amd64.qcow2

qemu-system-x86_64 \
    -cpu max \
    -accel hvf \
    -m 8192 \
    -drive file=./vdisk.qcow2,media=disk,if=virtio \
    -nic user,model=virtio \
    -vga virtio \
    -display cocoa,full-grab=on,zoom-to-fit=on

#!/bin/bash

usage(){
  echo "Usage: "
  echo "$0 initramfs-dir outfile.cpio.gz"
}

if [ -z $1 ]; then
  usage;
  exit 1;
fi

if [ -z $2 ]; then
  usage;
  exit 1;
fi

INITRAMFS_ROOT=$(readlink -f $1)
RAMDISK_OUT=$(readlink -f $2)

cd $INITRAMFS_ROOT
find . | cpio -H newc -o | gzip -9 > $RAMDISK_OUT

#(cd /kernel/smaug-custom-initram/ && find . | cpio -H newc -o | gzip -9 > /kernel/ramdisk/ramdisk.cpio.gz)

# Ramdisk Builder
A simple ramdisk builder for my {Pixel C|Smaug|ryu} [Arch Linux project](https://github.com/denysvitali/linux-on-pixel-c).

**Warning: this script assumes that you're running it in the [dvitali/android-build](https://hub.docker.com/r/dvitali/android-build/) docker image and you've set /kernel as a mapping drive.**

## Instructions
1. Put your ramdisk files in `/kernel/smaug-custom-initram`. 
2. Run `./build.sh`
export SHARED_PATH=../public

qemu-system-x86_64 -serial stdio \
-smp 4,sockets=1,cores=4,threads=1 -m 4096 \
-device virtio-gpu-pci \
-display default,show-cursor=on \
-device qemu-xhci -device usb-kbd \
-device usb-tablet -device intel-hda \
-device hda-duplex \
-drive file=$SHARED_PATH/centos_disk_0.img,if=virtio,cache=writethrough \
-cdrom CentOS-8-x86_64-1905-dvd1.iso \
-nic user,model=virtio

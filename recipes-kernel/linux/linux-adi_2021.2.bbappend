FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://usbmods.cfg \
            file://moreusb.cfg \
            file://sensors.cfg \
            file://random.cfg \
            file://power.cfg \
            file://pci.cfg \
            file://spidev.cfg \
            file://intelwifi.cfg \
            file://0001-adding-powe-support.patch \
            "

KERNEL_VERSION_SANITY_SKIP="1"

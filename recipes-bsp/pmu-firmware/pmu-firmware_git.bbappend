FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-fixing-shutdown-to-power-down-on-MIO33.patch \
            file://0001-supporting-rev3-pmu-firmware.patch \
            "


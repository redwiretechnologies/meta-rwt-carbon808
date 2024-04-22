FILESEXTRAPATHS:prepend := "${THISDIR}/u-boot-xlnx:"

COMPATIBLE_MACHINE = "carbon808"

do_configure[depends] += "device-tree-carbon808:do_deploy"

UBOOT_MAKE_TARGET:append = " EXT_DTB=${DEPLOY_DIR_IMAGE}/carbon808.dtb"


do_configure:append () {
	install ${WORKDIR}/platform-top.h ${S}/include/configs/
    install ${WORKDIR}/config2.cfg ${S}/configs/${UBOOT_MACHINE}
}

SRC_URI += "\
     file://config2.cfg \
     file://platform-top.h \
     "

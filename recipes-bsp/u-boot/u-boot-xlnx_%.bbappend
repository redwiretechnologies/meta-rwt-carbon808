FILESEXTRAPATHS:prepend := "${THISDIR}/u-boot-xlnx:"

COMPATIBLE_MACHINE = "carbon808"

do_configure[depends] += "device-tree-carbon808:do_deploy"

UBOOT_MAKE_TARGET:append = " EXT_DTB=${DEPLOY_DIR_IMAGE}/carbon808.dtb"

EXTRA_OEMAKE += " EXT_DTB=${DEPLOY_DIR_IMAGE}/carbon808.dtb"
DTB_FILE_NAME = "carbon808"

do_configure:append () {
    
	install ${WORKDIR}/platform-top.h ${S}/include/configs/
	install ${WORKDIR}/config2.cfg ${S}/configs/${UBOOT_MACHINE}
  
}

#do_configure_append () {
#	if [ "${U_BOOT_AUTO_CONFIG}" = "1" ]; then
#		install ${WORKDIR}/platform-auto.h ${S}/include/configs/
#		install ${WORKDIR}/platform-top.h ${S}/include/configs/
#	fi
#}


#SRC_URI += "\
#     file://0001-zynqmp-Adding-environment-variable-for-device-type.patch \
#     file://config2.cfg \
#     file://platform-top.h \
#     "
SRC_URI += "\
     file://platform-top.h \
     file://config2.cfg \
     file://0001-fpga-type-pass-through.patch \
     "

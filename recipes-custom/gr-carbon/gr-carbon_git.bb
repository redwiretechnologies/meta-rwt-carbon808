SUMMARY = "Reef blocks written based on IIO."
HOMEPAGE = "https://github/reefsoftware/gr-reef"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

DEPENDS =" gr-rwt swig-native swig gnuradio  python3 cppunit libgpiod python3-pybind11-native python3-native python3-numpy-native"
RDEPENDS:${PN} = "gnuradio python3-click"

inherit setuptools3 cmake pkgconfig

export BUILD_SYS
export HOST_SYS="${MULTIMACH_TARGET_SYS}"

S="${WORKDIR}/git"

SRC_URI = "git://git@github.com/redwiretechnologies/gr-carbon.git;branch=maint-3.10;protocol=ssh"
SRCREV = "006e0cacd943cdd546c1ca1b678a90903cee1af9"

EXTRA_OECMAKE = " \
    -DGR_PYTHON_DIR=${PYTHON_SITEPACKAGES_DIR} \
    -DPYTHON3=1 \
    -DENABLE_DOXYGEN=OFF \
    "

INSANE_SKIP:${PN} = "dev-so"
FILES_SOLIBSDEV = ""
FILES:${PN} += " \
    ${datadir}/gnuradio/grc/blocks/*.yml \
    ${libdir}/*.so \
"

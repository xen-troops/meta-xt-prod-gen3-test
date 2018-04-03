require inc/xt_shared_env.inc

BRANCH = "1.9/4757649-m3n"
SRCREV = "${AUTOREV}"

EXTRA_OEMAKE += "PVRSRV_VZ_NUM_OSID=${XT_PVR_NUM_OSID}"

do_install_append() {
    sed -i 's/soc/passthrough/g' ${D}/etc/udev/rules.d/72-pvr-seat.rules
    install -d ${DEPLOY_DIR_IMAGE}/xt-rcar
    cp -rf ${D}/* ${DEPLOY_DIR_IMAGE}/xt-rcar
}

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_remove = "\
    file://0001-arm-renesas-Do-not-disable-MSTP3.patch \
"

SRC_URI += "\
    file://0001-Enable-everything-needed-source-command-to-work.patch \
    file://0002-common-cmd_source.c-Fix-the-source-command-failure-u.patch \
"


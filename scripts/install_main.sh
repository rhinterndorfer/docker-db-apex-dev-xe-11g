#!/bin/bash

echo "--------------------------------------------------"
echo "Environment Vars.................................."
echo "ORACLE_SID: ${ORACLE_SID}"
echo "SERVICE_NAME: ${SERVICE_NAME}"
echo "ORACLE_BASE: ${ORACLE_BASE}"
echo "ORACLE_HOME: ${ORACLE_HOME}"
echo "PASS: ${PASS}"
echo "APEX_PASS: ${APEX_PASS}"
echo "APEX_ADDITIONAL_LANG: ${APEX_ADDITIONAL_LANG}"
echo "APEX_PATCH_SET_BUNDLE_FILE: ${APEX_PATCH_SET_BUNDLE_FILE}"
#
#
echo "--------------------------------------------------"
echo "Image Setup......................................."
./scripts/image_setup.sh
#

#
echo "--------------------------------------------------"
echo "Uninstalling previous version of ORACLE APEX......"
./scripts/uninstall_apex.sh


echo "--------------------------------------------------"
echo "Installing ORACLE APEX............................"
./scripts/install_apex.sh


echo "--------------------------------------------------"
echo "Configure Oracle ................................."
./scripts/configure_oracle.sh


echo "--------------------------------------------------"
echo "Cleanup..........................................."
rm -r -f /tmp/*
rm -r -f /files/*
rm -r -f /var/tmp/*
mv -f /scripts/install_main.sh /scripts/install_main.sh.done

echo "--------------------------------------------------"
echo "DONE.............................................."

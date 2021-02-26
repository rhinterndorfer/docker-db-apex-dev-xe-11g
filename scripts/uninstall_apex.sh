#!/bin/bash


apex_uninstall(){
    cd $ORACLE_HOME/apex
    echo "Uninstalling APEX."
    echo "EXIT" | ${ORACLE_HOME}/bin/sqlplus -s -l sys/${PASS} AS SYSDBA @apxremov
}


echo "Uninstalling APEX in DB: ${ORACLE_SID}"
. /home/oracle/.bash_profile
apex_uninstall
cd /

FROM oracleinanutshell/oracle-xe-11g

MAINTAINER Raphael Hinterndorfer <dev@rammelhof.at>

# environment variables
ENV ORACLE_SID=xe \
    SERVICE_NAME=xe \
    ORACLE_BASE=/u01/app/oracle \
    ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe \
    PASS=oracle \
    APEX_PASS=OrclAPEX2021! \
    APEX_ADDITIONAL_LANG=de \
    APEX_PATCH_SET_BUNDLE_FILE=
    

# copy all scripts
ADD scripts /scripts/

# copy all files
ADD files /files/

# run scripts
ADD scripts/entrypoint.sh /docker-entrypoint-initdb.d/

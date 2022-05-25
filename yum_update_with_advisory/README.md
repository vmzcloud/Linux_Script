# Generate yum-update-download.sh

    yum repolist
    
    cd /opt/yum-updatelog

    yum info-sec --exclude=java* --exclude=tomcat* --exclude=kernel* | grep 'Update ID' | xargs | sed "s/^/yum update -y /; s/$/ --downloadonly/; s|Update ID : |--advisory=|g" > yum-update-download.sh

    chmod 755 yum-update-download.sh
    
# Example of yum-update-download.sh
    yum update -y --advisory=RHSA-2022:1069 --advisory=RHSA-2022:1284 --advisory=RHBA-2022:1196 --advisory=RHBA-2022:1192 --advisory=RHBA-2022:1201 --advisory=RHBA-2022:1193 --advisory=RHBA-2022:1202 --advisory=RHSA-2022:1066 --advisory=RHSA-2022:1198 --advisory=RHBA-2022:1203 --advisory=RHBA-2022:1032 --downloadonly

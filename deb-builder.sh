#!/bin/bash

set -evx
### Var
SAM_VERSION=`cat ./sam | grep '^SAM_VERSION=' | sed s/[^0-9,.]//g`
PACKAGE_HOME='./package-home'
BUILD_NUMBER=${BUILD_NUMBER:-SNAPSHOT}

### Clear
rm -rf ${PACKAGE_HOME}

### Create workdir
mkdir -p ${PACKAGE_HOME}/usr/sbin
cp -f ./sam ${PACKAGE_HOME}/usr/sbin/sam

mkdir ${PACKAGE_HOME}/DEBIAN

echo "Package: sam
Source: sam
Version: ${SAM_VERSION}-${BUILD_NUMBER}
Architecture: amd64
Maintainer: Smilart Developers <support@smilart.com>
Original-Maintainer: Smilart Developers <support@smilart.com>
Installed-Size: 3000
Depends: sqlite3, docker-ce 
Section: admin
Priority: optional
Multi-Arch: foreign
Homepage: https://github.com/smilart/sam
Description: Smilart Application Manager.
" > ${PACKAGE_HOME}/DEBIAN/control

echo '#!/bin/bash

set -e

if [ ! -f /root/.bashrc ];then
    touch /root/.bashrc
fi;

if [[ -z `cat /root/.bashrc | grep -v "^#" | grep "PATH.*/opt/bin"` ]];then
    echo -e -n "\n\E[33mWARN: Relogin to shell to run the utility.\n";tput sgr0;
    echo PATH=\$PATH:/opt/bin >> /root/.bashrc
fi;

' > ${PACKAGE_HOME}/DEBIAN/postinst
chmod +x ${PACKAGE_HOME}/DEBIAN/postinst

cd ${PACKAGE_HOME}
md5sum usr/sbin/sam >> DEBIAN/md5sums
cd -

# Build package

dpkg -b ${PACKAGE_HOME}  sam-${SAM_VERSION}.deb

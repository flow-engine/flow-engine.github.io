#!/bin/bash

echo '************************start build*****************************'
gitbook build
echo '************************end build*****************************'
ls _book
echo '************************start tar*****************************'
mkdir -p release
(cd ./_book && tar -zcvf ../release/${MODULE_NAME}.tar.gz ./)
echo '************************end tar*****************************'
ls release

echo '************************start upload tar*****************************'
sshpass -p 123456 ssh -o "StrictHostKeyChecking no" www@docker02.4pd.io -p 35002 "mkdir -p /opt/data/elf/${BRANCH_NAME}/latest"
sshpass -p 123456 ssh -o "StrictHostKeyChecking no" www@docker02.4pd.io -p 35002 "echo ${BUILD_NUM} > /opt/data/elf/${BRANCH_NAME}/latest/${MODULE_NAME}.txt"
sshpass -p 123456 ssh -o "StrictHostKeyChecking no" www@docker02.4pd.io -p 35002 "mkdir -p /opt/data/elf/archives/${MODULE_NAME}/${BUILD_NUM}"
sshpass -p 123456 sftp -o "StrictHostKeyChecking no" -P 35002  www@docker02.4pd.io:/opt/data/elf/archives/${MODULE_NAME}/${BUILD_NUM}/  << EOF
put release/${MODULE_NAME}.tar.gz
bye
EOF
echo '************************end upload tar*****************************'

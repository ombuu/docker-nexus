# bash shell 코드로 작성
#! /bin/bash

# ssl을 통해서 여러가지 암호화된 인증서를 사용할 수 있도록, 인증서를 생성하는 keytool작업을 실행하는 스크립트 파일
FastCampus에 대한 정보가 포함되어 있어서 이걸 기반으로 인증서 처리를 할 수 있다. 
if [ ! -e "$NEXUS_DATA/etc/ssl/keystore.jks" ]; then
mkdir -p "$NEXUS_DATA/etc/ssl"
chmod go-rwx "$NEXUS_DATA/etc/ssl"
keytool -genkeypair -keystore $NEXUS_DATA/etc/ssl/keystore.jks -storepass password -keypass password \
        -alias jetty -keyalg RSA -keysize 2048 -validity 5000 \
        -dname "CN=*.${HOSTNAME}, OU=FastCampus, O=FastCampus, L=Gangnam, ST=Seoul, C=KR" \
        -ext "SAN=DNS:${SAN_DNS}" -ext "BC=ca:true"
fi

# 이 부분을 test-common vm (nexus설치한 vm)으로 옮겼다. 
sh -c ${SONATYPE_DIR}/start-nexus-repository-manager.sh
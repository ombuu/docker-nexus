# 베이스 이미지로 nexus3
FROM sonatype/nexus3:3.32.0  

# 루트 권한으로
USER root

# nexus에 대한 보안 작업을 진행하는 실행 명령어를 실행
# ssl을 통해서 인증서를 처리하는 부분을 세팅 
RUN chown -R nexus:nexus ${NEXUS_HOME}/etc \
    && sed '/^application-port/s:$:\napplication-port-ssl=8443:' -i ${NEXUS_HOME}/etc/nexus-default.properties \
    && sed '/^nexus-args/s:$:,${jetty.etc}/jetty-https.xml:' -i ${NEXUS_HOME}/etc/nexus-default.properties \
    && rm -rf ${NEXUS_HOME}/etc/ssl && ln -s ${NEXUS_DATA}/etc/ssl ${NEXUS_HOME}/etc/ssl

# start.sh 쉘 스크립트 파일을 실행할 수 있게끔 usr/local/bin에 COPY
COPY start.sh /usr/local/bin

# user를 nexus로 바꾸고 
USER nexus

# EXPOSE포트를 8443으로
EXPOSE 8443

# start.sh을 실행
CMD start.sh
# syntax=docker/dockerfile:1
FROM ubuntu:rolling
COPY installAllPackages.sh installAllPackages.sh
RUN chmod 755 *.sh
RUN ./installAllPackages.sh
COPY installRust.sh installRust.sh
RUN chmod 755 *.sh
RUN ./installRust.sh
COPY installNode.sh installNode.sh
RUN chmod 755 *.sh
RUN ./installNode.sh
COPY downloadGstRsPlugins.sh downloadGstRsPlugins.sh
RUN chmod 755 *.sh
RUN ./downloadGstRsPlugins.sh
COPY buildGstRsPlugins.sh buildGstRsPlugins.sh
RUN chmod 755 *.sh
RUN ./buildGstRsPlugins.sh
COPY receiveWebrtcVideo.sh receiveWebrtcVideo.sh
COPY createTestStream.sh createTestStream.sh
COPY runSignallingWebsite.sh runSignallingWebsite.sh
COPY runSignallingServer.sh runSignallingServer.sh
RUN chmod 755 *.sh
ENTRYPOINT ["sleep", "infinity"]

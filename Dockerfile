FROM debian:jessie

MAINTAINER anders@brander.dk

ADD https://agento.org/download/agento_0.0-20151217-2345-a6ef69a_amd64.deb /
RUN ["dpkg", "-i", "/agento_0.0-20151217-2345-a6ef69a_amd64.deb"]

VOLUME ["/host/proc", "/host/sys"]

ENV AGENTO_PROC_PATH /host/proc
ENV AGENTO_SYSFS_PATH /host/sys

ENTRYPOINT ["/usr/sbin/agento"]

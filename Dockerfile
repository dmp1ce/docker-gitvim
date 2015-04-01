FROM ubuntu:15.04
MAINTAINER David Parrish <daveparrish@gmail.com>

RUN apt-get update -qq && \
apt-get install -qqy man vim git && \
apt-get clean

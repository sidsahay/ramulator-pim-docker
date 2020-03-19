FROM debian:stretch
MAINTAINER Siddharth Sahay (siddharthsahay9700@gmail.com)

RUN apt-get update
RUN apt-get install -y vim git make g++ wget lsb-release gnupg2 software-properties-common libboost-all-dev
RUN git clone --recurse-submodules https://github.com/CMU-SAFARI/ramulator-pim.git
WORKDIR /ramulator-pim
RUN cd zsim-ramulator && sh setup.sh && sh compile.sh
RUN sh compileramulator.sh
